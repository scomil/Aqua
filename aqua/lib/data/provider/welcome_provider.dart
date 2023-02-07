import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final welcomeProvider =
    Provider.autoDispose<_WelcomeProvider>((ref) => _WelcomeProvider(ref));

class _WelcomeProvider {
  _WelcomeProvider(this._ref) {
    _ref.onDispose(() {
      _selectedBottomTabSubject.close();
      _showWalletPromptDialogSubject.close();
      _navigateToRestoreWalletSubject.close();
      _navigateToCreateWalletSubject.close();
    });
  }

  final AutoDisposeProviderReference _ref;

  final BehaviorSubject<int> _selectedBottomTabSubject =
      BehaviorSubject.seeded(0);
  void selectTab(int index) {
    _selectedBottomTabSubject.add(index);
  }

  final PublishSubject<void> _showWalletPromptDialogSubject = PublishSubject();
  void showWalletPromptDialog() {
    _showWalletPromptDialogSubject.add(null);
  }

  Stream<Object> _showWalletPromptDialogStream() =>
      _showWalletPromptDialogSubject.map((event) => Object());

  final PublishSubject<void> _navigateToRestoreWalletSubject = PublishSubject();
  void navigateToRestoreWallet() {
    _navigateToRestoreWalletSubject.add(null);
  }

  Stream<Object> _navigateToRestoreWalletStream() =>
      _navigateToRestoreWalletSubject.map((event) => Object());

  final PublishSubject<void> _navigateToCreateWalletSubject = PublishSubject();
  void navigateToCreateWallet() {
    _navigateToCreateWalletSubject.add(null);
  }

  Stream<Object> _navigateToCreateWalletStream() =>
      _navigateToCreateWalletSubject.map((event) => Object());
}

final _welcomeSelectedBottomTabStreamProvider =
    StreamProvider.autoDispose<int>((ref) async* {
  yield* ref.watch(welcomeProvider)._selectedBottomTabSubject;
});

final welcomeSelectedBottomTabProvider = Provider.autoDispose<int>((ref) {
  return ref.watch(_welcomeSelectedBottomTabStreamProvider).data?.value ?? 0;
});

final _welcomeShowWalletPromptDialogStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(welcomeProvider)._showWalletPromptDialogStream();
});

final welcomeShowWalletPromptDialogProvider =
    Provider.autoDispose<Object?>((ref) {
  return ref.watch(_welcomeShowWalletPromptDialogStreamProvider).data?.value;
});

final _welcomeNavigateToRestoreWalletStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(welcomeProvider)._navigateToRestoreWalletStream();
});

final welcomeNavigateToRestoreWalletProvider =
    Provider.autoDispose<Object?>((ref) {
  return ref.watch(_welcomeNavigateToRestoreWalletStreamProvider).data?.value;
});

final _welcomeNavigateToCreateWalletStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(welcomeProvider)._navigateToCreateWalletStream();
});

final welcomeNavigateToCreateWalletProvider =
    Provider.autoDispose<Object?>((ref) {
  return ref.watch(_welcomeNavigateToCreateWalletStreamProvider).data?.value;
});
