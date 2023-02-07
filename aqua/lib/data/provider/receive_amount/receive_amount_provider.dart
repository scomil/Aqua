import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/asset_icons_cache_provider.dart';
import 'package:aqua/data/provider/fiat_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/receive_amount/receive_amount_arguments.dart';
import 'package:aqua/data/provider/receive_amount/receive_amount_ui_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

final receiveAmountProvider = Provider.family
    .autoDispose<_ReceiveAmountProvider, Object?>(
        (ref, arguments) => _ReceiveAmountProvider(ref, arguments));

class _ReceiveAmountProvider {
  _ReceiveAmountProvider(this.ref, this.arguments) {
    ref.onDispose(() {
      _amountTextSubject.close();
      _selectCurrencySubject.close();
      _popSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;
  final Object? arguments;

  late final Stream<AsyncValue<ReceiveAmountArguments>> _argumentsStream =
      Stream.value(arguments)
          .asyncMap((value) async {
            try {
              return arguments as ReceiveAmountArguments;
            } catch (_) {
              throw ReceiveAmountProviderInvalidArgumentsException();
            }
          })
          .map((asset) => AsyncValue.data(asset))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace))
          .shareReplay(maxSize: 1);

  Stream<ReceiveAmountUiModel> _uiModelStream(BuildContext context) =>
      _argumentsStream
          .switchMap((value) => value.when(
                data: (arguments) =>
                    Stream.value(arguments.asset).asyncMap((asset) async {
                  final icon = await ref
                      .read(assetIconsCacheProvider)
                      .getImageDataForAssetId(asset.assetId);
                  final amount =
                      await ref.read(formatterProvider).formatAssetAmount(
                            amount: asset.amount,
                            precision: asset.precision,
                          );
                  return ReceiveAmountSuccessUiModel(
                    icon: icon,
                    name: asset.name,
                    ticker: asset.ticker,
                    amount: amount,
                    precision: asset.precision,
                  );
                }),
                loading: () =>
                    Stream.value(const ReceiveAmountLoadingUiModel()),
                error: (error, stacktrace) =>
                    Stream<ReceiveAmountUiModel>.error(error, stacktrace),
              ))
          .doOnError((_, __) {
        /** notify remote logger about error */
      }).onErrorReturnWith((_, __) => ReceiveAmountErrorUiModel(
              description: AppLocalizations.of(context)!.unknownErrorSubtitle,
              buttonTitle: AppLocalizations.of(context)!.sendAmountErrorButton,
              buttonAction: () {}));

  Stream<String> _assetConversionStream() =>
      _argumentsStream.switchMap((value) => value.maybeWhen(
            data: (arguments) => Stream.value(arguments.asset)
                .switchMap((asset) => ref
                    .read(fiatProvider)
                    .satoshiToFiatWithCurrencyStream(asset, asset.amount))
                .onErrorReturn(''),
            orElse: () => const Stream.empty(),
          ));

  final PublishSubject<String> _amountTextSubject = PublishSubject();
  void updateAmountText(String amountText) {
    _amountTextSubject.add(amountText);
  }

  late final Stream<String> _amountTextStream =
      _amountTextSubject.startWith('').shareReplay(maxSize: 1);

  final PublishSubject<void> _selectCurrencySubject = PublishSubject();
  void selectCurrency() {
    _selectCurrencySubject.add(null);
  }

  late final Stream<bool> _cryptoCurrencySelectedStream = _selectCurrencySubject
      .scan<bool>((accumulated, _, __) => !accumulated, true)
      .startWith(true)
      .shareReplay(maxSize: 1);

  Stream<String> _textConversionStream() =>
      _argumentsStream.switchMap((value) => value.maybeWhen(
            data: (arguments) => Stream.value(arguments.asset)
                .switchMap((asset) => _cryptoCurrencySelectedStream.switchMap((selected) => selected
                    ? _amountTextStream
                        .asyncMap((amount) => ref
                            .read(formatterProvider)
                            .parseAssetAmount(
                                amount: amount, precision: asset.precision))
                        .switchMap((satoshi) => ref
                            .read(fiatProvider)
                            .satoshiToFiatWithCurrencyStream(asset, satoshi))
                    : _amountTextStream
                        .switchMap((amount) => ref.read(fiatProvider).fiatToSatoshiStream(asset, amount))
                        .map((amount) => '${asset.ticker} $amount')))
                .onErrorReturn(''),
            orElse: () => const Stream.empty(),
          ));

  final PublishSubject<void> _popSubject = PublishSubject();
  void popWithoutResult() {
    _popSubject.add(null);
  }

  Stream<String?> _popStream() => _popSubject
      .switchMap((_) => _argumentsStream)
      .switchMap((value) => value.maybeWhen(
            data: (arguments) => Stream.value(arguments).asyncMap((arguments) =>
                _amountTextStream
                    .switchMap((amount) => _cryptoCurrencySelectedStream
                        .asyncMap((selected) => selected
                            ? Future.value(amount)
                            : ref
                                .read(fiatProvider)
                                .fiatToSatoshiStream(arguments.asset, amount)
                                .first))
                    .first),
            orElse: () => const Stream.empty(),
          ));

  Stream<VoidCallback?> _buttonOnPressedStream() =>
      _amountTextStream.asyncMap((text) async {
        try {
          final amount = double.parse(text);
          if (amount > 0) {
            return () {
              _popSubject.add(text);
            };
          } else {
            return null;
          }
        } catch (_) {
          return null;
        }
      });

  Stream<ReceiveAmountCurrencyButtonUiModel> _currencyButtonUiModelStream(
          BuildContext context) =>
      _argumentsStream
          .asyncMap((value) => Stream.value(value)
              .switchMap<Asset>((value) => value.maybeWhen(
                    data: (arguments) => Stream.value(arguments.asset),
                    orElse: () => const Stream.empty(),
                  ))
              .first)
          .switchMap((asset) => asset.hasFiatRate
              ? _cryptoCurrencySelectedStream.map((selected) => selected
                  ? ReceiveAmountCurrencyButtonUiModel(
                      title: asset.ticker,
                      color: Theme.of(context).colorScheme.secondaryVariant,
                      onPressed: () {
                        _selectCurrencySubject.add(null);
                      },
                    )
                  : ReceiveAmountCurrencyButtonUiModel(
                      title:
                          'USD', // TODO Probably should be taken from global currency settings
                      color: Theme.of(context).colorScheme.secondaryVariant,
                      onPressed: () {
                        _selectCurrencySubject.add(null);
                      },
                    ))
              : Stream.value(asset)
                  .map((asset) => ReceiveAmountCurrencyButtonUiModel(
                        title: asset.ticker,
                        color: Theme.of(context).colorScheme.onSurface,
                        onPressed: null,
                      )));
}

final _receiveAmountUiModelStreamProvider = StreamProvider.family
    .autoDispose<ReceiveAmountUiModel, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref.watch(receiveAmountProvider(arguments))._uiModelStream(context);
});

