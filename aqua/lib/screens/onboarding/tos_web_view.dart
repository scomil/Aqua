import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:aqua/data/provider/webview_provider.dart';

class TosWebView extends StatelessWidget {
  const TosWebView({Key? key, this.displayBottomPadding = true})
      : super(key: key);

  final bool displayBottomPadding;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        final loadingTos = watch(loadingTosProvider);
        return Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: InAppWebView(
                    initialUrlRequest: URLRequest(
                      url: Uri.parse("https://blockstream.com/aqua/terms/"),
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
                              "window.document.getElementsByClassName('header header_contact')[0].remove();");
                      await controller.evaluateJavascript(
                          source:
                              "window.document.getElementsByTagName('footer')[0].remove();");

                      context.read(webViewProvider).loadingTosDone();
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
                if (displayBottomPadding) ...[
                  Container(
                    height: 143.h,
                  ),
                ],
              ],
            ),
            Visibility(
              visible: loadingTos,
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
    );
  }
}
