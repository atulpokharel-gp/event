import 'package:flutter/material.dart';

class AppBars extends StatefulWidget {
  const AppBars({super.key});

  @override
  State<AppBars> createState() => _AppBarState();
}

class _AppBarState extends State<AppBars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
    // appBar: AppBar(
    //   title: const Text("Popup Menu on AppBar"),
    //   backgroundColor: Colors.redAccent,
    //   actions: [
    //     PopupMenuButton(
    //         // add icon, by default "3 dot" icon
    //         // icon: Icon(Icons.book)
    //         itemBuilder: (context) {
    //       return [
    //         const PopupMenuItem<int>(
    //           value: 0,
    //           child: Text("My Account"),
    //         ),
    //         const PopupMenuItem<int>(
    //           value: 1,
    //           child: Text("Settings"),
    //         ),
    //         const PopupMenuItem<int>(
    //           value: 2,
    //           child: Text("Logout"),
    //         ),
    //       ];
    //     }, onSelected: (value) {
    //       if (value == 0) {

    //       } else if (value == 1) {
    //         print("Settings menu is selected.");
    //       } else if (value == 2) {
    //         print("Logout menu is selected.");
    //       }
    //     }),
    //   ],
    // ),
    // body: Container());
  }
}
