import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  final String url =
      'https://ward06.lalitpurmun.gov.np/%e0%a4%b9%e0%a4%be%e0%a4%ae%e0%a5%8d%e0%a4%b0%e0%a5%8b-%e0%a4%ac%e0%a4%be%e0%a4%b0%e0%a5%87%e0%a4%ae%e0%a4%be/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("प्रोफाइल"),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
