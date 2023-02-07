import 'package:aqua/data/backend/network_session.dart';
import 'package:aqua/data/models/gdk_models.dart';

class LiquidNetwork extends NetworkSession {
  LiquidNetwork() : super() {
    networkName = 'Liquid';
  }

  @override
  Future<bool> connect({
    GdkConnectionParams? connectionParams = const GdkConnectionParams(
      name: 'electrum-testnet-liquid',
    ),
  }) async {
    return super.connect(connectionParams: connectionParams!);
  }
}
