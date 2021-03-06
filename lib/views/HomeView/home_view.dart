import 'package:flutter/material.dart';
import 'package:coldfiction/widgets/HomeImage/home_image.dart';
//import 'package:coldfiction/widgets/NavigationBar/navigation_bar.dart';
import 'package:coldfiction/widgets/SocialBar/social_bar.dart';
import 'package:coldfiction/widgets/StoriesHolder/stories_holder.dart';
import 'package:coldfiction/widgets/AboutSection/about-section.dart';

//Sea green and blue colors used in this site (light to dark): #1fbfb8, #05716c, #1978a5, #031163
//Website used (#31 bullet): https://99designs.com/blog/creative-inspiration/color-combinations/

//The homepage
class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  //Start of code to implement anchor links using ScrollController

  ScrollController
      _scrollController; //this is used by navbar to jump to anchor links

  static double offsetHome = 0;
  static double offsetStories = 705.0; //values determined by trial and error
  static double offsetSocial = 745.0;
  static double offsetAbout = 1052.0;

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
      case "About":
        offset = offsetAbout;
        break;
    }

    _scrollController.animateTo(
      offset,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutQuart,
    );
  }

  //End of code to implement anchor links using ScrollController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            HomeImage(), //The background image
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              //color: Color(0xffd4b95e).withOpacity(0.4),
              color: Colors.black.withOpacity(0.3),
            ),
            Container(
                color: Colors.transparent,
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                // child: Text("ColdFiction",
                //     style: GoogleFonts.mrDeHaviland(
                //       textStyle: TextStyle(
                //           color: Color(0xffb34233),
                //           backgroundColor: Colors.black,
                //           fontSize: 300),
                //       //backgroundColor: Color(0xffd4b95e).withOpacity(0.5),
                //     )),
                child: Image(
                  image: AssetImage('assets/coldfiction-written.png'),
                )),

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
                AboutSection(),
              ],
            ),
            //),
            Container(
              alignment: Alignment.topCenter,
              child: Container(
                //**********************IMPORTANT: This widget represents the Navigation Bar
                height: 50,
                //color: Colors.green[300].withOpacity(0.4),
                color: Color(0xff05716c).withOpacity(
                    0.4), //Read comment at the start of the code to leanr about colors
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                      //Home Button on navbar
                      color: Colors.transparent,
                      child: InkWell(
                        //Inkwell for splash effect and onTap property
                        onTap: () => scrollTo("Home"),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Image.asset('assets/logo.png'),
                        ),
                      ),
                    ),
                    Material(
                      //Stories button on navbar
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
                      //Socials Button on navbar
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
                      //About button on navbar
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => scrollTo("About"),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: _NavBarItem('About'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ), //NavigationBar(), //**********************************IMPORTANT: End of Navigation Bar widget
          ],
        ));
  }
}

class _NavBarItem extends StatelessWidget {
  //Class to store properties of navbar item
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
      style: TextStyle(
        fontSize: 24,
      ),
    ));
  }
}
