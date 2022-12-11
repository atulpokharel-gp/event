import 'package:event/screen/sampada.dart';
import 'package:event/screen/grihapusti.dart';
import 'package:event/screen/padhakrit.dart';
import 'package:event/screen/project.dart';
import 'package:event/screen/profile.dart';
import 'package:event/screen/news.dart';
import 'package:event/screen/localTax.dart';
import 'package:event/screen/contact.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/blueg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: (const [
                    Image(
                      image: AssetImage('assets/images/logo.png'),
                      width: 200,
                      height: 250,
                    )
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: (const [
                    HomeMenuCard(
                      title: "गृहपृष्ठ",
                      imageName: 'home.png',
                      index: 0,
                    ),
                    HomeMenuCard(
                      title: "सम्पदा",
                      imageName: "sampada.png",
                      index: 1,
                    ),
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    HomeMenuCard(
                      title: "पदाधिकारी",
                      imageName: "team.png",
                      index: 2,
                    ),
                    HomeMenuCard(
                      title: "सुचना र समाचार",
                      imageName: "news.png",
                      index: 3,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    HomeMenuCard(
                      title: "बार्षिक योजना",
                      imageName: "project.png",
                      index: 4,
                    ),
                    HomeMenuCard(
                      title: "स्थानिय कर",
                      imageName: "tax.png",
                      index: 5,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    HomeMenuCard(
                      title: "प्रोफाइल",
                      imageName: "profile.png",
                      index: 6,
                    ),
                    HomeMenuCard(
                      title: "सम्पर्क",
                      imageName: "contact.png",
                      index: 7,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: ([foter()]),
                ),
              ],
            )));
  }

  Text foter() {
    return const Text(
      "2022 @ishanitechnology ",
      textAlign: TextAlign.center,
    );
  }
}

// ignore: camel_case_types
class background extends StatelessWidget {
  const background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      fit: BoxFit.cover,
    );
  }
}

class HomeMenuCard extends StatelessWidget {
  final String title;
  final String imageName;
  final int index;

  const HomeMenuCard({
    Key? key,
    required this.title,
    required this.imageName,
    this.index = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index == 0) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Ghripusti(),
          ));
        } else if (index == 1) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Sampada(),
          ));
        } else if (index == 2) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Padhakrit(),
          ));
        } else if (index == 3) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const News(),
          ));
        } else if (index == 4) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Project(),
          ));
        } else if (index == 5) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const LocalTax(),
          ));
        } else if (index == 6) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Profile(),
          ));
        } else if (index == 7) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Contact(),
          ));
        }
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        color: const Color.fromARGB(255, 54, 155, 238),
        child: Column(
          children: [
            Image.asset(
              'assets/images/$imageName',
              fit: BoxFit.contain,
              height: 93,
              width: 180,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
