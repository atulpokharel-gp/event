import 'package:flutter/material.dart';

// ignore: camel_case_types
class gMape extends StatefulWidget {
  const gMape({super.key});

  @override
  State<gMape> createState() => _gMapeState();
}

// ignore: camel_case_types
class _gMapeState extends State<gMape> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/blueg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
