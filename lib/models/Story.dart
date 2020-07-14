import 'package:flutter/material.dart';

class Story {
  String title;
  Image image;
  String content;
  Story(String title, String content, Image image) {
    this.title = title;
    this.content = content;
    this.image = image;
  }
}

//Story titles
final stories = <Story>[
  Story("Identity", "",
      Image(image: AssetImage('assets/garbutrol-card-pic.png'))),
  Story("Coming Soon", "",
      Image(image: AssetImage('assets/identity-card-pic.png'))),
  Story("Coming Soon", "",
      Image(image: AssetImage('assets/garbutrol-card-pic.png'))),
  Story("Coming Soon", "",
      Image(image: AssetImage('assets/garbutrol-card-pic.png'))),
  Story("Coming Soon", "",
      Image(image: AssetImage('assets/garbutrol-card-pic.png'))),
  Story("Coming Soon", "",
      Image(image: AssetImage('assets/garbutrol-card-pic.png'))),
];
