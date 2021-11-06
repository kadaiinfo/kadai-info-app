import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage(this.url, {Key? key}) : super(key: key);

  final String url;

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController controller;
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

    return WillPopScope(
      onWillPop: () async {
        if (await controller.canGoBack()) {
          controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            WebView(
              initialUrl: widget.url,
              javascriptMode: JavascriptMode.unrestricted,
              gestureNavigationEnabled: true,
              onWebViewCreated: (controller) async {
                this.controller = controller;
              },
              navigationDelegate: (NavigationRequest request) {
                if (request.url.contains('mailto')) {
                  launch(request.url);
                  return NavigationDecision.prevent;
                } else {
                  return NavigationDecision.navigate;
                }
              },
              onPageFinished: onPageFinished,
            ),
            _LoadingIndicator(isFinished),
          ],
        ),
      ),
    );
  }

  /// [isFinished]を更新
  void onPageFinished(_) {
    setState(
      () {
        isFinished = true;
      },
    );
  }
}

/// インディケータ
class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator(this.isFinished, {Key? key}) : super(key: key);

  final bool isFinished;

  @override
  Widget build(BuildContext context) {
    if (isFinished) {
      return const SizedBox();
    }
    return const LoadingIndicator();
  }
}
