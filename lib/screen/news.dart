import 'package:event/data/home_data.dart';
import 'package:flutter/material.dart';

import '../widgets/NewsContainer.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('News'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: mydata.length,
            itemBuilder: (context, index) {
              return NewScreen(
                imageurl: mydata[index]['image'],
                title: mydata[index]['title'],
              );
            }));
  }
}
