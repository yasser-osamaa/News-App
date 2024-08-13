import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContainerUrl extends StatefulWidget {
  const ContainerUrl({super.key, required this.url});
  final String url;
  @override
  State<ContainerUrl> createState() => _ContainerUrlState();
}

class _ContainerUrlState extends State<ContainerUrl> {
  late WebViewController controller;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
        body: WebViewWidget(
          controller: controller,
        ),
      );
    } catch (e) {
      //print("Exception in WebView: $e");
      return const Center(child: Text("Failed to load WebView"));
    }
  }
}
