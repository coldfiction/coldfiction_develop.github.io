import 'package:coldfiction/widgets/CenteredView/centered_view.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green[300],
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          Center(
            child: Text(
              'Follow us here!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => {
                      launch('https://www.facebook.com/coldfictionwriters/')
                    },
                    child: Image.asset('assets/fb-icon.png'),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                      onTap: () =>
                          {launch('https://www.instagram.com/coldfiction/')},
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Image.asset('assets/insta-icon.png'),
                      )),
                ),
                Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Image.asset('assets/twitter-icon.png'),
                    )),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => {
                      launch('https://www.linkedin.com/company/coldfiction/')
                    },
                    child: Image.asset('assets/linkedin-icon.png'),
                  ),
                ),
              ]),
        ]));
  }
}
