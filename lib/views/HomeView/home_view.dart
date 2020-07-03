import 'package:flutter/material.dart';
import 'package:coldfiction/widgets/HomeImage/home_image.dart';
//import 'package:coldfiction/widgets/NavigationBar/navigation_bar.dart';
import 'package:coldfiction/widgets/SocialBar/social_bar.dart';
import 'package:coldfiction/widgets/StoriesHolder/stories_holder.dart';
//import 'package:coldfiction/widgets/SizeConfig/size_config.dart';

//The homepage
class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  ScrollController
      _scrollController; //this is used by navbar to jump to anchor links

  static double offsetHome = 0;
  static double offsetStories = 705.0;
  static double offsetSocial = 855.0;
  //static double offsetAbout = 3 * SizeConfig.screenHeight;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  void scrollTo(String title) {
    double offset = 0;
    switch (title) {
      case "Home":
        offset = offsetHome;
        break;
      case "Stories":
        offset = offsetStories;
        break;
      case "Socials":
        offset = offsetSocial;
        break;
    }

    _scrollController.animateTo(
      offset,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutQuart,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            HomeImage(), //The background image
            // CenteredView(child:
            ListView(
              controller: _scrollController,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                ),
                StoriesHolder(),
                SocialBar(),
              ],
            ),
            //),
            Container(
              alignment: Alignment.topCenter,
              child: Opacity(
                opacity: 50.0,
                child: Container(
                  height: 50,
                  color: Colors.green[300].withOpacity(0.4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => scrollTo("Home"),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Image.asset('assets/logo.png'),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => scrollTo("Stories"),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: _NavBarItem('Stories'),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => scrollTo("Socials"),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: _NavBarItem('Socials'),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: _NavBarItem('About'),
                          ),
                        ),
                      ),
                      // Row(
                      //   mainAxisSize: MainAxisSize.max,
                      //   children: <Widget>[
                      //     _NavBarItem('Stories'),
                      //     SizedBox(
                      //       width: 60,
                      //     ),
                      //     _NavBarItem('About'),
                      //   ],
                      // )
                    ],
                  ),
                ),
              ), //NavigationBar(),
            )
          ],
        ));
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      title,
      style: TextStyle(fontSize: 18),
    ));
  }
}
