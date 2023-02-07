import 'dart:async';
import 'dart:convert';

import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/sideswap.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/asset_icons_cache_provider.dart';
import 'package:aqua/data/provider/env_switch_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/swap/sideswap_http_provider.dart';
import 'package:aqua/data/provider/swap/sideswap_prompt_arguments.dart';
import 'package:aqua/data/provider/swap/sideswap_prompt_data_model.dart';
import 'package:aqua/data/provider/swap/swap_prompt_item_ui_model.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

const sideswapWssAddressLive = 'wss://api.sideswap.io/json-rpc-ws';
const sideswapWssAddressTestnet = 'wss://api-testnet.sideswap.io/json-rpc-ws';
const sideswapWssAddressRegtest = 'wss://api-regtest.sideswap.io/json-rpc-ws';

String getSideswapWssAddress(int env) {
  switch (env) {
    case 0:
      return sideswapWssAddressLive;
    case 1:
      return sideswapWssAddressRegtest;
    case 2:
      return sideswapWssAddressTestnet;
  }
  throw UnsupportedError('Unknown env');
}

/// Websocket *********************************************

final sideswapWebsocketProvider =
    Provider.autoDispose<SideswapWebsocketProvider>(
        (ref) => SideswapWebsocketProvider(ref));

class SideswapWebsocketProvider {
  final AutoDisposeProviderReference ref;

  SideswapWebsocketProvider(this.ref) {
    ref.onDispose(() {
      _channel.sink.close(status.goingAway);
    });

    connect();
  }

  late WebSocketChannel _channel;
  StreamSubscription<dynamic>? _channelSubscription;

  Future<void> _sendRequest(WebSocketChannel channel, int requestId,
      String method, Map<String, dynamic>? params) async {
    logger.d('[Sideswap] Requesting $method: $params');

    channel.sink.add(
      jsonEncode(
        {
          'id': requestId,
          'method': method,
          'params': params,
        },
      ),
    );
  }

  Future<void> getServerStatus() async {
    await _sendRequest(_channel, 1, serverStatus, null);
  }

  Future<void> getAssets() async {
    await _sendRequest(_channel, 1, assets,
        const AssetsRequest(embeddedIcons: false).toJson());
  }

  Future<void> subscribeAsset(
      SubscribePriceStreamRequest subscribePriceStreamRequest) async {
    logger.d('[Sideswap] requesting: $subscribePriceStreamRequest');
    ref.read(sideswapWebsocketSubscribedAssetIdStateProvider.notifier).state =
        subscribePriceStreamRequest.asset ?? '';

    await _sendRequest(_channel, 1, subscribePriceStream,
        subscribePriceStreamRequest.toJson());
  }

  Future<void> sendSwap(PriceStreamResult priceStreamResult) async {
    ref.read(swapLoadingIndicatorStateProvider.notifier).state =
        const SwapProgressState.waiting();

    final request = SwapStartWebRequest(
      asset: priceStreamResult.asset,
      price: priceStreamResult.price,
      sendBitcoins: priceStreamResult.sendBitcoins,
      sendAmount: priceStreamResult.sendAmount,
      recvAmount: priceStreamResult.recvAmount,
    );

    await _sendRequest(_channel, 1, startSwapWeb, request.toJson());
  }

  Future<void> connect() async {
    final env = await ref.read(envSwitchProvider).getEnv();
    final sideswapServerAddr = getSideswapWssAddress(env);
    _channel = WebSocketChannel.connect(Uri.parse(sideswapServerAddr));

    await getServerStatus();
    await getAssets();

    /// Listen for all incoming data
    if (_channelSubscription != null) {
      _channelSubscription!.cancel();
    }

    ref.read(sideswapWebsocketSubscribedAssetIdStateProvider.notifier).state =
        '';

    _channelSubscription = _channel.stream.listen(
      _onData,
      onError: _onError,
      onDone: _onDone,
    );
  }

