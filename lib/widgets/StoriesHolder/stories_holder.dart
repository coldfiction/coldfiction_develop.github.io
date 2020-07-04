import 'package:flutter/material.dart';

import '../../models/Story.dart';
import 'package:google_fonts/google_fonts.dart';

//This is a widget that holds the story cards
class StoriesHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      //Setting the quill image to be the background of our wrap widget
      children: [
        Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 100),
            //The grey quill background image
            child: Image(image: AssetImage("assets/background_image.png"))),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          padding: const EdgeInsets.all(50),
          child: Wrap(
            // start of the wrap widget
            children: _cards(context),
            spacing: 8,
            runSpacing: 8,
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
          ),
        )
      ],
    );
  }

  //Method to return a list of card (inside a size restricting container) widgets to store the story name
  List<Widget> _cards(BuildContext context) {
    final cards = List<Widget>();

    for (var i = 0; i < stories.length; i++) {
      cards.add(Container(
        // setting the card dimensions
        //color: Colors.transparent,
        height: 250,
        width: 250,
        child: Card(
            //returning a Story card
            //color: Colors.lightGreen[200], Doing
            elevation: 9,
            //color: Colors.green[300].withOpacity(0.9),
            child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xffb34233),
                    Color(0xffd28f33),
                    Color(0xffd4b95e),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    //Ink effect widget
                    onTap: () {},
                    highlightColor: Colors.green,
                    splashColor: Colors.white,
                    child: Center(
                      // center-ing the card text
                      child: Container(
                        //Container for padding
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          stories[i].title,
                          style: TextStyle(
                            color: Colors.white,
                            //fontStyle: FontStyle.italic,
                            //fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ))),
      ));
    }

    return cards;
  }
}
