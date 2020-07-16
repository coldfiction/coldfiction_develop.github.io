import 'package:coldfiction/views/StoryDisplayView/story_display_view.dart';
import 'package:flutter/material.dart';

import '../../models/Story.dart';

//This is a widget that holds the story cards
class StoriesHolder extends StatefulWidget {
  @override
  _StoriesHolderState createState() => _StoriesHolderState();
}

class _StoriesHolderState extends State<StoriesHolder> {
  //Start of code for  card carousel
  PageController pageController;

  @override
  void initState() {
    super.initState();

    pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

//end of inital code for cards carousel
  @override
  Widget build(BuildContext context) {
    return Stack(
      //Setting the quill image to be the background of our wrap widget
      children: [
        Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            // padding: const EdgeInsets.only(left: 100),
            //The grey quill background image
            padding: const EdgeInsets.only(bottom: 30),
            child: Image(image: AssetImage("assets/background_image.png"))),
        Container(
            height: MediaQuery.of(context).size.height * 0.8,
            // width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width > 1000
                  ? 400
                  : 50, //First value for desktop second for mobile view
              right: MediaQuery.of(context).size.width > 1000
                  ? 400
                  : 50, // values found by trial and error
            ),
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
                    color: Colors.white,
                    height: (MediaQuery.of(context).size.height) *
                        0.6, //manually calculated the height the grid must have and removed bottom padding- fixed scrolling issue
                    //DEBUG Original gridView // child: new GridView.count(
                    //   primary: false,
                    //   padding: const EdgeInsets.all(3.5),
                    //   crossAxisCount: 1,
                    //   // childAspectRatio: (MediaQuery.of(context).size.width) /
                    //   //     (MediaQuery.of(context).size.height),
                    //   childAspectRatio: 1.0,
                    //   mainAxisSpacing: 8.0,
                    //   crossAxisSpacing: 8.0,
                    //   children: _cards(context), //new Cards()
                    //   shrinkWrap: true,
                    //   scrollDirection: Axis.horizontal,
                    //   physics: ScrollPhysics(),
                    // ),
                    //DEBUG ListView // child: ListView(
                    //   children: _cards(context),
                    //   scrollDirection: Axis.horizontal,
                    // )),
                    child: PageView.builder(
                        controller: pageController,
                        itemCount: stories.length,
                        itemBuilder: (context, position) {
                          return imageSlider(position);
                        }))
              ],
            )),
      ],
    );
  }

  List<Widget> _cards(BuildContext context) {
    final cards = List<Widget>();

    for (var i = 0; i < stories.length; i++) {
      cards.add(Container(
        // setting the card dimensions
        color: Colors.transparent,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            //returning a Story card
            elevation: 9,
            child: Container(
                child: Material(
              color: Colors.transparent,
              child: InkWell(
                  //Ink effect widget
                  onTap: () {
                    _navigate_to_story(stories[i], context);
                  },
                  //DEBUG // child: Center(
                  //   // center-ing the card text
                  //   child: Container(
                  //     //Container for padding
                  //     color: Colors.transparent,
                  //     padding: const EdgeInsets.all(2),
                  //     child: Text(
                  //       stories[i].title,
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 25,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  child: FittedBox(
                    child: stories[i].image,
                    fit: BoxFit.fill,
                  )),
            ))),
      ));
    }

    return cards;
  }

  _navigate_to_story(Story story, BuildContext context) {
    if (story.title != "Coming Soon") {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return StoryDisplayView(story);
      }));
    }
  }

  imageSlider(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, widget) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }

        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 400,
            // MediaQuery.of(context).size.height *
            // (2.0 / 3),
            width: Curves.easeInOut.transform(value) * 600,
            // MediaQuery.of(context).size.width *
            // (8.0 / 11.6),
            child: widget,
          ),
        );
      },
      child:
          Container(margin: EdgeInsets.all(10), child: _cards(context)[index]),
    );
  }
}