  void _onData(dynamic data) {
    final json = jsonDecode(data as String) as Map<String, dynamic>;
    logger.d('[Sideswap] websocket reply: $json');

    if (json.containsKey('error')) {
      final error = Error.fromJson(json);
      logger.e('[Sideswap] $error');
      ref.read(swapLoadingIndicatorStateProvider.notifier).state =
          const SwapProgressState.empty();
      if (error.error?.message != null) {
        ref.read(swapNetworkErrorStateProvider.notifier).state =
            SwapNetworkErrorState.error(message: error.error?.message);
      }
      return;
    }

    if (json.containsKey('method')) {
      final method = json['method'] as String;

      switch (method) {
        case serverStatus:
          final serverStatusResponse = ServerStatusResponse.fromJson(json);
          logger.d('[Sideswap] priceBand: $serverStatusResponse');
          break;
        case assets:
          final assetsResponse = AssetsResponse.fromJson(json);
          if (assetsResponse.result?.assets != null) {
            ref.read(sideswapAssetsStatePovider.notifier).state =
                assetsResponse.result?.assets ?? [];
          }
          break;
        case subscribePriceStream:
          final response = SubscribePriceStreamResponse.fromJson(json);
          if (response.result != null) {
            ref.read(sideswapPriceStreamResultStateProvider.notifier).state =
                response.result;
          }
          break;
        case notificationUpdatePriceStream:
          final response = UpdatePriceStreamResponse.fromJson(json);
          ref.read(sideswapPriceStreamResultStateProvider.notifier).state =
              response.params;
          break;
        case startSwapWeb:
          final response = SwapStartWebResponse.fromJson(json);
          ref.read(sideswapHttpProvider).setProcessSwapStart(response);
          break;
        case swapDone:
          final response = SwapDoneResponse.fromJson(json);
          final recvAsset = response.params?.recvAsset;
          final txid = response.params?.txid;
          if (recvAsset != null &&
              txid != null &&
              response.params?.status == SwapDoneStatusEnum.success) {
          } else {
            // TODO Handle error
            logger.e('[Sideswap] Error: $json');
          }
          break;
        default:
          logger.w('[Sideswap] unexpected response: $method');
          logger.w('[Sideswap] ${json['result']}');
      }
    }
  }

  void _onError(dynamic error) {
    logger.e('[Sideswap] Error: $error');
  }

  void _onDone() {
    logger.d('[Sideswap] Done');
    ref.read(sideswapWebsocketSubscribedAssetIdStateProvider.notifier).state =
        '';
    ref.read(swapLoadingIndicatorStateProvider.notifier).state =
        const SwapProgressState.empty();
  }
}

final swapLoadingIndicatorStateProvider =
    StateProvider.autoDispose<SwapProgressState>((ref) {
  final sideswapAssets = ref.watch(sideswapAssetsProvider);
  if (sideswapAssets.isEmpty) {
    return const SwapProgressState.connecting();
  }

  return const SwapProgressState.empty();
});

final swapNetworkErrorStateProvider =
    StateProvider.autoDispose<SwapNetworkErrorState>(
        (ref) => const SwapNetworkErrorState.empty());

final _walletAssetsStreamProvider =
    StreamProvider.autoDispose<List<Asset>>((ref) async* {
  yield* ref.watch(aquaProvider).walletAssets();
});

final _allAssetsFutureProvider =
    FutureProvider.autoDispose<List<Asset>>((ref) async {
  return ref.watch(aquaProvider).allAssets();
});

final sideswapAssetsStatePovider =
    StateProvider.autoDispose<List<SideSwapAsset>>((ref) => <SideSwapAsset>[]);

