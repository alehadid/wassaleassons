import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

// class Game extends StatefulWidget {
//   const Game({Key? key}) : super(key: key);
//
//   @override
//   State<Game> createState() => _MyAppState();
// }
// class _MyAppState extends State<Game> {
//   var neC = Colors.black;
//   var mycolor = [
//     Colors.orange,
//     Colors.yellow,
//     Colors.indigo,
//     Colors.red,
//     Colors.indigoAccent,
//     Colors.blueGrey,
//     Colors.black,
//     Colors.deepPurple
//   ];
//   var top1 = 200.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//         ),
//         body: Column(
//           children: [
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {});
//                   top1 += 20;
//                 },
//                 child: Text("click")),
//             Column(
//               children: [
//                 Container(
//                   height: 500,
//                   color: Colors.deepOrange,
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         left: 165,
//                         top: top1,
//                         child: GestureDetector(
//                             onPanUpdate: (up) {
//                               setState(() {
//                                 var ran = new Random();
//                                 neC = mycolor[ran.nextInt(mycolor.length)];
//                               });
//                             },
//                             onTap: () {
//                               setState(() {
//                                 var ran = new Random();
//                                 neC = mycolor[ran.nextInt(mycolor.length)];
//                               });
//                             },
//                             onLongPress: () {
//                               setState(() {});
//                             },
//                             onDoubleTap: () {
//                               setState(() {
//                                 neC = Colors.green;
//                               });
//                             },
//                             child: Icon(
//                               Icons.sports_baseball,
//                               size: 70,
//                               color: neC,
//                             )),
//                       ),
//                     ],
//                   ),
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {});
//                       top1 -= 20;
//                     },
//                     child: Text("click")),
//               ],
//             ),
//           ],
//         ));
//   }
// }
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var coloer = [
    Colors.yellowAccent,
    Colors.blue,
    Colors.deepOrange,
    Colors.green,
    Colors.indigoAccent,
    Colors.deepPurple,
    Colors.deepOrange,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: Container(
        width: 400,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemCount: 12,
            itemBuilder: (uk, i) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.yellowAccent,
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("assets/manar.jpg"),
                            height: 100,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