final receiveAmountUiModelProvider = Provider.family
    .autoDispose<ReceiveAmountUiModel?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref.watch(_receiveAmountUiModelStreamProvider(tuple)).data?.value;
});

final _receiveAmountAssetConversionStreamProvider =
    StreamProvider.family.autoDispose<String, Object?>((ref, arguments) async* {
  yield* ref.watch(receiveAmountProvider(arguments))._assetConversionStream();
});

final receiveAmountAssetConversionProvider =
    Provider.family.autoDispose<String?, Object?>((ref, arguments) {
  return ref
      .watch(_receiveAmountAssetConversionStreamProvider(arguments))
      .data
      ?.value;
});

final _receiveAmountTextConversionStreamProvider =
    StreamProvider.family.autoDispose<String, Object?>((ref, arguments) async* {
  yield* ref.watch(receiveAmountProvider(arguments))._textConversionStream();
});

final receiveAmountTextConversionProvider =
    Provider.family.autoDispose<String, Object?>((ref, arguments) {
  return ref
          .watch(_receiveAmountTextConversionStreamProvider(arguments))
          .data
          ?.value ??
      '';
});

final _receiveAmountButtonOnPressedStreamProvider = StreamProvider.family
    .autoDispose<VoidCallback?, Object?>((ref, arguments) async* {
  yield* ref.watch(receiveAmountProvider(arguments))._buttonOnPressedStream();
});

final receiveAmountButtonOnPressedProvider =
    Provider.family.autoDispose<VoidCallback?, Object?>((ref, arguments) {
  return ref
      .watch(_receiveAmountButtonOnPressedStreamProvider(arguments))
      .data
      ?.value;
});

final _receiveAmountPopStreamProvider = StreamProvider.family
    .autoDispose<String?, Object?>((ref, arguments) async* {
  yield* ref.watch(receiveAmountProvider(arguments))._popStream();
});

final receiveAmountPopProvider =
    Provider.family.autoDispose<String?, Object?>((ref, arguments) {
  return ref.watch(_receiveAmountPopStreamProvider(arguments)).data?.value;
});

final _receiveAmountCurrencyButtonUiModelStreamProvider = StreamProvider.family
    .autoDispose<ReceiveAmountCurrencyButtonUiModel,
        Tuple2<Object?, BuildContext>>((ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(receiveAmountProvider(arguments))
      ._currencyButtonUiModelStream(context);
});

final receiveAmountCurrencyButtonUiModelProvider = Provider.family.autoDispose<
    ReceiveAmountCurrencyButtonUiModel?,
    Tuple2<Object?, BuildContext>>((ref, tuple) {
  return ref
      .watch(_receiveAmountCurrencyButtonUiModelStreamProvider(tuple))
      .data
      ?.value;
});

class ReceiveAmountProviderInvalidArgumentsException implements Exception {}
