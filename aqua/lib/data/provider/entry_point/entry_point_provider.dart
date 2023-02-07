import 'package:aqua/data/provider/app_links/app_links_provider.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/entry_point/entry_point.dart';
import 'package:aqua/data/provider/initialize_app_provider.dart';
import 'package:aqua/data/provider/swap/sideswap_prompt_arguments.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final _entryPointProvider =
    Provider<EntryPointProvider>((ref) => EntryPointProvider(ref));

class EntryPointProvider {
  EntryPointProvider(this._ref);

  final ProviderReference _ref;

  late final Stream<EntryPoint> _entryPointStream = _ref
      .read(initAppProvider)
      .initAppStream
      .switchMap((value) => value.maybeWhen(
            data: (_) => _ref.read(aquaProvider).authStream.map((value) =>
                value.when(
                    data: (_) => const EntryPoint.home(),
                    loading: () => const EntryPoint.loading(),
                    error: (error, _) =>
                        (error is AquaProviderBiometricFailureException)
                            ? EntryPoint.error(error: error)
                            : const EntryPoint.welcome())),
            loading: () => Stream.value(const EntryPoint.loading()),
            orElse: () => Stream.value(const EntryPoint.error()),
          ))
      .shareReplay(maxSize: 1);

  Stream<SideSwapPromptArguments?> _navigateToSwapPromptStream() =>
      _entryPointStream
          .switchMap((value) => value.maybeWhen(
                home: () => Stream.value(null),
                orElse: () => const Stream<void>.empty(),
              ))
          .switchMap((_) => _ref.read(appLinkProvider).appLinkStream.switchMap(
              (appLink) =>
                  Stream.value(appLink).map<SideSwapPromptArguments?>((event) {
                    final orderId = appLink.orderId;
                    final sendAsset = appLink.sendAsset;
                    final sendAmount = appLink.sendAmount;
                    final recvAsset = appLink.recvAsset;
                    final recvAmount = appLink.recvAmount;
                    final uploadUrl = appLink.uploadUrl;

                    return SideSwapPromptArguments(
                      orderId: orderId,
                      sendAsset: sendAsset,
                      sendAmount: sendAmount,
                      recvAsset: recvAsset,
                      recvAmount: recvAmount,
                      uploadUrl: uploadUrl,
                    );
                  }).concatWith([Stream.value(null)])));
}

final _entryPointStreamProvider = StreamProvider<EntryPoint>((ref) async* {
  yield* ref.watch(_entryPointProvider)._entryPointStream;
});

final entryPointProvider = Provider<EntryPoint?>((ref) {
  return ref.watch(_entryPointStreamProvider).data?.value;
});

final _entryPointNavigateToSwapPromptStreamProvider =
    StreamProvider<SideSwapPromptArguments?>((ref) async* {
  yield* ref.watch(_entryPointProvider)._navigateToSwapPromptStream();
});

final entryPointNavigateToSwapPromptProvider =
    Provider<SideSwapPromptArguments?>((ref) {
  return ref.watch(_entryPointNavigateToSwapPromptStreamProvider).data?.value;
});
