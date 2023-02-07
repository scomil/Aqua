import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isolator/isolator.dart';

import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/backend/gdk_backend_event.dart';
import 'package:aqua/data/backend/liquid_network.dart';
import 'package:aqua/data/backend/network_backend.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/provider/env_switch_provider.dart';
import 'package:aqua/data/provider/network_frontend.dart';

enum LiquidNetworkEnumType {
  regtest,
  testnet,
  mainnet,
}

class LiquidNetworkFactory {
  final GdkRegisterNetworkData? networkData;
  final GdkConnectionParams params;
  final String networkName;
  final LiquidNetworkEnumType networkType;

  LiquidNetworkFactory(
    this.networkData,
    this.params,
    this.networkName,
    this.networkType,
  );

  factory LiquidNetworkFactory.fromEnv(int envType) {
    GdkConnectionParams params;
    GdkRegisterNetworkData? networkData;
    String networkName;
    LiquidNetworkEnumType networkType;

    switch (envType) {
      case 1:
        networkName = 'electrum-sideswap-regtest';
        networkType = LiquidNetworkEnumType.regtest;
        networkData = GdkRegisterNetworkData(
          name: networkName,
          networkDetails: const GdkNetwork(
            addressExplorerUrl:
                'https://blockstream.info/liquidtestnet/address/',
            assetRegistryOnionUrl: '',
            assetRegistryUrl: 'https://staging.sideswap.io/assets',
            bech32Prefix: 'ert',
            bip21Prefix: 'liquidtestnet',
            blech32Prefix: 'el',
            blindedPrefix: 4,
            csvBuckets: [],
            ctBits: 52,
            ctExponent: 0,
            development: false,
            electrumTls: false,
            electrumUrl: 'api.sideswap.io:10402',
            liquid: true,
            mainnet: false,
            name: 'Testnet Liquid (Electrum)',
            network: 'electrum-testnet-liquid',
            p2PkhVersion: 57,
            p2ShVersion: 39,
            policyAsset:
                '2e16b12daf1244332a438e829ca7ce209195f8e1c54199770cd8b327710a8ab2',
            serverType: ServerTypeEnum.electrum,
            serviceChainCode: '',
            servicePubkey: '',
            spvMulti: false,
            spvServers: <dynamic>[],
            spvEnabled: false,
            txExplorerUrl: 'https://blockstream.info/liquidtestnet/tx/',
            wampCertPins: [],
            wampCertRoots: [],
            wampOnionUrl: '',
            wampUrl: '',
          ),
        );

        params = GdkConnectionParams(
          name: networkName,
        );
        break;
      case 2:
        networkName = 'electrum-testnet-liquid';
        networkType = LiquidNetworkEnumType.testnet;
        params = GdkConnectionParams(name: networkName);
        break;
      default:
        networkName = 'electrum-liquid';
        networkType = LiquidNetworkEnumType.mainnet;
        params = GdkConnectionParams(name: networkName);
    }

    return LiquidNetworkFactory(networkData, params, networkName, networkType);
  }
}

final liquidProvider =
    Provider<LiquidProvider>((ref) => LiquidProvider(ref: ref));

class LiquidProvider extends NetworkFrontend {
  LiquidNetworkFactory? liquidNetworkFactory;

  LiquidProvider({required ProviderReference ref}) : super(ref: ref) {
    addEventListener(listener: onGdkEvent);
  }

  Future<void> onGdkEvent(dynamic value) async {
    switch (value.runtimeType.toString()) {
      case '_\$_GdkNetworkEvent':
        final result = value as GdkNetworkEvent;

        if (isLogged &&
            result.currentState == GdkNetworkEventStateEnum.connected) {
          await refreshAssets(requiresRefresh: true);
        }
        break;
    }
  }

  /// mainnet:
  /// liquid
  ///
  /// testnet:
  /// testnet-liquid
  ///
  /// rust
  /// gdk mainnet:
  /// electrum-liquid
  ///
  /// gdk testnet:
  /// electrum-testnet-liquid
  ///
  /// https://github.com/Blockstream/gdk/blob/master/src/network_parameters.cpp

  /// Register electrum-sideswap-regtest network data
  // check(GA_register_network("electrum-sideswap-regtest", json({
  //       { "address_explorer_url", "https://blockstream.info/liquidtestnet/address/" },
  //       { "asset_registry_onion_url", "" },
  //       { "asset_registry_url", "https://staging.sideswap.io/assets" },
  //       { "bech32_prefix", "ert" },
  //       { "bip21_prefix", "liquidtestnet" },
  //       { "blech32_prefix", "el" },
  //       { "blinded_prefix", 4u },
  //       { "csv_buckets", std::vector<uint32_t>() },
  //       { "ct_bits", 52 },
  //       { "ct_exponent", 0 },
  //       { "development", false },
  //       { "electrum_tls", false },
  //       { "electrum_url", "api.sideswap.io:10402" },
  //       { "liquid", true },
  //       { "mainnet", false },
  //       { "name", "Testnet Liquid (Electrum)" },
  //       { "network", "electrum-testnet-liquid" },
  //       { "p2pkh_version", 57u },
  //       { "p2sh_version", 39u },
  //       { "policy_asset", "2e16b12daf1244332a438e829ca7ce209195f8e1c54199770cd8b327710a8ab2" },
  //       { "server_type", "electrum" },
  //       { "service_chain_code", std::string() },
  //       { "service_pubkey", std::string() },
  //       { "spv_multi", false },
  //       { "spv_servers", nlohmann::json::array() },
  //       { "spv_enabled", false },
  //       { "tx_explorer_url", "https://blockstream.info/liquidtestnet/tx/" },
  //       { "wamp_cert_pins", nlohmann::json::array() },
  //       { "wamp_cert_roots", nlohmann::json::array() },
  //       { "wamp_onion_url", std::string() },
  //       { "wamp_url", std::string() }
  //   })));

