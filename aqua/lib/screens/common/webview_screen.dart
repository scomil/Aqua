import 'package:aqua/screens/exchange/sideshift/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';
import 'package:webview_flutter/webview_flutter.dart';

final _progressProvider = StateProvider.autoDispose<bool>((ref) => true);

class WebViewScreen extends StatelessWidget {
  static const routeName = '/webViewScreen';

  const WebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Tuple2<String, String>;
    final title = arguments.item1;
    final url = arguments.item2;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(title),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints.tightForFinite(),
            onPressed: () => Navigator.of(context).pop(),
          ),
          SizedBox(width: 16.w),
        ],
      ),
      body: Stack(children: [
        WebView(
          initialUrl: url,
          zoomEnabled: false,
          javascriptMode: JavascriptMode.unrestricted,
          backgroundColor: Theme.of(context).colorScheme.primary,
          onPageStarted: (_) => context.read(_progressProvider).state = false,
        ),
        Consumer(
          builder: (_, watch, __) => watch(_progressProvider).state
              ? const Center(child: ProgressBar())
              : const SizedBox.shrink(),
        )
      ]),
    );
  }
}
