import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 50.0,
      child: Container(
        height: 50,
        color: Colors.green[300].withOpacity(0.4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              child: Image.asset('assets/logo.png'),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              child: _NavBarItem('Stories'),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              child: _NavBarItem('Socials'),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              child: _NavBarItem('About'),
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
    );
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
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