final sideswapAssetsProvider = Provider.autoDispose<List<Asset>>((ref) {
  final sideswapAssets = ref.watch(sideswapAssetsStatePovider).state;
  ref.watch(_walletAssetsStreamProvider);
  final allAssets = ref.watch(_allAssetsFutureProvider);
  return allAssets.maybeWhen(data: (value) {
    final assets = <Asset>[];
    for (var sideswapAsset in sideswapAssets) {
      final findAssets = value.where((e) {
        return e.assetId == sideswapAsset.assetId;
      });

      assets.addAll(findAssets);
    }

    return assets;
  }, orElse: () {
    return [];
  });
});

final sideswapAssetsPairProvider =
    Provider.autoDispose<SideswapAssetsPairProvider>((ref) {
  ref.watch(sideswapAssetsProvider);

  return SideswapAssetsPairProvider(ref);
});

class SideswapAssetsPairProvider {
  final AutoDisposeProviderReference ref;

  SideswapAssetsPairProvider(this.ref);

  void swapAssets() {
    final deliverAsset = ref.read(sideswapReceiveAssetStateProvider).state;
    final receiveAsset = ref.read(sideswapDeliverAssetStateProvider).state;

    ref.read(sideswapDeliverAssetStateProvider.notifier).state = deliverAsset;
    ref.read(sideswapReceiveAssetStateProvider.notifier).state = receiveAsset;
  }

  void setDeliverAsset(Asset? asset) {
    if (asset == null) {
      return;
    }

    final receiveAsset = ref.read(sideswapReceiveAssetStateProvider).state;
    if (receiveAsset?.assetId == asset.assetId) {
      ref.read(sideswapAssetsPairProvider).swapAssets();
      return;
    }

    final sideswapAssets = ref.read(sideswapAssetsProvider);
    if (sideswapAssets.isEmpty) {
      return;
    }

    if (asset.isLBTC && receiveAsset?.isLBTC == true) {
      final newReceiveAsset = sideswapAssets.firstWhere((e) => !e.isLBTC);
      ref.read(sideswapReceiveAssetStateProvider.notifier).state =
          newReceiveAsset;
    }

    if (!asset.isLBTC && receiveAsset?.isLBTC != true) {
      final newReceiveAsset = sideswapAssets.firstWhere((e) => e.isLBTC);
      ref.read(sideswapReceiveAssetStateProvider.notifier).state =
          newReceiveAsset;
    }

    ref.read(sideswapDeliverAssetStateProvider.notifier).state = asset;
  }

  void setReceiveAsset(Asset? asset) {
    if (asset == null) {
      return;
    }

    final deliverAsset = ref.read(sideswapDeliverAssetStateProvider).state;
    if (deliverAsset?.assetId == asset.assetId) {
      ref.read(sideswapAssetsPairProvider).swapAssets();
      return;
    }

    final sideswapAssets = ref.read(sideswapAssetsProvider);
    if (sideswapAssets.isEmpty) {
      return;
    }

    if (asset.isLBTC && deliverAsset?.isLBTC == true) {
      final newDeliverAsset = sideswapAssets.firstWhere((e) => !e.isLBTC);
      ref.read(sideswapDeliverAssetStateProvider.notifier).state =
          newDeliverAsset;
    }

    if (!asset.isLBTC && deliverAsset?.isLBTC != true) {
      final newDeliverAsset = sideswapAssets.firstWhere((e) => e.isLBTC);
      ref.read(sideswapDeliverAssetStateProvider.notifier).state =
          newDeliverAsset;
    }

    ref.read(sideswapReceiveAssetStateProvider.notifier).state = asset;
  }

