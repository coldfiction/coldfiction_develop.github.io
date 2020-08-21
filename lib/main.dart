import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/HomeView/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ColdFiction',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.justAnotherHandTextTheme(
            Theme.of(context).textTheme,
          )),
      home: HomeView(),
    );
  }
}
