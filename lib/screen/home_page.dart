import 'package:event/screen/sampada.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            HomeMenuCard(
              title: "log3",
              imageName: "tax.png",
            ),
            HomeMenuCard(
              title: "log4",
              imageName: "team.png",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            HomeMenuCard(
              title: "log5",
              imageName: "tax.png",
            ),
            HomeMenuCard(
              title: "log6",
              imageName: "team.png",
            ),
          ],
        )
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
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Sampada(),
          ));
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
