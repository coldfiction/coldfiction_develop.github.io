import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: 350,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff1fbfb8),
            Color(0xff05716c),
            Color(0xff1978a5),
            // Color(0xff031163)
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )),
      ),
      Container(
        padding: EdgeInsets.only(
          top: (MediaQuery.of(context).size.height) / 20,
          // bottom: (MediaQuery.of(context).size.height) / 20,
        ),
        color: Colors.transparent,
        height: 350,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                    alignment: Alignment.topCenter,
                    color: Colors.transparent,
                    child: Text(
                      "About",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    )),
                Container(
                    padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width) * 0.2,
                      right: (MediaQuery.of(context).size.width) * 0.2,
                      top: (MediaQuery.of(context).size.height) / 20,
                      bottom: (MediaQuery.of(context).size.height) / 20,
                    ),
                    child: Text(
                      'Short stories that make you think. \n' +
                          'ColdFiction is for people who love thrillers and plot twists but don\'t have the time to go through a whole book or a movie.' +
                          ' It\'s a collection of 5-minute short stories and essays that flex your thinking muscles. ',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    ]);
  }
}
