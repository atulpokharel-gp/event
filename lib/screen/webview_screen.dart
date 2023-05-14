import 'package:event/screen/app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';

class WebviewScreen extends StatelessWidget {
  final String? url;
  const WebviewScreen({Key? key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: webscreen(url: url),
    );
  }
}

// ignore: camel_case_types
class webscreen extends StatelessWidget {
  const webscreen({
    super.key,
    required this.url,
  });

  final String? url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