  void setPercentAmount(int percent) {
    final amountSideState = ref.watch(swapAmountSideStateProvider).state;

    if (amountSideState is SwapAmountSideStateDeliver) {
      final deliverAsset = ref.read(sideswapDeliverAssetStateProvider).state;

      if (deliverAsset == null) {
        return;
      }

      final percentAmount =
          deliverAsset.copyWith(amount: deliverAsset.amount * percent ~/ 100);
      final newDeliverAmount = ref
          .read(formatterProvider)
          .formatAssetAmountDirect(
              amount: percentAmount.amount, precision: percentAmount.precision);
      ref.read(swapDeliverAmountStateProvider.notifier).state =
          newDeliverAmount;
      return;
    }

    final receiveAsset = ref.read(sideswapReceiveAssetStateProvider).state;

    if (receiveAsset == null) {
      return;
    }

    final percentAmount =
        receiveAsset.copyWith(amount: receiveAsset.amount * percent ~/ 100);
    final newReceiveAmount = ref
        .read(formatterProvider)
        .formatAssetAmountDirect(
            amount: percentAmount.amount, precision: percentAmount.precision);
    ref.read(swapReceiveAmountStateProvider.notifier).state = newReceiveAmount;
  }
}

final sideswapPriceStreamResultStateProvider =
    StateProvider.autoDispose<PriceStreamResult?>((ref) => null);

final sideswapWebsocketSubscribedAssetIdStateProvider =
    StateProvider.autoDispose<String>((ref) => '');

final sideswapDeliverAssetStateProvider =
    StateProvider.autoDispose<Asset?>((ref) => null);

final _formatAssetAmountFromAssetFutureProvider =
    FutureProvider.autoDispose.family<String, Asset>((ref, asset) {
  return ref.watch(formatterProvider).formatAssetAmountFromAsset(asset: asset);
});

final _formatAssetAmountFromAssetProvider =
    Provider.autoDispose.family<String, Asset>((ref, asset) {
  final format = ref.watch(_formatAssetAmountFromAssetFutureProvider(asset));
  return format.maybeWhen(data: (value) {
    return value;
  }, orElse: () {
    return '';
  });
});

final sideswapDeliverBalanceProvider = Provider.autoDispose<String>((ref) {
  final deliverAsset = ref.watch(sideswapDeliverAssetStateProvider).state;
  if (deliverAsset == null) {
    return '';
  }

  return ref.watch(_formatAssetAmountFromAssetProvider(deliverAsset));
});

final sideswapReceiveAssetStateProvider =
    StateProvider.autoDispose<Asset?>((ref) => null);

final sideswapReceiveBalanceProvider = Provider.autoDispose<String>((ref) {
  final receiveAsset = ref.watch(sideswapReceiveAssetStateProvider).state;
  if (receiveAsset == null) {
    return '';
  }

  return ref.watch(_formatAssetAmountFromAssetProvider(receiveAsset));
});

final swapDeliverErrorDescriptionProvider = Provider.autoDispose<String>((ref) {
  final priceStream = ref.watch(sideswapPriceStreamResultStateProvider).state;

  if (priceStream == null) {
    return '';
  }

  if (priceStream.sendAmount != null && priceStream.errorMsg != null) {
    return priceStream.errorMsg!;
  }

  return '';
});

final swapReceiveErrorDescriptionProvider = Provider.autoDispose<String>((ref) {
  final priceStream = ref.watch(sideswapPriceStreamResultStateProvider).state;

  if (priceStream == null) {
    return '';
  }

  if (priceStream.recvAmount != null && priceStream.errorMsg != null) {
    return priceStream.errorMsg!;
  }

  return '';
});

final swapDeliverAndReceiveWatcherProvider =
    Provider.autoDispose<SubscribePriceStreamRequest?>((ref) {
  final deliverAsset = ref.watch(sideswapDeliverAssetStateProvider).state;
  final receiveAsset = ref.watch(sideswapReceiveAssetStateProvider).state;
  final deliverSatoshi = ref.watch(swapDeliverSatoshiAmountProvider);
  final receiveSatoshi = ref.watch(swapReceiveSatoshiAmountProvider);
  final amountSideState = ref.watch(swapAmountSideStateProvider).state;

  final sendAmount = (amountSideState == const SwapAmountSideState.deliver())
      ? (deliverSatoshi <= 0)
          ? null
          : deliverSatoshi
      : null;
  final recvAmount = (amountSideState == const SwapAmountSideState.receive())
      ? (receiveSatoshi <= 0)
          ? null
          : receiveSatoshi
      : null;
  final sendBitcoins = deliverAsset?.isLBTC == true;
  final asset = sendBitcoins ? receiveAsset : deliverAsset;

  return SubscribePriceStreamRequest(
    asset: asset?.assetId ?? '',
    sendBitcoins: sendBitcoins,
    sendAmount: sendAmount,
    recvAmount: recvAmount,
  );
});

