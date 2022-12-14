import 'package:flutter/material.dart';
import '../screen/news_home.dart';

class NewsListContainer extends StatelessWidget {
  final String? imageurl;
  final String? title;
  const NewsListContainer({Key? key, this.imageurl, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NewsHome(
                      title: title,
                      category: title!.toLowerCase(),
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.green,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imageurl!,
                  ))),
          child: Center(
              child: Text(
            title!,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
