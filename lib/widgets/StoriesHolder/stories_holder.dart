import 'package:flutter/material.dart';

import '../../models/Story.dart';



//This is a widget that holds the story cards
class StoriesHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Wrap(
          children: _cards(context),
          spacing: 8,
          runSpacing: 8,
          direction: Axis.horizontal,
          //alignment: WrapAlignment.center,
        ));
  }

  //Method to return a list of card (inside a size restricting container) widgets to store the story name
  List<Widget> _cards(BuildContext context) {
    final cards = List<Widget>();

    for (var i = 0; i < stories.length; i++) {
      cards.add(new InkWell(//Ink effect widget
          onTap: () {},
          highlightColor: Colors.white.withAlpha(30),
          splashColor: Colors.white.withAlpha(20),
          child: Container(// setting the card dimensions
            height: 250,
            width: 250,
            child: Card(//returning a Story card
              color: Colors.lightGreen[200],
              child: Center(// center-ing the card text
                child: Container(//Container for padding
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    stories[i].title,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )));
    }

    return cards;
  }
}