final sideswapConversionRateAmountProvider =
    Provider.autoDispose<String?>((ref) {
  final allAssets = ref.watch(_allAssetsFutureProvider);
  final bestOffer = ref.watch(sideswapPriceStreamResultStateProvider).state;

  if (bestOffer == null) {
    return null;
  }

  final subscribedAssetId =
      ref.watch(sideswapWebsocketSubscribedAssetIdStateProvider).state;

  return allAssets.maybeWhen(data: (assets) {
    if (assets.any((e) => e.assetId == subscribedAssetId)) {
      final asset = assets.firstWhere((e) => e.assetId == subscribedAssetId);

      if (!(bestOffer.price == null || subscribedAssetId.isEmpty)) {
        final d = bestOffer.price!.toStringAsPrecision(7);
        return '1 L-BTC = $d ${asset.ticker}';
      }
    }

    return null;
  }, orElse: () {
    return null;
  });
});

final swapDeliverAmountStateProvider =
    StateProvider.autoDispose<String>((ref) => '');

final swapDeliverSatoshiAmountProvider = Provider.autoDispose<int>((ref) {
  final deliverAmount = ref.watch(swapDeliverAmountStateProvider).state;
  final deliverAsset = ref.watch(sideswapDeliverAssetStateProvider).state;

  var amount = '0';
  if (deliverAmount.isNotEmpty) {
    amount = deliverAmount;
  }

  if (deliverAsset == null) {
    return 0;
  }

  return ref.watch(formatterProvider).parseAssetAmountDirect(
      amount: amount, precision: deliverAsset.precision);
});

final swapReceiveAmountStateProvider =
    StateProvider.autoDispose<String>((ref) => '');

final swapReceiveSatoshiAmountProvider = Provider.autoDispose<int>((ref) {
  final receiveAmount = ref.watch(swapReceiveAmountStateProvider).state;
  final receiveAsset = ref.watch(sideswapReceiveAssetStateProvider).state;

  var amount = '0';
  if (receiveAmount.isNotEmpty) {
    amount = receiveAmount;
  }

  if (receiveAsset == null) {
    return 0;
  }

  return ref.watch(formatterProvider).parseAssetAmountDirect(
      amount: amount, precision: receiveAsset.precision);
});

final swapAmountSideStateProvider =
    StateProvider.autoDispose<SwapAmountSideState>(
        (ref) => const SwapAmountSideState.deliver());

final swapIncomingDeliverAmountProvider = Provider.autoDispose<String>((ref) {
  final priceStream = ref.watch(sideswapPriceStreamResultStateProvider).state;
  final deliverAsset = ref.watch(sideswapDeliverAssetStateProvider).state;
  final receiveAsset = ref.watch(sideswapReceiveAssetStateProvider).state;
  final deliverAmount = ref.watch(swapDeliverAmountStateProvider).state;

  if (deliverAsset == null || receiveAsset == null || priceStream == null) {
    return deliverAmount;
  }

  if (priceStream.sendAmount != null) {
    return ref.watch(formatterProvider).formatAssetAmountDirect(
        amount: priceStream.sendAmount ?? 0, precision: deliverAsset.precision);
  }

  return deliverAmount;
});

