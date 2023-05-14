// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// import 'app_bar.dart';

// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   final String url = 'https://ward06.lalitpurmun.gov.np/apps/apps-about/';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CustomAppBar(),
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
