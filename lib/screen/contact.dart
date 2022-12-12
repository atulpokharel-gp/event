import 'package:event/screen/MapSample.dart';
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
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                        // ignore: sort_child_properties_last
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: double.infinity,
                        child: const Image(
                          image: AssetImage('assets/images/message.jpg'),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: double.infinity,
                      child: const MapSample(),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: double.infinity,
                      child: const Contactus(),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
