import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/asset_icons_cache_provider.dart';
import 'package:aqua/data/provider/fiat_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/send_amount/send_amount_arguments.dart';
import 'package:aqua/data/provider/send_amount/send_amount_ui_model.dart';
import 'package:aqua/data/provider/send_review/send_review_arguments.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

final sendAmountProvider = Provider.family
    .autoDispose<_SendAmountProvider, Object?>(
        (ref, arguments) => _SendAmountProvider(ref, arguments));

class _SendAmountProvider {
  _SendAmountProvider(this.ref, this._arguments) {
    ref.onDispose(() {
      _amountTextSubject.close();
      _selectCurrencySubject.close();
      _selectMaxSubject.close();
      _popSubject.close();
      _continueSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;
  final Object? _arguments;

  late final Stream<AsyncValue<SendAmountArguments>> _argumentsStream =
      Stream.value(_arguments)
          .asyncMap((arguments) async {
            try {
              return arguments as SendAmountArguments;
            } catch (_) {
              throw SendAmountProviderInvalidArgumentsException();
            }
          })
          .map((arguments) => AsyncValue.data(arguments))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace))
          .shareReplay(maxSize: 1);

  Stream<SendAmountUiModel> _uiModelStream(BuildContext context) =>
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
                  return SendAmountSuccessUiModel(
                    icon: icon,
                    name: asset.name,
                    ticker: asset.ticker,
                    amount: amount,
                    precision: asset.precision,
                  );
                }),
                loading: () => Stream.value(const SendAmountLoadingUiModel()),
                error: (error, stacktrace) =>
                    Stream<SendAmountUiModel>.error(error, stacktrace),
              ))
          .doOnError((_, __) {
        /** notify remote logger about error */
      }).onErrorReturnWith((_, __) => SendAmountErrorUiModel(
              description: AppLocalizations.of(context)!.unknownErrorSubtitle,
              buttonTitle: AppLocalizations.of(context)!.sendAmountErrorButton,
              buttonAction: () {
                pop();
              }));

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

  late final Stream<String> _amountTextStream = _maxSelectedStream
      .switchMap<void>(
          (selected) => selected ? Stream.value(null) : const Stream.empty())
      .startWith(null)
      .switchMap((value) => _amountTextSubject.startWith(''))
      .shareReplay(maxSize: 1);

  final PublishSubject<void> _selectCurrencySubject = PublishSubject();

  late final Stream<bool> _cryptoCurrencySelectedStream = _selectCurrencySubject
      .scan<bool>((accumulated, _, __) => !accumulated, true)
      .startWith(true)
      .shareReplay(maxSize: 1);

  final PublishSubject<void> _selectMaxSubject = PublishSubject();
  void selectMax() {
    _selectMaxSubject.add(null);
  }

  late final Stream<bool> _maxSelectedStream = _amountTextSubject
      .startWith('')
      .switchMap((_) => _selectMaxSubject
          .scan<bool>((accumulated, _, __) => !accumulated, false)
          .startWith(false))
      .shareReplay(maxSize: 1);

  late final Stream<String> _predefinedAmountTextStream = _argumentsStream
      .switchMap((value) => value.maybeWhen(
            data: (arguments) => Stream.value(arguments),
            orElse: () => const Stream<SendAmountArguments>.empty(),
          ))
      .switchMap((arguments) => _maxSelectedStream
          .scan<Tuple2<bool, bool>?>(
              (accumulated, value, __) => Tuple2(accumulated == null, value),
              null)
          .switchMap((tuple) => tuple?.item1 == true
              ? Stream.value(arguments.amount ?? '')
              : tuple?.item2 == true
                  ? _cryptoCurrencySelectedStream.asyncMap((selected) =>
                      selected
                          ? ref.read(formatterProvider).formatAssetAmount(
                              amount: arguments.asset.amount,
                              precision: arguments.asset.precision)
                          : ref
                              .read(fiatProvider)
                              .satoshiToFiatStream(
                                  arguments.asset, arguments.asset.amount)
                              .first)
                  : Stream.value(null).asyncMap((_) => _amountTextStream.first))
          .onErrorResumeNext(const Stream.empty()))
      .shareReplay(maxSize: 1);

  late final Stream<String> _mergedAmountTextStream = Rx.merge([
    _amountTextStream,
    _predefinedAmountTextStream,
  ]).shareReplay(maxSize: 1);

  Stream<String> _textConversionStream() =>
      _argumentsStream.switchMap((value) => value.maybeWhen(
            data: (arguments) => Stream.value(arguments.asset)
                .switchMap((asset) => _cryptoCurrencySelectedStream.switchMap((selected) => selected
                    ? _mergedAmountTextStream
                        .asyncMap((amount) => ref
                            .read(formatterProvider)
                            .parseAssetAmount(
                                amount: amount, precision: asset.precision))
                        .switchMap((satoshi) => ref
                            .read(fiatProvider)
                            .satoshiToFiatWithCurrencyStream(asset, satoshi))
                    : _mergedAmountTextStream
                        .switchMap((amount) => ref.read(fiatProvider).fiatToSatoshiStream(asset, amount))
                        .map((amount) => '${asset.ticker} $amount')))
                        .map((text) => text.isEmpty ? text : '≈ $text')
                .onErrorReturn(''),
            orElse: () => const Stream.empty(),
          ));

  Stream<VoidCallback?> _buttonOnPressedStream() =>
      _mergedAmountTextStream.asyncMap((text) async {
        try {
          final amount = double.parse(text);
          if (amount > 0) {
            return () {
              _continueSubject.add(null);
            };
          } else {
            return null;
          }
        } catch (_) {
          return null;
        }
      });

  final PublishSubject<void> _popSubject = PublishSubject();
  void pop() {
    _popSubject.add(null);
  }

  Stream<Object> _popStream() => _popSubject.map((_) => Object());

  final PublishSubject<void> _continueSubject = PublishSubject();
  late final Stream<SendReviewArguments?> _continueStream = _continueSubject
      .switchMap((_) => _argumentsStream.switchMap((value) => value.maybeWhen(
            data: (arguments) => Stream.value(arguments),
            orElse: () => const Stream<SendAmountArguments>.empty(),
          )))
      .switchMap((arguments) => Stream.value(arguments)
          .asyncMap((arguments) => _mergedAmountTextStream
              .switchMap((amount) => _cryptoCurrencySelectedStream
                      .asyncMap((selected) => selected
                          ? Future.value(amount)
                          : ref
                              .read(fiatProvider)
                              .fiatToSatoshiStream(arguments.asset, amount)
                              .first)
                      .map<SendReviewArguments?>((amount) {
                    final asset = arguments.asset;
                    final address = arguments.address;
                    return SendReviewArguments(
                      asset: asset,
                      address: address,
                      amount: amount,
                    );
                  }))
              .first)
          .concatWith([Stream.value(null)]))
      .shareReplay(maxSize: 1);

  Stream<SendAmountCurrencyButtonUiModel> _currencyButtonUiModelStream(
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
                  ? SendAmountCurrencyButtonUiModel(
                      title: asset.ticker,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      onPressed: () {
                        _selectCurrencySubject.add(null);
                      },
                    )
                  : SendAmountCurrencyButtonUiModel(
                      title:
                          'USD', // TODO Probably should be taken from global currency settings
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      onPressed: () {
                        _selectCurrencySubject.add(null);
                      },
                    ))
              : Stream.value(asset)
                  .map((asset) => SendAmountCurrencyButtonUiModel(
                        title: asset.ticker,
                        color: Theme.of(context).colorScheme.onSurface,
                        onPressed: null,
                      )));
}

