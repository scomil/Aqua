import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:isolate';

import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/backend/lib_gdk.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/ffi/generated_bindings.dart';
import 'package:async/async.dart';

class NetworkSession {
  Pointer<GA_session>? session;
  late Pointer<Void> context;

  final libGdk = LibGdk();
  final receivePort = ReceivePort();
  StreamSubscription<dynamic>? receivePortSubscription;

  late String networkName = '';

  bool isErrorResult(Result result) {
    if (result.isError) {
      final error = result.asError!.error;
      final stackTrace = result.asError!.stackTrace;
      logger.e(error);
      logger.e(stackTrace);

      return true;
    }

    return false;
  }

  Future<Result<GdkAuthHandlerStatus>> _resolveAuthHandlerStatus(
    GdkAuthHandlerStatus status,
  ) async {
    switch (status.status) {
      case GdkAuthHandlerStatusEnum.done:
        libGdk.cleanAuthHandler(status.authHandlerId);
        if (status.error != null && status.error!.isNotEmpty) {
          if (status.message != null) {
            logger.w('${status.error}: ${status.message}');
          }
        }
        break;
      case GdkAuthHandlerStatusEnum.error:
        libGdk.cleanAuthHandler(status.authHandlerId);
        break;
      case GdkAuthHandlerStatusEnum.requestCode:
        logger.w('Not implemented');
        break;
      case GdkAuthHandlerStatusEnum.resolveCode:
        logger.w('Not implemented');
        break;
      case GdkAuthHandlerStatusEnum.call:
        final gdkAuthHandlerStatus =
            await libGdk.authHandlerCall(status.authHandlerId);

        if (gdkAuthHandlerStatus.isError) {
          return Result.error(gdkAuthHandlerStatus.asError!.error,
              gdkAuthHandlerStatus.asError!.stackTrace);
        }

        return _resolveAuthHandlerStatus(
          gdkAuthHandlerStatus.asValue!.value,
        );
    }

    return Result.value(status);
  }

  Future<bool> init({required Future<void> Function(dynamic) callback}) async {
    if (receivePortSubscription != null) {
      await receivePortSubscription!.cancel();
    }

    receivePort.listen(callback);
    context = libGdk.initContext(receivePort.sendPort.nativePort);

    return true;
  }

  Future<bool> connect({
    required GdkConnectionParams connectionParams,
  }) async {
    final sessionResult = libGdk.createSession();
    if (isErrorResult(sessionResult)) {
      return false;
    }

    final result = await libGdk.connect(
      session: sessionResult.asValue!.value,
      connectionParams: connectionParams,
      context: context,
    );

    if (isErrorResult(result)) {
      libGdk.destroySession(session: sessionResult.asValue!.value);
      return false;
    }

    session = sessionResult.asValue!.value;

    return true;
  }

  Future<bool> disconnect() async {
    libGdk.destroySession(session: session!);

    session = null;

    return true;
  }

