import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final webViewProvider =
    Provider.autoDispose<_WebViewProvider>((ref) => _WebViewProvider(ref));

class _WebViewProvider {
  final AutoDisposeProviderReference _ref;

  _WebViewProvider(this._ref) {
    _ref.onDispose(() {
      _loadingTosSubject.close();
      _loadingProfileLiquidSubject.close();
    });
  }

  final _loadingTosSubject = PublishSubject<bool>();
  late final Stream<bool> _loadingTosStream =
      _loadingTosSubject.startWith(true).map((value) {
    return value;
  }).shareReplay(maxSize: 1);

  void loadingTosDone() {
    _loadingTosSubject.add(false);
  }

  final _loadingProfileLiquidSubject = PublishSubject<bool>();
  late final Stream<bool> _loadingProgileLiquidStream =
      _loadingProfileLiquidSubject.startWith(true).map((value) {
    return value;
  }).shareReplay(maxSize: 1);

  void loadingProfileLiquidDone() {
    _loadingProfileLiquidSubject.add(false);
  }
}

final _loadingTosStreamProvider =
    StreamProvider.autoDispose<bool>((ref) async* {
  yield* ref.watch(webViewProvider)._loadingTosStream;
});

final loadingTosProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(_loadingTosStreamProvider).data?.value ?? true;
});

final _loadingProfileLiquidStreamProvider =
    StreamProvider.autoDispose<bool>((ref) async* {
  yield* ref.watch(webViewProvider)._loadingProgileLiquidStream;
});

final loadingProfileLiquidProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(_loadingProfileLiquidStreamProvider).data?.value ?? true;
});