final _sendAmountUiModelStreamProvider = StreamProvider.family
    .autoDispose<SendAmountUiModel, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref.watch(sendAmountProvider(arguments))._uiModelStream(context);
});

final sendAmountUiModelProvider = Provider.family
    .autoDispose<SendAmountUiModel?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref.watch(_sendAmountUiModelStreamProvider(tuple)).data?.value;
});

final _sendAmountAssetConversionStreamProvider =
    StreamProvider.family.autoDispose<String, Object?>((ref, arguments) async* {
  yield* ref.watch(sendAmountProvider(arguments))._assetConversionStream();
});

final sendAmountAssetConversionProvider =
    Provider.family.autoDispose<String?, Object?>((ref, arguments) {
  return ref
      .watch(_sendAmountAssetConversionStreamProvider(arguments))
      .data
      ?.value;
});

final _sendAmountMaxSelectedStreamProvider =
    StreamProvider.family.autoDispose<bool, Object?>((ref, arguments) async* {
  yield* ref.watch(sendAmountProvider(arguments))._maxSelectedStream;
});

final sendAmountMaxSelectedProvider =
    Provider.family.autoDispose<bool, Object?>((ref, arguments) {
  return ref
          .watch(_sendAmountMaxSelectedStreamProvider(arguments))
          .data
          ?.value ??
      false;
});

