import 'package:flutter/material.dart';

class Story {
  String title;
  Image image;
  Story(String title) {
    this.title = title;
  }
}

//Story titles
final stories = <Story>[
  Story("Identity"),
  Story("Coming Soon"),
  Story("Coming Soon"),
  Story("Coming Soon"),
  Story("Coming Soon"),
  Story("Coming Soon"),
];
