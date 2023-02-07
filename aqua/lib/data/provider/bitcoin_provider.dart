import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/backend/bitcoin_network.dart';
import 'package:aqua/data/backend/gdk_backend_event.dart';
import 'package:aqua/data/backend/network_backend.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/provider/env_switch_provider.dart';
import 'package:aqua/data/provider/network_frontend.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isolator/isolator.dart';

final bitcoinProvider =
    Provider<BitcoinProvider>((ref) => BitcoinProvider(ref: ref));

class BitcoinProvider extends NetworkFrontend {
  BitcoinProvider({required ProviderReference ref}) : super(ref: ref);

  /// mainnet:
  /// mainnet
  ///
  /// testnet:
  /// testnet
  ///
  /// rust
  /// gdk mainnet:
  /// electrum-mainnet
  ///
  /// gdk testnet:
  /// electrum-testnet
  ///
  /// https://github.com/Blockstream/gdk/blob/master/src/network_parameters.cpp
  @override
  Future<bool> connect({
    GdkConnectionParams? params,
  }) async {
    final env = await ref.read(envSwitchProvider).getEnv();
    if (env == 2) {
      networkName = 'electrum-testnet';
    } else {
      networkName = 'electrum-mainnet';
    }

    params ??= GdkConnectionParams(name: networkName);
    return super.connect(params: params);
  }

  Future<void> onBackendError(dynamic error) async {
    logger.e('[$runtimeType] Bitcoin backend error: $error');
  }

  Future<bool> init() async {
    logger.d('[$runtimeType] Initializing bitcoin backend');
    await initBackend(
      _createGdkBackend,
      backendType: NetworkBackend,
      uniqueId: 'BitcoinBackend',
      errorHandler: onBackendError,
    );

    final result = await runBackendMethod<Object, bool>(GdkBackendEvent.init);

    if (!result) {
      throw InitializeNetworkFrontendException();
    }

    logger.d('[$runtimeType] Bitcoin backend initialized: $result');

    return result;
  }

  @override
  Future<int> minFeeRate() async {
    return 1000;
  }
}

void _createGdkBackend(BackendArgument<void> argument) {
  NetworkBackend(argument, BitcoinNetwork());
}
