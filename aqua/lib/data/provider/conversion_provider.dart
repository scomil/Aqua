import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/fiat_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuple/tuple.dart';

final _conversionProvider = Provider.family
    .autoDispose<ConversionProvider, Tuple2<Asset, int>>(
        (ref, arguments) => ConversionProvider(ref, arguments));

class ConversionProvider {
  ConversionProvider(this._ref, this._arguments);

  final AutoDisposeProviderReference _ref;
  final Tuple2<Asset, int> _arguments;

  Stream<String> _conversion() => _ref
      .read(fiatProvider)
      .satoshiToFiatWithCurrencyStream(_arguments.item1, _arguments.item2);
}

final _conversionStreamProvider = StreamProvider.family
    .autoDispose<String, Tuple2<Asset, int>>((ref, arguments) async* {
  yield* ref.watch(_conversionProvider(arguments))._conversion();
});

final conversionProvider =
    Provider.family.autoDispose<String?, Tuple2<Asset, int>>((ref, arguments) {
  return ref.watch(_conversionStreamProvider(arguments)).data?.value;
});
