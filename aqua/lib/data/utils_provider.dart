import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum NetworkStatus { undetermined, connected, disconnected }

class NetworkStatusNotifier extends StateNotifier<NetworkStatus> {
  final _connectivity = Connectivity();

  late NetworkStatus lastResult;

  NetworkStatusNotifier() : super(NetworkStatus.undetermined) {
    lastResult = NetworkStatus.undetermined;
    _connectivity.checkConnectivity().then((result) => onResult(result));
    _connectivity.onConnectivityChanged.listen((result) => onResult(result));
  }

  void onResult(ConnectivityResult result) {
    NetworkStatus newState;
    switch (result) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.bluetooth:
        newState = NetworkStatus.connected;
        break;
      case ConnectivityResult.none:
        newState = NetworkStatus.disconnected;
        break;
    }

    if (newState != state) {
      state = newState;
    }
  }
}

final networkStatusProvider =
    StateNotifierProvider.autoDispose<NetworkStatusNotifier, NetworkStatus>(
        (_) {
  return NetworkStatusNotifier();
});
