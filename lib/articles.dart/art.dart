import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pbl_project/articles.dart/Articlemodel.dart';
import 'package:http/http.dart' as http;

class art {
  List<Articlemodel> Art = [];
  Future<void> getart() async {
    final url = Uri.parse(
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=9707d114b5684d03835968c46f0796bf");

    var response = await http.get(url);
    var jsondata = jsonDecode(response.body);
    if (jsondata["status"] == "ok") {
      jsondata["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          Articlemodel articlemodel =  Articlemodel(
              author: element['author'],
              title: element['title'],
              description: element['description'],
              url: element['url'],
              urltoImage: element['urltoImage'],
              content: element['content'],
              publishedat: element['publishedat']);
          Art.add(articlemodel);
        }
      });
    }
  }
}
