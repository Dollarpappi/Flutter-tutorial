import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Assignmentwebview extends StatefulWidget {
  const Assignmentwebview({super.key});

  @override
  State<Assignmentwebview> createState() => _AssignmentwebviewState();
}

class _AssignmentwebviewState extends State<Assignmentwebview> {
  WebViewController webViewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Color(0X0000000000000))
    ..setNavigationDelegate(NavigationDelegate(
      onPageStarted: (url) {
        print("$url is loading");
      },
      onPageFinished: (url) {
        print("$url is finised");
      },
    ))
    ..loadRequest(Uri.parse('https://amazon.com'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: webViewController),
    );
  }
}
