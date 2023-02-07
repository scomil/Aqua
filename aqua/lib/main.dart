import 'dart:io';
import 'package:aqua/app_main.dart';
import 'package:aqua/data/provider/assets_precache_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_icons_cache.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    WebView.platform = AndroidWebView();
  }

  final storage = await SideshiftAssetIconStorage.create();

  final container = ProviderContainer(overrides: [
    sideshiftAssetIconStorageProvider.overrideWithValue(storage),
  ]);
  await container.read(assetsPrecacheProvider).precache().first;
  await container.read(sideShiftScreenProvider).precacheAssetIcons().first;

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const AppMain(),
    ),
  );
}