final swapIncomingDeliverSatoshiAmountProvider =
    Provider.autoDispose<int>((ref) {
  final deliverAsset = ref.watch(sideswapDeliverAssetStateProvider).state;
  final deliverIncomingAmount = ref.watch(swapIncomingDeliverAmountProvider);

  if (deliverAsset == null || deliverIncomingAmount.isEmpty) {
    return 0;
  }

  return ref.watch(formatterProvider).parseAssetAmountDirect(
      amount: deliverIncomingAmount, precision: deliverAsset.precision);
});

final swapIncomingReceiveAmountProvider = Provider.autoDispose<String>((ref) {
  final priceStream = ref.watch(sideswapPriceStreamResultStateProvider).state;
  final deliverAsset = ref.watch(sideswapDeliverAssetStateProvider).state;
  final receiveAsset = ref.watch(sideswapReceiveAssetStateProvider).state;
  final receiveAmount = ref.watch(swapReceiveAmountStateProvider).state;

  if (deliverAsset == null || receiveAsset == null || priceStream == null) {
    return receiveAmount;
  }

  if (priceStream.recvAmount != null) {
    return ref.watch(formatterProvider).formatAssetAmountDirect(
        amount: priceStream.recvAmount ?? 0, precision: receiveAsset.precision);
  }

  return receiveAmount;
});

final swapIncomingReceiveSatoshiAmountProvider =
    Provider.autoDispose<int>((ref) {
  final receiveAsset = ref.watch(sideswapReceiveAssetStateProvider).state;
  final receiveIncomingAmount = ref.watch(swapIncomingReceiveAmountProvider);

  if (receiveAsset == null || receiveIncomingAmount.isEmpty) {
    return 0;
  }

  return ref.watch(formatterProvider).parseAssetAmountDirect(
      amount: receiveIncomingAmount, precision: receiveAsset.precision);
});

final swapDeliverInsufficientFundsProvider = Provider.autoDispose<bool>((ref) {
  final deliverSatoshi = ref.watch(swapDeliverSatoshiAmountProvider);
  final deliverIncomingSatoshi =
      ref.watch(swapIncomingDeliverSatoshiAmountProvider);
  final deliverAsset = ref.watch(sideswapDeliverAssetStateProvider).state;
  ref.watch(swapDeliverAmountStateProvider);

  if (deliverAsset == null) {
    return false;
  }

  if (deliverAsset.amount < deliverSatoshi ||
      deliverAsset.amount < deliverIncomingSatoshi) {
    return true;
  }

  return false;
});

final swapDeliverAssetPickerErrorProvider = Provider.autoDispose<bool>((ref) {
  final balanceError = ref.watch(swapDeliverInsufficientFundsProvider);
  final errorDescr = ref.watch(swapDeliverErrorDescriptionProvider);

  if (errorDescr.isNotEmpty || balanceError) {
    return true;
  }

  return false;
});

final swapReceiveAssetPickerErrorProvider = Provider.autoDispose<bool>((ref) {
  final errorDescr = ref.watch(swapReceiveErrorDescriptionProvider);
  final amountSideState = ref.watch(swapAmountSideStateProvider).state;

  if (amountSideState == const SwapAmountSideStateReceive()) {
    if (errorDescr.isNotEmpty) {
      return true;
    }
  }

  return false;
});

final swapButtonEnabledProvider = Provider.autoDispose<bool>((ref) {
  final deliverInsufficientFunds =
      ref.watch(swapDeliverInsufficientFundsProvider);
  final deliverPickerError = ref.watch(swapDeliverAssetPickerErrorProvider);
  final receivePickerError = ref.watch(swapReceiveAssetPickerErrorProvider);
  final deliverIncomingSatoshi =
      ref.watch(swapIncomingDeliverSatoshiAmountProvider);
  final receiveIncomingSatoshi =
      ref.watch(swapIncomingReceiveSatoshiAmountProvider);

  if (deliverInsufficientFunds ||
      deliverPickerError ||
      deliverIncomingSatoshi == 0 ||
      receiveIncomingSatoshi == 0 ||
      receivePickerError) {
    return false;
  }

  return true;
});

