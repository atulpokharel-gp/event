// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// import 'app_bar.dart';

// class Contact extends StatelessWidget {
//   const Contact({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var url = "https://ward06.lalitpurmun.gov.np/apps/apps-contact";
//     return Scaffold(
//       appBar: const CustomAppBar(),
//       // ignore: avoid_unnecessary_containers
//       // body: SingleChildScrollView(
//       //   child: Container(
//       //     decoration: const BoxDecoration(
//       //       image: DecorationImage(
//       //         image: AssetImage("assets/images/bg-white.png"),
//       //         fit: BoxFit.cover,
//       //       ),
//       //     ),
//       //     child: Column(
//       //       mainAxisSize: MainAxisSize.min,
//       //       children: [
//       //         SizedBox(
//       //             // ignore: sort_child_properties_last
//       //             height: MediaQuery.of(context).size.height * 0.20,
//       //             width: double.infinity,
//       //             child: const Image(
//       //               image: AssetImage('assets/images/message.jpg'),
//       //             )),
//       //         SizedBox(
//       //           height: MediaQuery.of(context).size.height * 0.20,
//       //           width: double.infinity,
//       //           child: const MapSample(),
//       //         ),
//       //         const SizedBox(
//       //           // height: MediaQuery.of(context).size.height * 0.40,
//       //           // width: double.infinity,
//       //           child: Contactus(),
//       //         )
//       //       ],
//       //     ),
//       //   ),
//       // ),
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/bg-white.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: WebView(
//             initialUrl: url,
//             javascriptMode: JavascriptMode.unrestricted,
//           ),
//         ),
//       ),
//     );
//   }
// }
