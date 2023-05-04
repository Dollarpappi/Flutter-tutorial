import 'package:flutter/material.dart';
import 'package:regexpattern/regexpattern.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewpractical extends StatefulWidget {
  const WebViewpractical({super.key});

  @override
  State<WebViewpractical> createState() => _WebViewpracticalState();
}

class _WebViewpracticalState extends State<WebViewpractical> {
  TextEditingController searchCtrl = TextEditingController();
  bool isSearching = false;
  String? initialUrl; //stores the link we type in

  void onSearch(String searchLink) {
    // b  is a function i created manually
    setState(() {
      isSearching = true;
    });

    bool mainUrl = searchLink.isUrl(); ////
    if (mainUrl) {
      if (!searchLink.startsWith("http")) {
        searchLink = "https://$searchLink";
      }
      setState(() {
        initialUrl = searchLink;
      });
    } else {
      showSnackBar("Invalid Url");
      setState(() {
        isSearching = false;
      });
    }
  }

  showSnackBar(String content) {
    // made a function for the snack bar like an alert box
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(content)),
    );
  }

  late WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(NavigationDelegate(
      onPageStarted: (url) {
        setState(() {
          isSearching = true;
        });
      },
      onPageFinished: (url) {
        setState(() {
          isSearching = false;
        });
      },
    ))
    ..loadRequest(Uri.parse(initialUrl!));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 225, 224, 224),
        foregroundColor: const Color.fromARGB(255, 128, 125, 125),
        actions: [
          IconButton(
              onPressed: () {
                onSearch(searchCtrl.text);
              },
              icon: const Icon(Icons.search))
        ],
        title: Column(
          children: [
            TextFormField(
              controller: searchCtrl,
              keyboardType: TextInputType.url,
              decoration: const InputDecoration(
                hintText: "Enter Url ",
                border: InputBorder.none,
              ),
              onFieldSubmitted: (value) {
                onSearch(value);
              }, // it is used to show the thing u typed...
            ),
            Visibility(
              visible: isSearching,
              child: const LinearProgressIndicator(),
            )
          ],
        ),
      ),
      body: Container(
          child: initialUrl == null
              ? const Center(
                  child: Text(
                      "Welcome to Your Brower"), // circular pregress indicator
                )
              : WebViewWidget(controller: controller)),
    );
  }
}