final isTutorialVisibleStateProvider =
    StateProvider.autoDispose<bool>((ref) => false);

final swapPromptProvider = Provider.family
    .autoDispose<SwapPromptProvider, Object?>(
        (ref, arguments) => SwapPromptProvider(ref, arguments));

class SwapPromptProvider {
  SwapPromptProvider(this._ref, this._arguments);

  final AutoDisposeProviderReference _ref;
  final Object? _arguments;

  late final Stream<AsyncValue<SideSwapPromptDataModel>> _dataStream =
      Stream.value(_arguments)
          .map((arguments) {
            try {
              return arguments as SideSwapPromptArguments;
            } catch (_) {
              throw SwapPromptProviderInvalidArgumentsException();
            }
          })
          .asyncMap((arguments) async {
            final sendAsset = await _ref
                .read(aquaProvider)
                .liquidAssetById(arguments.sendAsset);
            if (sendAsset == null) {
              throw ArgumentError();
            }
            final sendAmount = arguments.sendAmount;
            final recvAsset = await _ref
                .read(aquaProvider)
                .liquidAssetById(arguments.recvAsset);
            if (recvAsset == null) {
              throw ArgumentError();
            }
            final recvAmount = arguments.recvAmount;
            return SideSwapPromptDataModel(
              sendAsset: sendAsset,
              sendAmount: sendAmount,
              recvAsset: recvAsset,
              recvAmount: recvAmount,
            );
          })
          .map((data) => AsyncValue.data(data))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace))
          .shareReplay(maxSize: 1);

  Stream<SwapPromptItemUiModel> _itemUiModel(BuildContext context) =>
      _dataStream.switchMap((value) => value.when(
            data: (data) => Stream.value(data)
                .asyncMap<SwapPromptItemUiModel>((data) async {
                  final sendAsset = data.sendAsset;
                  final sendAmount =
                      await _ref.read(formatterProvider).formatAssetAmount(
                            amount: data.sendAmount,
                            precision: sendAsset.precision,
                          );
                  final sendTicker = sendAsset.ticker;
                  final sendIcon = await _ref
                      .read(assetIconsCacheProvider)
                      .getImageDataForAssetId(sendAsset.assetId);
                  final recvAsset = data.recvAsset;
                  final recvAmount =
                      await _ref.read(formatterProvider).formatAssetAmount(
                            amount: data.recvAmount,
                            precision: recvAsset.precision,
                          );
                  final recvTicker = recvAsset.ticker;
                  final recvIcon = await _ref
                      .read(assetIconsCacheProvider)
                      .getImageDataForAssetId(recvAsset.assetId);
                  return SwapPromptItemUiModelData(
                    sendAmount: sendAmount,
                    sendTicker: sendTicker,
                    sendIcon: sendIcon,
                    recvAmount: recvAmount,
                    recvTicker: recvTicker,
                    recvIcon: recvIcon,
                  );
                })
                .startWith(const SwapPromptItemUiModelLoading())
                .onErrorReturnWith((_, __) => const SwapPromptItemUiModelError(
                      message: 'Bad arguments',
                    )),
            loading: () => Stream.value(const SwapPromptItemUiModelLoading()),
            error: (error, _) => Stream.value(const SwapPromptItemUiModelError(
              message: 'Bad arguments',
            )),
          ));
}

final _swapPromptUiModelStreamProvider = StreamProvider.family
    .autoDispose<SwapPromptItemUiModel?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref.watch(swapPromptProvider(arguments))._itemUiModel(context);
});

final swapPromptUiModelProvider = Provider.family
    .autoDispose<SwapPromptItemUiModel?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref.watch(_swapPromptUiModelStreamProvider(tuple)).data?.value;
});

class SwapPromptProviderInvalidArgumentsException implements Exception {}
