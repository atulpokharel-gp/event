import 'package:event/screen/sampada.dart';
import 'package:event/screen/grihapusti.dart';
import 'package:event/screen/padhakrit.dart';
import 'package:event/screen/project.dart';
import 'package:event/screen/profile.dart';
import 'package:event/screen/news.dart';
import 'package:event/screen/local_tax.dart';
import 'package:event/screen/contact.dart';
import 'package:flutter/material.dart';

// import '../widgets/newslist_container.dart';
// import 'news_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: (const [
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      width: 200,
                      height: 200,
                    ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [foter()],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text foter() {
    return const Text(
      "2022 @ishanitechnology ",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20, color: Colors.white),
    );
  }
}

class ROW {}

// ignore: camel_case_types
class background extends StatelessWidget {
  const background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.cover,
        color: Colors.white,
      ),
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
            builder: (context) => const NewsScreen(),
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
        color: const Color.fromARGB(240, 102, 108, 230),
        // decoration: const BoxDecoration(color: Colors.indigo, boxShadow: [
        //   BoxShadow(color: Colors.grey, blurRadius: 2.0, spreadRadius: 0.4)
        // ]),
        child: SizedBox(
          height: 115,
          width: 160,
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/$imageName',
                  // fit: BoxFit.scaleDown,
                  height: 80,
                  width: 80,
                ),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
