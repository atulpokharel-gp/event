// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  final String? imageurl;
  final String? title;

  const NewScreen({super.key, this.imageurl, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageurl!,
              ),
            ),
          ),
          child: Center(
              child: Text(
            title!,
            style: const TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
              color: Colors.white,
            ),
          )),
        ));
  }
}
