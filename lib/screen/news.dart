import 'package:flutter/material.dart';
import '../data/news_data.dart';
// ignore: unused_import
import '../widgets/news_container.dart';
import '../widgets/newslist_container.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('News'),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg-white.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
              itemCount: mydata.length,
              itemBuilder: (context, index) {
                return NewsListContainer(
                  imageurl: mydata[index]['image'],
                  title: mydata[index]['title'],
                );
              }),
        ));
  }
}
