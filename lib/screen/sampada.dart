import 'package:flutter/material.dart';

class Sampada extends StatelessWidget {
  const Sampada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/03.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
