import 'package:aqua/data/models/focus_action.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/screens/onboarding/wallet_restore/exception/wallet_restore_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

List<String> _parseBody(String body) => body.split('\n');

final walletOptionsProvider = Provider.autoDispose<WalletOptionsProvider>(
    (ref) => WalletOptionsProvider(ref));

class WalletOptionsProvider {
  WalletOptionsProvider(this.ref) {
    ref.onDispose(() {
      _reloadSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;
  final PublishSubject<void> _reloadSubject = PublishSubject();
  late final ReplayStream<AsyncValue<List<String>>> optionsStream =
      _reloadSubject
          .startWith(null)
          .switchMap((_) => loadList()
              .asStream()
              .map((list) => AsyncValue.data(list))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);

  Future<List<String>> loadList() async {
    try {
      final string = await rootBundle.loadString('assets/wordlist.txt');
      return _parseBody(string);
    } catch (e) {
      throw WalletRestoreInvalidOptionsException();
    }
  }

  void reload() {
    _reloadSubject.add(null);
  }
}

final _walletOptionsStreamProvider =
    StreamProvider.autoDispose<AsyncValue<List<String>>>((ref) async* {
  final restoreProcessingStream =
      ref.watch(walletOptionsProvider).optionsStream;

  yield* restoreProcessingStream;
});

final walletOptionsValueProvider =
    Provider.autoDispose<AsyncValue<List<String>>?>((ref) {
  return ref.watch(_walletOptionsStreamProvider).data?.value;
});

final walletRestoreItemProvider = Provider.family
    .autoDispose<WalletRestoreItemProvider, int>(
        (ref, index) => WalletRestoreItemProvider(ref));

class WalletRestoreItemProvider {
  WalletRestoreItemProvider(this.ref) {
    ref.onDispose(() {
      _updateTextSubject.close();
      _selectOptionSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;

  final PublishSubject<String> _updateTextSubject = PublishSubject();
  late final Stream<String?> _fourSymbolsThresholdStream = _updateTextSubject
      .switchMap<String>((text) =>
          (text.length >= 4) ? Stream.value(text) : const Stream.empty())
      .map((text) => text.toLowerCase())
      .asyncMap((text) => ref
          .read(walletOptionsProvider)
          .optionsStream
          .switchMap<List<String>>((value) => value.data?.value != null
              ? Stream.value(value.data!.value)
              : const Stream.empty())
          .first
          .then((options) => options.where((op) => op.startsWith(text))))
      .map((options) => options.isNotEmpty ? options.first : null);

  final PublishSubject<String> _selectOptionSubject = PublishSubject();

  late final Stream<Tuple2<String?, int>?> fieldValueStream =
      Rx.merge([_fourSymbolsThresholdStream, _selectOptionSubject])
          .startWith(null)
          // Sending the string alone makes the ProviderListener ignore the
          // value if the user tries to re-enter the same term as the one they
          // just removed. Sending a Tuple is a workaround to ensure it is a
          // unique object instance every time.
          .map((value) => Tuple2(value, DateTime.now().millisecond))
          .shareReplay(maxSize: 1);

  void update(String text) {
    _updateTextSubject.add(text);
  }

  void select(String text) {
    _selectOptionSubject.add(text);
  }

  List<String> _suggestions() {
    final optionsStream = ref.read(walletOptionsProvider).optionsStream;
    return optionsStream.values.last.data?.value ?? [];
  }

  Iterable<String> options(String text) {
    if (text.isEmpty) {
      return [];
    }
    final lowercasedText = text.toLowerCase();
    return _suggestions().where((String option) {
      return option.startsWith(lowercasedText);
    });
  }

  bool shouldClear(String text) {
    if (text.isEmpty) {
      return false;
    }

    return !_suggestions().contains(text);
  }
}

final _fieldValueStreamProvider = StreamProvider.family
    .autoDispose<Tuple2<String?, int>?, int>((ref, index) async* {
  final fieldValueStream =
      ref.watch(walletRestoreItemProvider(index)).fieldValueStream;

  yield* fieldValueStream;
});

final fieldValueStreamProvider =
    Provider.family.autoDispose<Tuple2<String?, int>?, int>((ref, index) {
  return ref.watch(_fieldValueStreamProvider(index)).data?.value;
});

final _walletFocusActionProvider =
    Provider.autoDispose<WalletFocusActionProvider>(
        (ref) => WalletFocusActionProvider(ref));

class WalletFocusActionProvider {
  WalletFocusActionProvider(this.ref);

  final AutoDisposeProviderReference ref;
  late final Stream<FocusAction> focusActionStream = Rx.merge(List.generate(
    12,
    (index) => ref
        .read(walletRestoreItemProvider(index))
        .fieldValueStream
        .map((value) => value?.item1)
        .switchMap<String>((value) =>
            value != null ? Stream.value(value) : const Stream.empty())
        .asyncMap((value) => index < 11
            ? ref
                .read(walletRestoreItemProvider(index + 1))
                .fieldValueStream
                .map((value) => value?.item1)
                .switchIfEmpty(Stream.value(null))
                .map((value) => value == null || value.isEmpty
                    ? FocusAction.next()
                    : FocusAction.clear())
                .first
            : Future.value(FocusAction.clear())),
  ));
}

final _focusActionStreamProvider =
    StreamProvider.autoDispose<FocusAction>((ref) async* {
  final focusActionStream =
      ref.watch(_walletFocusActionProvider).focusActionStream;

  yield* focusActionStream;
});

final focusActionProvider = Provider.autoDispose<FocusAction?>(
    (ref) => ref.watch(_focusActionStreamProvider).data?.value);

final walletRestoreProcessingProvider =
    Provider.autoDispose<WalletRestoreProcessingProvider>(
        (ref) => WalletRestoreProcessingProvider(ref));

class WalletRestoreProcessingProvider {
  WalletRestoreProcessingProvider(this.ref) {
    ref.onDispose(() {
      _restoreSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;
  final PublishSubject<void> _restoreSubject = PublishSubject();
  void restore() {
    _restoreSubject.add(null);
  }

  late final Stream<AsyncValue<void>> _restoreProcessingStream = _restoreSubject
      .switchMap((_) => Rx.combineLatest2(
            Rx.timer(null, const Duration(seconds: 12)),
            Stream.value(_)
                .asyncMap((_) => Rx.combineLatestList(List.generate(
                    12,
                    (index) => ref
                        .read(walletRestoreItemProvider(index))
                        .fieldValueStream)).first)
                .map((mnemonic) =>
                    mnemonic.map((s) => s?.item1).whereType<String>().toList())
                .asyncMap((mnemonic) async {
                  final isValid =
                      await ref.read(liquidProvider).validateMnemonic(mnemonic);
                  if (!isValid) {
                    throw WalletRestoreInvalidMnemonicException();
                  }
                  return mnemonic;
                })
                .map((mnemonic) => mnemonic.join(' '))
                .asyncMap(
                    (mnemonic) => ref.read(aquaProvider).setMnemonic(mnemonic))
                .asyncMap((_) => ref.read(aquaProvider).ignoreBackup()),
            (a, b) => b,
          )
              .doOnData((_) => ref.read(aquaProvider).authorize())
              .map((result) => AsyncValue.data(result))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stacktrace) => AsyncValue.error(error, stacktrace)))
      .shareReplay(maxSize: 1);
}

final _walletRestoreStreamProvider =
    StreamProvider.autoDispose<AsyncValue<void>>((ref) async* {
  final restoreProcessingStream =
      ref.watch(walletRestoreProcessingProvider)._restoreProcessingStream;

  yield* restoreProcessingStream;
});

final walletRestoreResultProvider =
    Provider.autoDispose<AsyncValue<void>?>((ref) {
  return ref.watch(_walletRestoreStreamProvider).data?.value;
});
