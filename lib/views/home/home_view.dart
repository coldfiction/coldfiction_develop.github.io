import 'package:coldfiction/widgets/CenteredView/centered_view.dart';
import 'package:coldfiction/widgets/HomeImage/home_image.dart';
import 'package:coldfiction/widgets/NavigationBar/navigation_bar.dart';
import 'package:coldfiction/widgets/Stories/stories.dart';
import 'package:coldfiction/widgets/StoriesHolder/stories_holder.dart';
import 'package:flutter/material.dart';
//The homepage
class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            HomeImage(), //The background image
            CenteredView(
              child: ListView(
                children: <Widget>[
                  Container(height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width, color: Colors.transparent,),
                  //Stories(),
                  StoriesHolder()
                ],
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: NavigationBar(),
            )
          ],
        ));
  }
}
