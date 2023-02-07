import 'package:aqua/data/provider/webview_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileLiquidScreen extends StatelessWidget {
  static const routeName = '/profileLiquidScreen';

  const ProfileLiquidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Consumer(
          builder: (context, watch, _) {
            final loadingLiquidPage = watch(loadingProfileLiquidProvider);
            return Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: InAppWebView(
                        initialUrlRequest: URLRequest(
                          url: Uri.parse(
                              "https://help.blockstream.com/hc/en-us/categories/900000056143-Liquid-Network"),
                        ),
                        initialOptions: InAppWebViewGroupOptions(
                          crossPlatform: InAppWebViewOptions(
                            useShouldOverrideUrlLoading: true,
                            mediaPlaybackRequiresUserGesture: false,
                          ),
                          android: AndroidInAppWebViewOptions(
                            useHybridComposition: true,
                          ),
                          ios: IOSInAppWebViewOptions(
                            allowsInlineMediaPlayback: true,
                          ),
                        ),
                        onWebViewCreated: (controller) async {},
                        onLoadStop: (controller, url) async {
                          await controller.evaluateJavascript(
                              source:
                                  "window.document.getElementsByClassName('header')[0].remove();");
                          await controller.evaluateJavascript(
                              source:
                                  "window.document.getElementsByClassName('container page-header-liquid-background')[0].remove();");
                          await controller.evaluateJavascript(
                              source:
                                  "window.document.getElementsByTagName('footer')[0].remove();");

                          context
                              .read(webViewProvider)
                              .loadingProfileLiquidDone();
                        },
                        shouldOverrideUrlLoading:
                            (controller, navigationAction) async {
                          final url = navigationAction.request.url.toString();
                          // open all urls in external browser
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                          return NavigationActionPolicy.CANCEL;
                        },
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: loadingLiquidPage,
                  child: Container(
                    color: Theme.of(context).colorScheme.surface,
                    child: Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(
                          Theme.of(context).colorScheme.secondaryVariant,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
