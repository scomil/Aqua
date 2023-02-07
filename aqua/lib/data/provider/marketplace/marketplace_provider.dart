import 'package:aqua/screens/marketplace/marketplace_menu_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final _marketplaceSelectedStreamProvider =
    StreamProvider.autoDispose<Object?>((ref) async* {
  yield* ref.watch(marketplaceProvider)._marketplaceArgumentsSubject;
});

final marketplaceSelectedProvider = Provider.autoDispose<Object?>((ref) {
  return ref.watch(_marketplaceSelectedStreamProvider).data?.value;
});

final marketplaceProvider = Provider.autoDispose<MarketplaceProvider>((ref) {
  return MarketplaceProvider(ref);
});

class MarketplaceProvider {
  MarketplaceProvider(this._ref) {
    _ref.onDispose(() {
      _marketplaceArgumentsSubject.close();
    });
  }

  final AutoDisposeProviderReference _ref;

  final _marketplaceArgumentsSubject = PublishSubject<Object?>();

  void selectMenuItem(MarketplaceArguments args) {
    _marketplaceArgumentsSubject.add(args);
  }
}
