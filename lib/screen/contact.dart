import 'package:event/screen/map_sample.dart';
import 'package:event/screen/contactus.dart';
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
            // height: 100,
            fit: BoxFit.fitWidth,
          ),
        ),
      ])),
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
                height: MediaQuery.of(context).size.height * 0.15,
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