final _sendAmountPredefinedAmountTextStreamProvider = StreamProvider.family
    .autoDispose<String?, Object?>((ref, arguments) async* {
  yield* ref.watch(sendAmountProvider(arguments))._predefinedAmountTextStream;
});

final sendAmountPredefinedAmountTextProvider =
    Provider.family.autoDispose<String?, Object?>((ref, arguments) {
  return ref
      .watch(_sendAmountPredefinedAmountTextStreamProvider(arguments))
      .data
      ?.value;
});

final _sendAmountTextConversionStreamProvider =
    StreamProvider.family.autoDispose<String, Object?>((ref, arguments) async* {
  yield* ref.watch(sendAmountProvider(arguments))._textConversionStream();
});

final sendAmountTextConversionProvider =
    Provider.family.autoDispose<String, Object?>((ref, arguments) {
  return ref
          .watch(_sendAmountTextConversionStreamProvider(arguments))
          .data
          ?.value ??
      '';
});

final _sendAmountButtonOnPressedStreamProvider = StreamProvider.family
    .autoDispose<VoidCallback?, Object?>((ref, arguments) async* {
  yield* ref.watch(sendAmountProvider(arguments))._buttonOnPressedStream();
});

final sendAmountButtonOnPressedProvider =
    Provider.family.autoDispose<VoidCallback?, Object?>((ref, arguments) {
  return ref
      .watch(_sendAmountButtonOnPressedStreamProvider(arguments))
      .data
      ?.value;
});

final _sendAmountPopStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(sendAmountProvider(arguments))._popStream();
});

final sendAmountPopProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref.watch(_sendAmountPopStreamProvider(arguments)).data?.value;
});

final _sendAmountContinueStreamProvider = StreamProvider.family
    .autoDispose<SendReviewArguments?, Object?>((ref, arguments) async* {
  yield* ref.watch(sendAmountProvider(arguments))._continueStream;
});

final sendAmountContinueProvider = Provider.family
    .autoDispose<SendReviewArguments?, Object?>((ref, arguments) {
  return ref.watch(_sendAmountContinueStreamProvider(arguments)).data?.value;
});

final _sendAmountCurrencyButtonUiModelStreamProvider = StreamProvider.family
    .autoDispose<SendAmountCurrencyButtonUiModel,
        Tuple2<Object?, BuildContext>>((ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(sendAmountProvider(arguments))
      ._currencyButtonUiModelStream(context);
});

final sendAmountCurrencyButtonUiModelProvider = Provider.family.autoDispose<
    SendAmountCurrencyButtonUiModel?,
    Tuple2<Object?, BuildContext>>((ref, tuple) {
  return ref
      .watch(_sendAmountCurrencyButtonUiModelStreamProvider(tuple))
      .data
      ?.value;
});

class SendAmountProviderInvalidArgumentsException implements Exception {}
