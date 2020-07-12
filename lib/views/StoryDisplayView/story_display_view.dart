import 'package:flutter/material.dart';
import 'package:coldfiction/models/Story.dart';

class StoryDisplayView extends StatelessWidget{
  final Story story;
  StoryDisplayView(this.story);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Heading
      appBar: AppBar(title: Center(
        child: Text(story.title, style:TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                            ),),
      )),
      //Content
      body: Center(child: Text(story.content, style: TextStyle(color: Colors.black),),),
    );
  }

}