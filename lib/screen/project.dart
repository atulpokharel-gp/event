import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  final String url =
      'https://ward06.lalitpurmun.gov.np/storage/2022/09/%E0%A4%A6%E0%A4%BF%E0%A4%B0%E0%A5%8D%E0%A4%98%E0%A4%95%E0%A4%BE%E0%A4%B2%E0%A4%BF%E0%A4%A8-%E0%A4%95%E0%A4%BE%E0%A4%B0%E0%A5%8D%E0%A4%AF%E0%A4%A8%E0%A5%80%E0%A4%A4%E0%A4%BF-%E0%A4%A4%E0%A4%B0%E0%A5%8D%E0%A4%9C%E0%A5%81%E0%A4%AE%E0%A4%BE-%E0%A4%B8%E0%A4%AE%E0%A5%8D%E0%A4%AC%E0%A4%A8%E0%A5%8D%E0%A4%A7%E0%A4%BF-%E0%A4%AA%E0%A5%8D%E0%A4%B0%E0%A4%A4%E0%A4%BF%E0%A4%B5%E0%A5%87%E0%A4%A6%E0%A4%A8-%E0%A4%B5%E0%A4%A1%E0%A4%BE-%E0%A4%A8%E0%A4%82-%E0%A5%AC.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('बार्षिक योजना'),
        centerTitle: true,
      ),
      body:
          // ignore: avoid_unnecessary_containers
          Container(child: SfPdfViewer.network(url)),
    );
  }
}
