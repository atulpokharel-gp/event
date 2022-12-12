import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Ghripusti extends StatelessWidget {
  const Ghripusti({super.key});

  final String url = 'https://ward06.lalitpurmun.gov.np/#top';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("गृहपृष्ठ"),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
