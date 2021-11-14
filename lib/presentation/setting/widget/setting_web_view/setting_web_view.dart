import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SettingWebView extends ConsumerWidget {
  const SettingWebView({Key? key, required this.url}) : super(key: key);

  final String url;

  static Future<void> get _check async {
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(toolbarHeight: 0),
        body: SafeArea(
            bottom: false,
            child: FutureBuilder(
                future: _check,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const LoadingIndicator();
                  } else {
                    return WebView(
                        initialUrl: url,
                        javascriptMode: JavascriptMode.unrestricted);
                  }
                })));
  }
}
