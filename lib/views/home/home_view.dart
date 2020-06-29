import 'package:coldfiction/widgets/CenteredView/centered_view.dart';
import 'package:coldfiction/widgets/HomeImage/home_image.dart';
import 'package:coldfiction/widgets/NavigationBar/navigation_bar.dart';
import 'package:coldfiction/widgets/Stories/stories.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            HomeImage(),
            CenteredView(
              child: Column(
                children: <Widget>[
                  Stories(),
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