  @override
  Future<bool> connect({
    GdkConnectionParams? params,
  }) async {
    final env = await ref.read(envSwitchProvider).getEnv();
    liquidNetworkFactory = LiquidNetworkFactory.fromEnv(env);

    if (liquidNetworkFactory?.networkData != null) {
      final networkRegistered =
          await super.registerNetwork(liquidNetworkFactory!.networkData!);

      if (!networkRegistered) {
        logger.e(
            '[$runtimeType] Registering network ${liquidNetworkFactory?.networkName} failed!');
        return false;
      }
    }

    if (liquidNetworkFactory?.params != null) {
      return super.connect(params: liquidNetworkFactory!.params);
    }

    logger.e(
        '[$runtimeType] Unable connect to network: ${liquidNetworkFactory?.networkName}');
    return false;
  }

  Future<void> onBackendError(dynamic error) async {
    logger.e('[$runtimeType] Liquid provider error: $error');
  }

  Future<bool> init() async {
    logger.d('[$runtimeType] Initializing liquid backend');
    await initBackend(
      _createGdkBackend,
      backendType: NetworkBackend,
      uniqueId: 'LiquidBackend',
      errorHandler: onBackendError,
    );

    final result = await runBackendMethod<Object, bool>(GdkBackendEvent.init);

    if (!result) {
      throw InitializeNetworkFrontendException();
    }

    logger.d('[$runtimeType] Liquid backend initialized: $result');

    return result;
  }

  String get usdtId {
    final networkType = liquidNetworkFactory?.networkType;
    return networkType == LiquidNetworkEnumType.mainnet
        ? 'ce091c998b83c78bb71a632313ba3760f1763d9cfcffae02258ffa9865a37bd2'
        : networkType == LiquidNetworkEnumType.testnet
            ? 'b612eb46313a2cd6ebabd8b7a8eed5696e29898b87a43bff41c94f51acef9d73'
            : 'a0682b2b1493596f93cea5f4582df6a900b5e1a491d5ac39dea4bb39d0a45bbf';
  }

  String get lbtc {
    return allRawAssets![policyAsset]?.assetId ?? '';
  }

  List<String> get highlightedAssets {
    final networkType = liquidNetworkFactory?.networkType;
    return networkType == LiquidNetworkEnumType.mainnet
        ? <String>[
            'b00b0ff0b11ebd47f7c6f57614c046dbbd204e84bf01178baf2be3713a206eb7',
            '6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d',
            '0e99c1a6da379d1f4151fb9df90449d40d0608f6cb33a5bcbfc8c265f42bab0a',
            'd9f6bb516c9f3ab16bed3f3662ae018573ee6b00130f2347a4b735d8e7c4c396',
            'ce091c998b83c78bb71a632313ba3760f1763d9cfcffae02258ffa9865a37bd2',
            '18729918ab4bca843656f08d4dd877bed6641fbd596a0a963abbf199cfeb3cec',
          ]
        : networkType == LiquidNetworkEnumType.testnet
            ? <String>[
                '144c654344aa716d6f3abcc1ca90e5641e4e2a7f633bc09fe3baf64585819a49',
                'ac3e0ff248c5051ffd61e00155b7122e5ebc04fd397a0ecbdd4f4e4a56232926',
                'f3d1ec678811398cd2ae277cbe3849c6f6dbd72c74bc542f7c4b11ff0e820958',
                '58af36e1b529b42f3e4ccce812924380058cae18b2ad26c89805813a9db25980',
              ]
            : <String>[
                '6d15498e26ec311dc6e9962dd05f6e7024c7fe4989cc09d426822ea540f048a2',
                '2e16b12daf1244332a438e829ca7ce209195f8e1c54199770cd8b327710a8ab2',
                'ce101d9d3edce2d185b9ab961888bb94c7f991bec253eee75b7ebe1530de4a0a',
                'a0682b2b1493596f93cea5f4582df6a900b5e1a491d5ac39dea4bb39d0a45bbf',
              ];
  }

  @override
  Future<int> minFeeRate() async {
    return 100;
  }
}

void _createGdkBackend(BackendArgument<void> argument) {
  NetworkBackend(argument, LiquidNetwork());
}
