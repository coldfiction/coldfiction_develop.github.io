import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 350,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Column(
            children: [
              Container(
                  alignment: Alignment.topCenter,
                  color: Colors.white,
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
                      fontSize: 20,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
