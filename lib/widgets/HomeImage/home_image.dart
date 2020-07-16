import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.network(
        "assets/blue-sunset.jpg",
        fit: BoxFit.cover,
      ),
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: Image.network("assets/blue-sunset.jpg", fit: BoxFit.cover,),
      //     fit: BoxFit.cover,
      //   ),
      // ),
    );
  }
}