  Future<Result<GdkAuthHandlerStatus>> loginUser({
    GdkHwDevice? hwDevice,
    required GdkLoginCredentials credentials,
  }) async {
    var status = await libGdk.loginUser(
      session: session!,
      hwDevice: hwDevice,
      credentials: credentials,
    );

    if (isErrorResult(status)) {
      return status;
    }

    return _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<GdkAuthHandlerStatus>> registerUser({
    GdkHwDevice? hwDevice,
    required GdkLoginCredentials credentials,
  }) async {
    final status = await libGdk.registerUser(
      session: session!,
      hwDevice: hwDevice,
      credentials: credentials,
    );

    if (isErrorResult(status)) {
      return status;
    }

    return _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<GdkAuthHandlerStatus>> getTransactions({int first = 0}) async {
    final status = await libGdk.getTransactions(
      session: session!,
      details: GdkGetTransactionsDetails(first: first),
    );

    if (isErrorResult(status)) {
      return status;
    }

    return _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<Map<String, GdkAssetInformation>?>> refreshAssets({
    GdkAssetsParameters params = const GdkAssetsParameters(),
  }) async {
    final result =
        await libGdk.refreshAssets(session: session!, params: params);

    if (isErrorResult(result)) {
      return Result.value(null);
    }

    return Result.value(result.asValue!.value);
  }

  Future<Result<List<String>?>> generateMnemonic12() async {
    final result = await libGdk.generateMnemonic12();
    if (isErrorResult(result)) {
      return Result.value(null);
    }

    final mnemonic = result.asValue?.value;
    if (mnemonic == null) {
      return Result.value(null);
    }

    return Result.value(mnemonic.split(' '));
  }

  Future<bool> validateMnemonic(List<String> mnemonic) async {
    final result = await libGdk.validateMnemonic(mnemonic);

    if (isErrorResult(result)) {
      return false;
    }

    return result.asValue!.value;
  }

  Future<Result<GdkAuthHandlerStatus>> getBalance({
    required GdkGetBalance details,
  }) async {
    final status = await libGdk.getBalance(
      session: session!,
      details: details,
    );

    if (isErrorResult(status)) {
      return status;
    }

    return _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<GdkNetworks?>> getNetworks() async {
    final result = await libGdk.getNetworks();
    if (isErrorResult(result)) {
      return Result.value(null);
    }

    final networks = result.asValue!.value;
    final gdkNetworks =
        GdkNetworks.fromJson(jsonDecode(networks) as Map<String, dynamic>);
    return Result.value(gdkNetworks);
  }

  Future<Result<GdkAuthHandlerStatus>> getSubaccount(
      {required int subaccount}) async {
    final status =
        await libGdk.getSubaccount(session: session!, subaccount: subaccount);

    if (isErrorResult(status)) {
      return status;
    }

    return await _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<GdkAuthHandlerStatus>> getReceiveAddress(
      {required GdkReceiveAddressDetails details}) async {
    final status =
        await libGdk.getReceiveAddress(session: session!, details: details);

    if (isErrorResult(status)) {
      return status;
    }

    return _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<GdkAuthHandlerStatus>> getPreviousAddresses(
      {required GdkPreviousAddressesDetails details}) async {
    final status =
        await libGdk.getPreviousAddresses(session: session!, details: details);

    if (isErrorResult(status)) {
      return status;
    }

    return _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<GdkGetFeeEstimatesEvent?>> getFeeEstimates() async {
    final result = await libGdk.getFeeEstimates(session: session!);

    if (isErrorResult(result)) {
      return Result.value(null);
    }

    return Result.value(
        GdkGetFeeEstimatesEvent.fromJson(result.asValue!.value));
  }

  Future<Result<bool>> isValidAddress({required String address}) async {
    final status =
        await libGdk.isValidAddress(session: session!, address: address);

    if (isErrorResult(status)) {
      return Result.value(false);
    }

    final result = await _resolveAuthHandlerStatus(status.asValue!.value);
    final error = result.asValue?.value.error;
    if (error != null && error.isNotEmpty) {
      if (error == 'id_invalid_address') {
        return Result.value(false);
      } else if (error == 'id_unknown') {
        return Result.value(true);
      } else {
        if (isErrorResult(result)) {
          return Result.value(false);
        }
      }
    }

    return Result.value(true);
  }

  Future<Result<GdkAuthHandlerStatus>> createTransaction({
    required GdkNewTransaction transaction,
  }) async {
    final status = await libGdk.createTransaction(
        session: session!, transaction: transaction);

    if (isErrorResult(status)) {
      return status;
    }

    return await _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<GdkAuthHandlerStatus>> signTransaction({
    required GdkNewTransactionReply transactionReply,
  }) async {
    final status = await libGdk.signTransaction(
        session: session!, transactionReply: transactionReply);

    if (isErrorResult(status)) {
      return status;
    }

    return _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<GdkAuthHandlerStatus>> sendTransaction({
    required GdkNewTransactionReply transactionReply,
  }) async {
    final status = await libGdk.sendTransaction(
        session: session!, transactionReply: transactionReply);

    if (isErrorResult(status)) {
      return status;
    }

    return _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<GdkAuthHandlerStatus>> createPset({
    required GdkCreatePsetDetails details,
  }) async {
    final status = await libGdk.createPset(session: session!, details: details);

    if (isErrorResult(status)) {
      return status;
    }

    return await _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<GdkAuthHandlerStatus>> signPset({
    required GdkSignPsetDetails details,
  }) async {
    final status = await libGdk.signPset(session: session!, details: details);

    if (isErrorResult(status)) {
      return status;
    }

    return await _resolveAuthHandlerStatus(status.asValue!.value);
  }

  Future<Result<GdkAmountData?>> convertAmount({
    required GdkConvertData valueDetails,
  }) async {
    final result = await libGdk.convertAmount(
        session: session!, valueDetails: valueDetails);

    if (isErrorResult(result)) {
      return Result.value(null);
    }

    return Result.value(GdkAmountData.fromJson(result.asValue!.value));
  }

  Future<Result<bool>> registerNetwork({
    required GdkRegisterNetworkData networkData,
  }) async {
    final result = await libGdk.registerNetwork(
        name: networkData.name!, networkDetails: networkData.networkDetails!);

    if (isErrorResult(result)) {
      return Result.value(false);
    }

    return Result.value(true);
  }

  Future<Result<void>> setTransactionMemo(String txhash, String memo) {
    return libGdk.setTransactionMemo(
        session: session!, txhash: txhash, memo: memo);
  }
}
