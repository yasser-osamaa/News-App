import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContainerUrlPage extends StatefulWidget {
  const ContainerUrlPage({super.key, required this.url});
  final String url;
  @override
  State<ContainerUrlPage> createState() => _ContainerUrlPageState();
}

class _ContainerUrlPageState extends State<ContainerUrlPage> {
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
