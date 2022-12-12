import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../Model/news_model.dart';

String baseurl = "https://newsapi.org/v2/";
String api = "?sources=bbc-news&apiKey=508fc416e28c4eb79391853e2510a26e";

getNews(String newstype) async {
  var response = await http.get(Uri.parse(baseurl + newstype + api));
  debugPrint(baseurl + newstype + api);

  if (response.statusCode == 200) {
    var jsondata = jsonDecode(response.body);

    List<News> mynews = [];

    for (var articles in jsondata['articles']) {
      // debugPrint(articles);
      News singlenews = News(
          title: articles['title'],
          imageurl: articles['urlToImage'],
          description: articles['description'],
          author: articles['author'],
          link: articles['url']);

      mynews.add(singlenews);
    }

    debugPrint(mynews[0].title.toString());
    return mynews;
  } else {
    throw Exception(" Unable to fetch news data");
  }
}
