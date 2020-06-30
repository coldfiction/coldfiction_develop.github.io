// import 'package:coldfiction/models/Story.dart';
 //import 'package:flutter/material.dart';

// class Stories extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.white.withOpacity(0.7),
//         height: MediaQuery.of(context).size.height,
//         width: 1200,
//         // child: new GridView.count(
//         //   primary: false,
//         //   padding: const EdgeInsets.all(1.5),
//         //   crossAxisCount: 4,
//         //   childAspectRatio: 0.80,
//         //   mainAxisSpacing: 3.0,
//         //   crossAxisSpacing: 3.0,
//         //   children: _loadCards(), //new Cards()
//         //   shrinkWrap: true,
//         // )
//         child: Wrap(
//           direction: Axis.vertical,
//           children: _loadCards(),spacing: 4, runSpacing: 4,
//           ),
//         );
//   }

//   List<Widget> _loadCards() {
//     List<Widget> cards = [];
//     List<Story> stories = [new Story('Identity')];

//     for (int i = 1; i < 5; i++) {
//       stories.add(new Story('Upcoming Title'));
//     }

//     for (Story story in stories) {
//       cards.add(getStructuredGridCell(story));
//     }

//     return cards;
//   }

//   Card getStructuredGridCell(Story story) {
//     return new Card(
//       elevation: 4.0,
//       color: Color(0xff532E27),
//       child: new InkWell(
//         highlightColor: Colors.white.withAlpha(30),
//         splashColor: Colors.white.withAlpha(20),
//         child: new Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisSize: MainAxisSize.min,
//             verticalDirection: VerticalDirection.down,
//             children: <Widget>[
//               //new Image(image: new AssetImage(story.iconUri)),
//               new Center(
//                 child: new Text(story.title),
//               )
//             ]),
//         onTap: () {},
//       ),
//     );
//   }
// }
