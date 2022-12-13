import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:flutter/material.dart';

class LocalTax extends StatelessWidget {
  final String url =
      'https://ward06.lalitpurmun.gov.np/storage/2022/07/%E0%A4%86%E0%A4%B0%E0%A5%8D%E0%A4%A5%E0%A4%BF%E0%A4%95-%E0%A4%90%E0%A4%A8-%E0%A5%A8%E0%A5%A6%E0%A5%AD%E0%A5%AE.pdf';
  const LocalTax({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('स्थानिय कर'),
        centerTitle: true,
      ),
      body:
          // ignore: avoid_unnecessary_containers
          Container(child: SfPdfViewer.network(url)),
    );
  }
}










// import 'package:webview_flutter/webview_flutter.dart';

// import 'package:flutter/material.dart';

// class LocalTax extends StatelessWidget {
//   final String url =
//       'https://ward06.lalitpurmun.gov.np/%e0%a4%ac%e0%a4%9c%e0%a5%87%e0%a4%9f/';
//   const LocalTax({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("स्थानिय कर"),
//       ),
//       body: WebView(
//         initialUrl: url,
//         javascriptMode: JavascriptMode.unrestricted,
//       ),
//     );
//   }
// }
