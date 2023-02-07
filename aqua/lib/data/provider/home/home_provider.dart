import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/home/home_popup.dart';
import 'package:aqua/data/provider/passcode/passcode_processing_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final homeProvider =
    Provider.autoDispose<_HomeProvider>((ref) => _HomeProvider(ref));

class _HomeProvider {
  _HomeProvider(this._ref) {
    _ref.onDispose(() {
      _selectedBottomTabSubject.close();
      _handlePasscodeUnlockResultSubject.close();
    });
  }

  final AutoDisposeProviderReference _ref;

  final PublishSubject<Object?> _handlePasscodeUnlockResultSubject =
      PublishSubject();
  void handlePasscodeUnlockResult(Object? result) {
    _handlePasscodeUnlockResultSubject.add(result);
  }

  late final Stream<HomePopup?> _popupStream = Stream.value(null)
      .asyncMap((_) => _ref.read(aquaProvider).getProtectionSkipped())
      .map<HomePopup?>((_) => null)
      .onErrorResume((_, __) => Stream.value(null)
          .asyncMap((_) => _ref.read(aquaProvider).biometricEnabled())
          .onErrorResume((_, __) => Stream.value(null)
              .asyncMap((_) => _ref.read(aquaProvider).passcodeEnabled()))
          .map<HomePopup?>((_) => null)
          .onErrorResume((_, __) => Stream.value(null)
              .asyncMap((_) => _ref.read(aquaProvider).canAuthenticate())
              .map<HomePopup>((_) => const HomeBiometricProtectionPopup())
              .onErrorReturn(const HomePinProtectionPopup())))
      .switchMap((popup) => popup == null
          ? Stream.value(null)
              .asyncMap((_) => _ref.read(aquaProvider).passcodeEnabled())
              .switchMap((_) =>
                  _handlePasscodeUnlockResultSubject.switchMap((result) => result is PasscodeUnlockSuccessResult ? Stream.value(null) : Stream.value(const HomePinUnlockPopup())).startWith(const HomePinUnlockPopup()))
              .onErrorReturn(null)
          : Stream.value(popup))
      .switchMap((popup) => Stream.value(null).asyncMap<HomePopup?>((_) async {
            final requiresBackup =
                await _ref.read(aquaProvider).requiresBackup();
            if (requiresBackup == true) {
              return const HomeWalletBackupPopup();
            }
            return null;
          }).concatWith([Stream.value(popup)]))
      .shareReplay(maxSize: 1);

  Stream<Object> _systemNavigatorPopStream() =>
      _handlePasscodeUnlockResultSubject.switchMap((value) =>
          value == null ? Stream.value(Object()) : const Stream.empty());

  Stream<bool> _contentVisibility() =>
      Stream.value(true).delay(const Duration(milliseconds: 500));

  final BehaviorSubject<int> _selectedBottomTabSubject =
      BehaviorSubject.seeded(0);
  void selectTab(int index) {
    _selectedBottomTabSubject.add(index);
  }

  final _rememberBackupDismissedSubject = BehaviorSubject.seeded(false);

  Stream<bool> _rememberBackupVisibility() {
    return _rememberBackupDismissedSubject.switchMap((dismissed) {
      return _contentVisibility().switchMap((contentVisible) {
        if (contentVisible) {
          return Stream.value(null).switchMap((_) {
            if (dismissed) {
              return Stream.value(false);
            }

            return Stream.value(null).asyncMap((dismissed) async {
              return _ref.read(aquaProvider).requiresBackup();
            }).map((requiresBackup) {
              if (requiresBackup == true) {
                return true;
              }

              return false;
            });
          });
        }

        return Stream.value(false);
      });
    }).shareReplay(maxSize: 1);
  }

  Future<void> dismissRememberBackup() async {
    await _ref.read(aquaProvider).ignoreBackup();
    _rememberBackupDismissedSubject.add(true);
  }
}

final _rememberBackupVisibilityStreamProvider =
    StreamProvider.autoDispose<bool>((ref) async* {
  yield* ref.watch(homeProvider)._rememberBackupVisibility();
});

final rememberBackupVisibilityProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(_rememberBackupVisibilityStreamProvider).data?.value ??
      false;
});

final _homePopupStreamProvider =
    StreamProvider.autoDispose<HomePopup?>((ref) async* {
  yield* ref.watch(homeProvider)._popupStream;
});

final homePopupProvider = Provider.autoDispose<HomePopup?>((ref) {
  return ref.watch(_homePopupStreamProvider).data?.value;
});

final _homeContentVisibilityStreamProvider =
    StreamProvider.autoDispose<bool>((ref) async* {
  yield* ref.watch(homeProvider)._contentVisibility();
});

final homeContentVisibilityProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(_homeContentVisibilityStreamProvider).data?.value ?? false;
});

final _homeSystemNavigatorPopStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(homeProvider)._systemNavigatorPopStream();
});

final homeSystemNavigatorPopProvider = Provider.autoDispose<Object?>((ref) {
  return ref.watch(_homeSystemNavigatorPopStreamProvider).data?.value;
});

final _homeSelectedBottomTabStreamProvider =
    StreamProvider.autoDispose<int>((ref) async* {
  yield* ref.watch(homeProvider)._selectedBottomTabSubject;
});

final homeSelectedBottomTabProvider = Provider.autoDispose<int>((ref) {
  return ref.watch(_homeSelectedBottomTabStreamProvider).data?.value ?? 0;
});

class HomeUnableToDecryptBiometricException implements Exception {}
