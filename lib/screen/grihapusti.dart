import 'package:flutter/material.dart';

class Ghripusti extends StatelessWidget {
  const Ghripusti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
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
          debugPrint("not index zero");
        }
      },
      child: Container(
        padding: const EdgeInsets.all(20),
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
