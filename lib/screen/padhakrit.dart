import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Padhakrit extends StatelessWidget {
  const Padhakrit({super.key});

  final String url = 'https://ward06.lalitpurmun.gov.np/team/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("पदाधिकारी"),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
