import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'app_bar.dart';

class Ghripusti extends StatefulWidget {
  const Ghripusti({super.key});

  @override
  State<Ghripusti> createState() => _GhripustiState();
}

class _GhripustiState extends State<Ghripusti> {
  final String url = 'https://ward06.lalitpurmun.gov.np/apps/apps-home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-white.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: WebView(
            initialUrl: url,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
