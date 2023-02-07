import 'package:aqua/data/backend/network_session.dart';
import 'package:aqua/data/models/gdk_models.dart';

class BitcoinNetwork extends NetworkSession {
  BitcoinNetwork() : super() {
    networkName = 'Bitcoin';
  }

  @override
  Future<bool> connect({
    GdkConnectionParams? connectionParams = const GdkConnectionParams(
      name: 'electrum-testnet',
    ),
  }) async {
    return super.connect(connectionParams: connectionParams!);
  }
}
