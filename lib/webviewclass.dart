import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewClass extends StatefulWidget {
  const WebViewClass({super.key});

  @override
  State<WebViewClass> createState() => _WebViewClassState();
}

class _WebViewClassState extends State<WebViewClass> {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(NavigationDelegate(onPageStarted: (url) {
      print("$url is loading");
    }))
    ..loadRequest(Uri.parse('https://sportybet.com'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WEB VIEW Bar"),
          centerTitle: true,
        ),
        body: WebViewWidget(
          controller: controller,
        ));
  }
}
