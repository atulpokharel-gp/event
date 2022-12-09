import 'package:event/screen/contactus.dart';
import 'package:event/screen/map.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.asset(
            'assets/images/appbanner.jpg',
            height: 100,
            fit: BoxFit.fitWidth,
          ),
        ),
      ])),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/blueg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Contactus(),
      ),
    );
  }
}
