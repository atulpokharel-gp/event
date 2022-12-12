// ignore_for_file: unused_field

import 'package:webview_flutter/webview_flutter.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:flutter/material.dart';

class LocalTax extends StatelessWidget {
  final String url =
      'https://ward06.lalitpurmun.gov.np/storage/2022/07/%E0%A4%86%E0%A4%B0%E0%A5%8D%E0%A4%A5%E0%A4%BF%E0%A4%95-%E0%A4%90%E0%A4%A8-%E0%A5%A8%E0%A5%A6%E0%A5%AD%E0%A5%AE.pdf';
  const LocalTax({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.network(url);
  }
}
