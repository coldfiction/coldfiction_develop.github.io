import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 350,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 70.0),
      child: Column(
        children: [
          Container(
              alignment: Alignment.topCenter,
              color: Colors.white,
              child: Text(
                "About",
                style: TextStyle(
                  fontSize: 40,
                ),
              ))
        ],
      ),
    );
  }
}
