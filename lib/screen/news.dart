// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// import 'app_bar.dart';

// class NewsScreen extends StatelessWidget {
//   final String url = "https://ward06.lalitpurmun.gov.np/apps/apps-blog/";
//   const NewsScreen({Key? key}) : super(key: key);

//   @override
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

//   List<PopupMenuEntry<int>> custapp(context) {
//     return [
//       const PopupMenuItem<int>(
//         value: 0,
//         child: Text("गृहपृष्ठ"),
//       ),
//       const PopupMenuItem<int>(
//         value: 1,
//         child: Text("सम्पदा"),
//       ),
//       const PopupMenuItem<int>(
//         value: 2,
//         child: Text("पदाधिकारी"),
//       ),
//       const PopupMenuItem<int>(
//         value: 3,
//         child: Text("सुचना र समाचार"),
//       ),
//       const PopupMenuItem<int>(
//         value: 4,
//         child: Text("बार्षिक योजना"),
//       ),
//       const PopupMenuItem<int>(
//         value: 5,
//         child: Text("स्थानिय कर"),
//       ),
//       const PopupMenuItem<int>(
//         value: 6,
//         child: Text("प्रोफाइल"),
//       ),
//       const PopupMenuItem<int>(
//         value: 7,
//         child: Text("सम्पर्क"),
//       ),
//       const PopupMenuItem<int>(
//         value: 8,
//         child: Text("दश्बोर्ड"),
//       ),
//     ];
//   }
// }
