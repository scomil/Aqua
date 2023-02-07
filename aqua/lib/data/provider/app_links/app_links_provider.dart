import 'package:aqua/data/provider/app_links/app_link.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uni_links/uni_links.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

final appLinkProvider = Provider<AppLinkProvider>((_) => AppLinkProvider());

class AppLinkProvider {
  static const _linkHostApp = 'app.sideswap.io';
  static const _linkHostAqua = 'aqua.sideswap.io';
  static const _linkPath = '/swap/';
  static const _linkParameterOrderId = 'order_id';
  static const _linkParameterSendAsset = 'send_asset';
  static const _linkParameterRecvAsset = 'recv_asset';
  static const _linkParameterSendAmount = 'send_amount';
  static const _linkParameterRecvAmount = 'recv_amount';
  static const _linkParameterUploadUrl = 'upload_url';

  AppLinkProvider();

  Future<AppLink> parseAppLinkUri(Uri uri) async {
    try {
      if ((_linkHostApp == uri.host || _linkHostAqua == uri.host) &&
          _linkPath == uri.path) {
        final orderId = uri.queryParameters[_linkParameterOrderId];
        if (orderId == null || orderId.isEmpty) {
          throw ArgumentError();
        }
        final sendAsset = uri.queryParameters[_linkParameterSendAsset];
        if (sendAsset == null || sendAsset.isEmpty) {
          throw ArgumentError();
        }
        final recvAsset = uri.queryParameters[_linkParameterRecvAsset];
        if (recvAsset == null || recvAsset.isEmpty) {
          throw ArgumentError();
        }
        final sendAmount = uri.queryParameters[_linkParameterSendAmount];
        if (sendAmount == null || sendAmount.isEmpty) {
          throw ArgumentError();
        }
        final sendAmountValue = int.parse(sendAmount);
        final recvAmount = uri.queryParameters[_linkParameterRecvAmount];
        if (recvAmount == null || recvAmount.isEmpty) {
          throw ArgumentError();
        }
        final recvAmountValue = int.parse(recvAmount);
        final uploadUrl = uri.queryParameters[_linkParameterUploadUrl];
        if (uploadUrl == null || uploadUrl.isEmpty) {
          throw ArgumentError();
        }

        return SwapAppLink(
          orderId: orderId,
          sendAsset: sendAsset,
          sendAmount: sendAmountValue,
          recvAsset: recvAsset,
          recvAmount: recvAmountValue,
          uploadUrl: uploadUrl,
        );
      } else {
        throw ArgumentError();
      }
    } catch (_) {
      throw AppLinkProviderInvalidLinkException();
    }
  }

  late final Stream<AppLink> appLinkStream = Rx.merge([
    Stream.value(null).asyncMap((_) => getInitialLink()),
    linkStream,
  ])
      .switchMap((link) => Stream.value(link)
              .asyncMap((link) =>
                  link != null ? Uri.parse(link) : throw ArgumentError())
              .asyncMap((uri) => parseAppLinkUri(uri))
              .doOnError((_, __) {
            // TODO Notify remote logger about app link handling error.
            // In case of ui needs to render this error use AsyncValue<AppLink> to deliver error to UI
          }).onErrorResumeNext(const Stream.empty()))
      .shareReplay(maxSize: 1);
}

class AppLinkProviderInvalidLinkException implements Exception {}
