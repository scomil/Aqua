import 'dart:convert';

import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/models/sideswap.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/data/provider/swap/sideswap_http_state.dart';
import 'package:aqua/data/provider/swap/sideswap_prompt_arguments.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

final sideswapHttpProvider = Provider.autoDispose<SideswapHttpProvider>(
    (ref) => SideswapHttpProvider(ref));

class SideswapHttpProvider {
  final AutoDisposeProviderReference ref;

  SideswapHttpProvider(this.ref) {
    ref.onDispose(() {
      _processSwapStartSubject.close();
    });
  }

  final _processSwapStartSubject = PublishSubject<SwapStartWebResponse>();

  late final Stream<SideswapHttpState> _processSwapStartStream =
      _processSwapStartSubject.switchMap((response) {
    return Stream.value(null).asyncMap((_) async {
      if (response.result == null) {
        throw SideswapHttpProcessStartWrongData();
      }

      return _createPsetDetailsReply(response.result!);
    }).switchMap<SideswapHttpState>((createPsetDetailsReply) {
      return Stream.value(null).map((event) {
        return Uri.parse(response.result!.uploadUrl!);
      }).switchMap((url) {
        return Stream.value(null)
            .asyncMap((event) async => _httpStartWebParamsBody(
                createPsetDetailsReply, response.result!, url))
            .switchMap((responseBody) {
          if (responseBody.containsKey('error')) {
            final error = Error.fromJson(responseBody);
            if (error.error?.message != null) {
              return Stream.value(
                  SideswapHttpStateNetworkError(error.error!.message));
            }
          }

          return Stream.value(null)
              .asyncMap((_) async =>
                  _httpBodySign(responseBody, response.result!, url))
              .switchMap((signBody) {
            if (signBody.containsKey('error')) {
              final error = Error.fromJson(signBody);
              if (error.error?.message != null) {
                return Stream.value(
                    SideswapHttpStateNetworkError(error.error!.message));
              }
            }

            final result = signBody['result'] as Map<String, dynamic>;
            final txid = result['txid'] as String;
            final recvAsset = response.result!.recvAsset;

            return Stream.value(null)
                .asyncMap((_) async => ref.read(aquaProvider).allAssets())
                .map((allAssets) =>
                    allAssets.firstWhere((asset) => recvAsset == asset.assetId))
                .switchMap((asset) {
              return ref
                  .read(liquidProvider)
                  .transactionEventSubject
                  .asyncMap((_) async {
                return ref.read(liquidProvider).getTransactions();
              }).switchMap<SideswapHttpState>((transactions) {
                final index = transactions
                    ?.indexWhere((element) => txid == element.txhash);
                if (index == null || index < 0) {
                  return const Stream.empty();
                }
                return Stream.value(transactions?.firstWhere((transaction) {
                  return txid == transaction.txhash;
                })).switchMap((transaction) {
                  if (transaction == null) {
                    return const Stream.empty();
                  }
                  return Stream.value(
                      SideswapHttpStateSuccess(asset, transaction));
                });
              });
            });
          });
        });
      });
    }).onErrorResume((error, stackTrace) {
      if (error is SideswapHttpProcessStartWrongData) {
        return Stream.value(
            const SideswapHttpStateNetworkError('Wrong response data'));
      }
      if (error is SideswapHttpProcessStartNullCreateDetailsReply) {
        return Stream.value(
            const SideswapHttpStateNetworkError("Can't create pset"));
      }
      return Stream.value(SideswapHttpState.error(error, stackTrace));
    });
  }).shareReplay(maxSize: 1);

  Future<GdkCreatePsetDetailsReply> _createPsetDetailsReply(
      SwapStartWebResult result) async {
    return Stream.value(null).map((_) {
      return GdkCreatePsetDetails(
        sendAsset: result.sendAsset,
        sendAmount: result.sendAmount,
        recvAsset: result.recvAsset,
        recvAmount: result.recvAmount,
      );
    }).switchMap((createDetails) {
      return Stream.value(null)
          .asyncMap(
              (_) async => ref.read(liquidProvider).createPset(createDetails))
          .map((createDetailsReply) {
        if (createDetailsReply == null) {
          throw SideswapHttpProcessStartNullCreateDetailsReply();
        }
        return createDetailsReply;
      });
    }).first;
  }

  Future<Map<String, dynamic>> _httpStartWebParamsBody(
      GdkCreatePsetDetailsReply createDetailsReply,
      SwapStartWebResult result,
      Uri url) async {
    return Stream.value(null).map((_) {
      return HttpStartWebRequest(
        id: 1,
        method: 'swap_start',
        params: HttpStartWebParams(
          orderId: result.orderId,
          inputs: createDetailsReply.inputs,
          recvAddr: createDetailsReply.recvAddr,
          changeAddr: createDetailsReply.changeAddr,
          sendAsset: result.sendAsset,
          sendAmount: result.sendAmount,
          recvAsset: result.recvAsset,
          recvAmount: result.recvAmount,
        ),
      );
    }).asyncMap((httpStartWebRequest) async {
      return http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: httpStartWebRequest.toJsonString(),
      );
    }).map((httpResponse) {
      return jsonDecode(httpResponse.body) as Map<String, dynamic>;
    }).first;
  }

  Future<Map<String, dynamic>> _httpBodySign(Map<String, dynamic> responseBody,
      SwapStartWebResult result, Uri url) async {
    return Stream.value(null).asyncMap((_) async {
      final bodyResult = responseBody["result"] as Map<String, dynamic>;
      final pset = bodyResult["pset"] as String;

      final signDetails = GdkSignPsetDetails(
          pset: pset,
          sendAsset: result.sendAsset,
          sendAmount: result.sendAmount,
          recvAsset: result.recvAsset,
          recvAmount: result.recvAmount);

      return ref.read(liquidProvider).signPset(signDetails);
    }).asyncMap((signResult) async {
      final httpBodySign = HttpSwapSignRequest(
        id: 1,
        method: 'swap_sign',
        params: HttpSwapSignParams(
          orderId: result.orderId,
          pset: signResult!.pset,
          submitId: responseBody["result"]["submit_id"] as String,
        ),
      );

      return http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: httpBodySign.toJsonString(),
      );
    }).map((httpResponse) {
      return jsonDecode(httpResponse.body) as Map<String, dynamic>;
    }).first;
  }

  void setProcessSwapStart(SwapStartWebResponse response) {
    _processSwapStartSubject.add(response);
  }

  void swapStart(SideSwapPromptArguments arguments) async {
    final response = const SwapStartWebResponse().copyWith(
        result: const SwapStartWebResult().copyWith(
      orderId: arguments.orderId,
      recvAmount: arguments.recvAmount,
      recvAsset: arguments.recvAsset,
      sendAmount: arguments.sendAmount,
      sendAsset: arguments.sendAsset,
      uploadUrl: arguments.uploadUrl,
    ));

    setProcessSwapStart(response);
  }
}

final _processSwapStartStreamProvider =
    StreamProvider.autoDispose<SideswapHttpState>((ref) async* {
  yield* ref.watch(sideswapHttpProvider)._processSwapStartStream;
});

final processSwapStartProvider =
    Provider.autoDispose<SideswapHttpState?>((ref) {
  return ref.watch(_processSwapStartStreamProvider).data?.value;
});

class SideSwapProviderInvalidTransactionException implements Exception {}

class SideswapHttpProcessStartWrongData implements Exception {}

class SideswapHttpProcessStartNullCreateDetailsReply implements Exception {}

class SwapPromptProviderInvalidArgumentsException implements Exception {}
