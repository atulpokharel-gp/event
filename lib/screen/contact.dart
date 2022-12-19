import 'package:event/Model/map_sample.dart';
import 'package:event/Model/contactus.dart';
import 'package:event/screen/home_page.dart';

import 'package:event/screen/padhakrit.dart';
import 'package:event/screen/profile.dart';
import 'package:event/screen/project.dart';
import 'package:event/screen/sampada.dart';
import 'package:flutter/material.dart';

import 'grihapusti.dart';
import 'local_tax.dart';
import 'news.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 238, 239, 239),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/inner-page-logo.png',
              height: 100,
              width: 200,
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
              // add icon, by default "3 dot" icon
              icon: const ImageIcon(
                AssetImage("assets/images/menu-buttom.png"),
                color: Colors.blueAccent,
                size: 24,
              ),
              //  DecoratedBox(decoration: Image.asset('assets/images/menu-buttom.png')

              // ),

              itemBuilder: (context) {
                return [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text("गृहपृष्ठ"),
                  ),
                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text("सम्पदा"),
                  ),
                  const PopupMenuItem<int>(
                    value: 2,
                    child: Text("पदाधिकारी"),
                  ),
                  const PopupMenuItem<int>(
                    value: 3,
                    child: Text("सुचना र समाचार"),
                  ),
                  const PopupMenuItem<int>(
                    value: 4,
                    child: Text("बार्षिक योजना"),
                  ),
                  const PopupMenuItem<int>(
                    value: 5,
                    child: Text("स्थानिय कर"),
                  ),
                  const PopupMenuItem<int>(
                    value: 6,
                    child: Text("प्रोफाइल"),
                  ),
                  const PopupMenuItem<int>(
                    value: 7,
                    child: Text("दश्बोर्ड "),
                  ),
                ];
              },
              onSelected: (value) {
                if (value == 0) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Ghripusti(),
                  ));
                } else if (value == 1) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Sampada(),
                  ));
                } else if (value == 2) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Padhakrit(),
                  ));
                } else if (value == 3) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const NewsScreen(),
                  ));
                } else if (value == 4) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Project(),
                  ));
                } else if (value == 5) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LocalTax(),
                  ));
                } else if (value == 6) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ));
                } else if (value == 7) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
                } else if (value != 1 &&
                    value != 2 &&
                    value != 3 &&
                    value != 4 &&
                    value != 5 &&
                    value != 6 &&
                    value != 7) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Contact(),
                  ));
                }
              })
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg-white.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                  // ignore: sort_child_properties_last
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage('assets/images/message.jpg'),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.20,
                width: double.infinity,
                child: const MapSample(),
              ),
              const SizedBox(
                // height: MediaQuery.of(context).size.height * 0.40,
                // width: double.infinity,
                child: Contactus(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
