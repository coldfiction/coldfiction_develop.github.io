import 'package:coldfiction/widgets/CenteredView/centered_view.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      width: MediaQuery.of(context).size.width,
      child:
          // Center(
          //   child: Text(
          //     'Follow us here!',
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 20.0,
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),
          CenteredView(
        // Adds vertical and horizontal padding - refer widgets/center_view.dart
        child: Row(
            //Row of social media icons
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Material(
                elevation: 9,
                borderRadius: BorderRadius.circular(100),
                color: Colors.transparent,
                child: InkWell(
                  //Inkwell used only for its onTap property
                  onTap: () =>
                      {launch('https://www.facebook.com/coldfictionwriters/')},
                  child: Image(
                    image: AssetImage('assets/fb-icon.png'),
                  ),
                ),
              ),
              Material(
                elevation: 9,
                borderRadius: BorderRadius.circular(100),
                color: Colors.transparent,
                child: InkWell(
                  onTap: () =>
                      {launch('https://www.instagram.com/coldfiction/')},
                  child: Image.asset('assets/insta-icon.png'),
                ),
              ),
              Material(
                  elevation: 9,
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => {launch('https://twitter.com/cold_fiction')},
                    child: Image.asset('assets/twitter-icon.png'),
                  )),
              Material(
                elevation: 9,
                borderRadius: BorderRadius.circular(100),
                color: Colors.transparent,
                child: InkWell(
                  onTap: () =>
                      {launch('https://www.linkedin.com/company/coldfiction/')},
                  child: Image.asset('assets/linkedin-icon.png'),
                ),
              ),
            ]),
      ),
    );
  }
}
