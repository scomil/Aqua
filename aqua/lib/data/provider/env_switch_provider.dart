import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final envSwitchProvider =
    Provider.autoDispose<EnvSwitchProvider>((ref) => EnvSwitchProvider(ref));

class EnvSwitchProvider {
  final AutoDisposeProviderReference ref;

  EnvSwitchProvider(this.ref);

  int _envCounter = 0;

  final _tapEnvSwitchSubject = PublishSubject<Object>();
  late final Stream<Object> _tapEnvSwitchStream = _tapEnvSwitchSubject.map((_) {
    return _envCounter++;
  }).switchMap((counter) {
    if (counter >= 9) {
      _envCounter = 0;
      return Stream<Object>.value(Object());
    }

    return const Stream<Object>.empty();
  }).shareReplay(maxSize: 1);

  void setTapEnv() {
    _tapEnvSwitchSubject.add(Object());
  }

  Future<int> getEnv() async {
    final envType = await ref.read(aquaProvider).getEnv();
    if (envType == null || envType.isEmpty) {
      return 0;
    }

    final value = int.tryParse(envType);
    if (value == null) {
      return 0;
    }

    return value;
  }

  final _envTypeChangedSubject = PublishSubject<void>();
  late final ReplayStream<AsyncValue<int>> envType = _envTypeChangedSubject
      .startWith(null)
      .asyncMap((_) async {
        return getEnv();
      })
      .map((value) => AsyncValue.data(value))
      .startWith(const AsyncValue.loading())
      .onErrorReturnWith(
          (error, stackTrace) => AsyncValue.error(error, stackTrace))
      .doOnError((error, stackTrace) {
        logger.d(error);
        logger.d(stackTrace);
      })
      .shareReplay(maxSize: 1);

  Future<void> setEnv(String env) async {
    await ref.read(aquaProvider).setEnv(env);
    _envTypeChangedSubject.add(null);
  }
}

final _tapEnvSwitchStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(envSwitchProvider)._tapEnvSwitchStream;
});

final tapEnvSwitchProvider = Provider.autoDispose<Object?>((ref) {
  return ref.watch(_tapEnvSwitchStreamProvider).data?.value;
});

final _envTypeStreamProvider =
    StreamProvider.autoDispose<AsyncValue<int>>((ref) async* {
  yield* ref.watch(envSwitchProvider).envType;
});

final envTypeProvider = Provider.autoDispose<AsyncValue<int>?>((ref) {
  return ref.watch(_envTypeStreamProvider).data?.value;
});
