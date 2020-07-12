import 'package:flutter/material.dart';

class Story {
  String title;
  Image image;
  String content;
  Story(String title, String content) {
    this.title = title;
    this.content = content;
  }

}

//Story titles
final stories = <Story>[
  Story("Identity","" ),
  Story("Coming Soon", ""),
  Story("Coming Soon", ""),
  Story("Coming Soon",""),
  Story("Coming Soon",""),
  Story("Coming Soon",""),
];
