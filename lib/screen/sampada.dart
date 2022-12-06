import 'package:flutter/material.dart';

class Sampada extends StatelessWidget {
  const Sampada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeMenuCard(
                  title: "log",
                  imageName: "news.png",
                  index: 0,
                ),
                HomeMenuCard(
                  title: "log2",
                  imageName: "profile.png",
                  index: 1,
                ),
              ],
            ),
          ],
        ));
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: printlogdata,
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            children: List.generate(8, (index) {
              return Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  void printlogdata() {
    debugPrint("pressed");
  }
}

class HomeMenuCard extends StatelessWidget {
  final String title;
  final String imageName;
  final int index;
  const HomeMenuCard(
      {Key? key, required this.title, required this.imageName, this.index = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index == 0) {
          test();
        } else {
          print("not index zero");
        }
      },
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.orange,
        child: Column(
          children: [
            Image.asset(
              'assets/images/$imageName',
              height: 100,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }

  void test() {
    debugPrint("hello");
  }
}
