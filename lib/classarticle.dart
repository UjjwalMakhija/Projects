import 'package:flutter/material.dart';

class articles {
  String name;
  Icon icon;
  var color;
  String img;
  List<articles> subarticle;

  articles({
    required this.name,
    required this.icon,
    this.color,
    required this.img,
    required this.subarticle,
  });
}

class Myarticles {
  static List<articles> articlelist() {
    return [
      articles(
        name: 'Science of relaxation',
        icon:  Icon(Icons.food_bank),
        img:
          "relaxation2.png"
        ,
        subarticle: []
           
      ),
      articles(
          name: 'Ways to manage stress',
          icon:  Icon(Icons.read_more_sharp),
          img:
          "stressmangement1.png"
        ,
          subarticle: []),
      articles(
          name: 'Happiness & Health',
          icon:  Icon(Icons.read_more_outlined),
          img: 
          "happy.jpg"
        ,
          subarticle: []),
      articles(
          name: 'Habits Affecting Goals',
          icon: const Icon(Icons.read_more_outlined),
          img: 
          "habbits.jpg"
        ,
          subarticle: []),
      articles(
          name: 'Staying calm in turbulent times',
          icon: const Icon(Icons.read_more_outlined),
          img:
              
          "calm.png"
        ,
          subarticle: []),
    ];
  }
}
