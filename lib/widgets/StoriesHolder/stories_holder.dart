import 'package:coldfiction/views/StoryDisplayView/story_display_view.dart';
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
            // padding: const EdgeInsets.only(left: 100),
            //The grey quill background image
            padding: const EdgeInsets.only(bottom: 30),
            child: Image(image: AssetImage("assets/background_image.png"))),
        Container(
            height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            padding: EdgeInsets.only(
                // bottom: (MediaQuery.of(context).size.height) / 20,
                left: (MediaQuery.of(context).size.width) *
                    0.2, // This is for the padding to resize according to screen
                right: (MediaQuery.of(context).size.width) *
                    0.2), // This is for the padding to resize according to screen
            //DEBUG      // child: Wrap(
            //   // start of the wrap widget
            //   children: _cards(context),
            //   spacing: 8,
            //   runSpacing: 8,
            //   direction: Axis.horizontal,
            //   alignment: WrapAlignment.center,
            // ),
            child: Column(
              children: [
                Container(
                    color: Colors.white,
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(
                      top: (MediaQuery.of(context).size.height) / 20,
                    ),
                    child: Text(
                      "Stories",
                      style: TextStyle(fontSize: 40),
                    )),
                Container(
                  height: (MediaQuery.of(context).size.height) *
                      0.78, //manually calculated the height the grid must have and removed bottom padding- fixed scrolling issue
                  child: new GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(3.5),
                    crossAxisCount: 2,
                    childAspectRatio: (MediaQuery.of(context).size.width) /
                        (MediaQuery.of(context).size.height),
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    children: _cards(context), //new Cards()
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                  ),
                ),
              ],
            )),
      ],
    );
  }

  //Method to return a list of card (inside a size restricting container) widgets to store the story name
  List<Widget> _cards(BuildContext context) {
    final cards = List<Widget>();

    for (var i = 0; i < stories.length; i++) {
      cards.add(Container(
        // setting the card dimensions
        color: Colors.transparent,
        child: Card(

            //returning a Story card
            elevation: 9,
            child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xffb34233).withOpacity(0.9),
                    Color(0xffd28f33).withOpacity(0.9),
                    Color(0xffd4b95e).withOpacity(0.9),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    //Ink effect widget
                    onTap: (){
                      _navigate_to_story(stories[i],context);
                    },
                    // highlightColor: Colors.green,
                    // splashColor: Colors.white,
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

  _navigate_to_story(Story story, BuildContext context){
    if(story.title != "Coming Soon"){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return StoryDisplayView(story);
      }));
    }
  }
}
