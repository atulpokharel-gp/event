// import 'package:event/screen/news.dart';
// import 'package:event/screen/notice.dart';
// import 'package:flutter/material.dart';
// import 'app_bar.dart';

// // ignore: camel_case_types
// class noticeandnews extends StatelessWidget {
//   const noticeandnews({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CustomAppBar(),
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/bg-white.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 color: const Color.fromARGB(255, 238, 239, 239),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       decoration: const BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage("assets/images/main-logo.png"),
//                         ),
//                       ),
//                       height: MediaQuery.of(context).size.height * 0.20,
//                       width: MediaQuery.of(context).size.width * 0.50,
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: SingleChildScrollView(
//                   // ignore: avoid_unnecessary_containers
//                   child: Container(
//                     child: SingleChildScrollView(
//                       child: Column(
//                           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(5.0),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: (const [
//                                   HomeMenuCard(
//                                     title: "समाचार",
//                                     imageName: 'news.png',
//                                     index: 0,
//                                   ),
//                                   HomeMenuCard(
//                                     title: "सुचना",
//                                     imageName: "news.png",
//                                     index: 1,
//                                   ),
//                                 ]),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [foter()],
//                               ),
//                             ),
//                           ]),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Padding foter() {
//     return const Padding(
//       padding: EdgeInsets.all(10.0),
//       child: Text(
//         "2022 © ललितपुर महानगरपालिका नं. वडा  ६ | Developed by : DigiSoft Developer",
//         textAlign: TextAlign.center,
//         style: TextStyle(fontSize: 10, color: Colors.black),
//       ),
//     );
//   }
// }

// class ROW {}

// // ignore: camel_case_types
// class background extends StatelessWidget {
//   const background({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Image.asset(
//         'assets/images/logo.png',
//         fit: BoxFit.cover,
//         color: Colors.white,
//       ),
//     );
//   }
// }

// class HomeMenuCard extends StatelessWidget {
//   final String title;
//   final String imageName;
//   final int index;

//   const HomeMenuCard({
//     Key? key,
//     required this.title,
//     required this.imageName,
//     this.index = 0,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         if (index == 0) {
//           Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => const NewsScreen(),
//           ));
//         } else if (index == 1) {
//           Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => const NoticeScreen(),
//           ));
//         }
//       },
//       child: Container(
//         padding: const EdgeInsets.all(4),
//         color: const Color.fromARGB(240, 102, 108, 230),
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height * 0.16,
//           width: MediaQuery.of(context).size.width * 0.41,
//           child: Column(
//             children: [
//               Center(
//                 child: Image.asset(
//                   'assets/images/$imageName',
//                   // fit: BoxFit.scaleDown,
//                   height: MediaQuery.of(context).size.height * 0.10,
//                   width: MediaQuery.of(context).size.width * 0.20,
//                 ),
//               ),
//               Text(
//                 title,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
