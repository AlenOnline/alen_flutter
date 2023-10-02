// PRACTICE-1

// import 'package:flutter/material.dart';
 
// void main() {
//   runApp(const MyApp());
// }
 
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
 
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
 
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
 
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
 
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
 
//   final String title;
 
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
 
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
 
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
 
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// PRACTICE-2

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: Center(
//           child: Text(
//             "Hello",
//           ),
//         ),
//       ),
//     );
//   }
// }

// PRACTICE-3


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         Scaffold(appBar: AppBar(backgroundColor: Colors.pink,),
//         body: Container(color: Colors.purple, child: Text("jjjj")),
//     );
//   }
// }



// PRACTICE-4


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green, // 4. Изменить цвет AppBar
//           title: Text("Practice 4"),
// ),
//         backgroundColor: Colors.yellow, // 1. Поменять Background Color
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center, // 6. Текст посередине
//             children: <Widget>[
//               Text(
//                 "Old Text",
//                 style: TextStyle(
//                   color: Colors.red, // 3. Изменить color текста
//                   fontSize: 40, // 2. Изменить font текста
//                 ),
//               ),
//               Container( // 5. Добавить контейнер
//                 color: Colors.blue,
//                 child: Center( //
//                   child: Text(
//                     "New Text",
//                    // textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Colors.white, // 2. Изменить color текста
//                       fontSize: 10, // 3. Изменить font текста
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }










// PRACTICE-5

// // import 'package:flutter/material.dart';

// // // void main() {
// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: MyTextWidget(),
// // //     );
// // //   }
// // // }

// // // class MyTextWidget extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Align(
// // //       alignment: Alignment.centerLeft,
// // //       child: Text(
// // //         'Текст слева по центру!',
// // //         textDirection: TextDirection.ltr,
// // //         style: TextStyle(fontSize: 24, decoration: TextDecoration.none, color: Colors.white),
// // //       ),
// // //     );
// // //   }
// // // }

 
// // // void main() {
// // //   runApp(Align(
// // //       alignment: FractionalOffset(0.2, 0.3),
// // //       child:Text(
// // //       'Hello Flutter',
// // //       textDirection: TextDirection.ltr,  
// // //         style: TextStyle(fontSize: 20) 
// // //     )
// // //    )
// // //   );
// // // }
 
// // // void main() {
// // //   runApp(Padding(
// // //      padding: EdgeInsets.all(40),
// // //       child: Align(
// // //       alignment: Alignment.topCenter,
// // //       child: Text(
// // //         'Hello Flutter from metanit.com',
// // //           textDirection: TextDirection.ltr
// // //         )
// // //       )
// // //     )
// // //   );
// // // }

// // // void main() {
// // //   runApp(Container(
// // //     padding: EdgeInsets.only(top:30, left:10),
// // //     color: Colors.teal,
// // //     child:Column(
// // //         textDirection: TextDirection.ltr,
// // //         crossAxisAlignment: CrossAxisAlignment.start,
// // //         mainAxisAlignment: MainAxisAlignment.center,
// // //         children: <Widget>[
// // //           Text('Вот мысль, которой весь я предан,',
// // //               textDirection: TextDirection.ltr,
// //  //           Text('Итог всего, что ум скопил.',
// // //               textDirection: TextDirection.ltr,
// // //               style: TextStyle(fontSize: 16)),
// // //           Text('Лишь тот, кем бой за жизнь изведан,',
// // //               textDirection: TextDirection.ltr,
// // //               style: TextStyle(fontSize: 16)),
// // //           Text('Жизнь и свободу заслужил.',
// // //               textDirection: TextDirection.ltr,
// // //               style: TextStyle(fontSize: 16))
// // //         ],
// // //       )
// // //     )
// // //   );
// // // }

// // // void main() {
// // //   runApp(Container(
// // //     padding: EdgeInsets.all(30),
// // //     color: Colors.teal,
// // //     child:Row(
// // //         textDirection: TextDirection.ltr,
// // //         crossAxisAlignment: CrossAxisAlignment.start,
// // //         verticalDirection: VerticalDirection.down,
// // //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // //         children: <Widget>[
// // //           Text('Tom',
// // //               textDirection: TextDirection.ltr),
// // //           Text('Bob',
// // //               textDirection: TextDirection.ltr),
// // //           Text('Sam',
// // //               textDirection: TextDirection.ltr),
// // //           Text('Alice',
// // //               textDirection: TextDirection.ltr)
// // //         ],
// // //       )
// // //     )
// // //   );
// // // }

// // // import 'package:flutter/material.dart';

// // // void main() {
// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: MyContainer(),
// // //     );
// // //   }
// // // }

// // // class MyContainer extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Container(
// // //       padding: EdgeInsets.all(30),
// // //       color: Colors.teal,
// // //       child: MyRow(),
// // //     );
// // //   }
// // // }

// // // class MyRow extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Row(
// // //       textDirection: TextDirection.ltr,
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       verticalDirection: VerticalDirection.down,
// // //       children: <Widget>[
// // //         Expanded(
// // //           child: MyText(),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // // class MyText extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Text(
// // //       'Через несколько дней после отъезда Анатоля, Пьер получил записку от князя Андрея, извещавшего '
// // //       'его о своем приезде и просившего Пьера заехать к нему.',
// // //       textDirection: TextDirection.ltr,
// // //       style: TextStyle(fontSize: 24, decoration: TextDecoration.none, color: Colors.white),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: MyContainer(),
// //     );
// //   }
// // }

// // class MyContainer extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       color: Colors.white,
// //       padding: EdgeInsets.only(top: 40, bottom: 10, left: 20, right: 20),
// //       child: MyStack(),
// //     );
// //   }
// // }

// // class MyStack extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Stack(
// //       children: <Widget>[
// //         MyColoredContainer(Colors.blueGrey, 200),
// //         MyColoredContainer(Colors.cyan, 160),
// //         MyColoredContainer(Colors.blue, 100),
// //       ],
// //     );
// //   }
// // }

// // class MyColoredContainer extends StatelessWidget {
// //   final Color color;
// //   final double size;

// //   MyColoredContainer(this.color, this.size);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: size,
// //       height: size,
// //       color: color,
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyContainer(),
//     );
//   }
// }

// class MyContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: MyImage(),
//     );
//   }
// }

// class MyImage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Image.network("https://picsum.photos/250?image=9");
//   }
// }
import 'package:flutter/material.dart';
 
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Image.asset("assets/images/forest2.png"),
      appBar: AppBar(
        title: const Text("METANIT.COM"),
      ),
    ),
  ));
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyButtons(),
//     );
//   }
// }

// class MyButtons extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Alen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextButton(
//               onPressed: () {
//               },
//               child: Text('Text Button'),
//             ),
//             SizedBox(height: 20), 
//             ElevatedButton(
//               onPressed: () {
//               },
//               child: Text('Elevated Button'),
//             ),
//             SizedBox(height: 20),
//             OutlinedButton(
//               onPressed: () {
//               },
//               child: Text('Outlined Button'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
 
// void main() {
//   runApp(MaterialApp(
//       home:  Scaffold(
//         body: TextField(decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             icon: Icon(Icons.login),
//             hintText: "Введите логин",
//             helperText: "Логин используется для входа в систему",
//         )),
//         appBar: AppBar(title: Text("METANIT.COM")))
//   ));
// }

// PRACTICE - 6

// // // // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // // // void main() {
// // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // }

// // // // // // // // // // // class MyApp extends StatelessWidget {
// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // //       home: MyHomePage(),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // class MyHomePage extends StatelessWidget {
// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Scaffold(
// // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // //         title: Text("AlertDialog Example"),
// // // // // // // // // // //       ),
// // // // // // // // // // //       body: Center(
// // // // // // // // // // //         child: ElevatedButton(
// // // // // // // // // // //           onPressed: () {
// // // // // // // // // // //             showMyAlertDialog(context);
// // // // // // // // // // //           },
// // // // // // // // // // //           child: Text("Show AlertDialog"),
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   showMyAlertDialog(BuildContext context) {
// // // // // // // // // // //     showDialog(
// // // // // // // // // // //       context: context,
// // // // // // // // // // //       builder: (BuildContext context) {
// // // // // // // // // // //         return AlertDialog(
// // // // // // // // // // //           title: Text("Election 2020"),
// // // // // // // // // // //           content: Text("Will you vote for Trump?"),
// // // // // // // // // // //           actions: [
// // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // //               child: Text("Yes"),
// // // // // // // // // // //               onPressed: () {
// // // // // // // // // // //                 Navigator.of(context).pop("Yes, Of course!"); 
// // // // // // // // // // //               },
// // // // // // // // // // //             ),
// // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // //               child: Text("No"),
// // // // // // // // // // //               onPressed: () {
// // // // // // // // // // //                 Navigator.of(context).pop("No, I will vote for Biden"); 
// // // // // // // // // // //               },
// // // // // // // // // // //             ),
// // // // // // // // // // //           ],
// // // // // // // // // // //         );
// // // // // // // // // // //       },
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }
// // // // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // // // void main() {
// // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // }

// // // // // // // // // // // class MyApp extends StatelessWidget {
// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // //       home: DefaultTabController(
// // // // // // // // // // //         length: 4,
// // // // // // // // // // //         child: Scaffold(
// // // // // // // // // // //           appBar: AppBar(
// // // // // // // // // // //             bottom: TabBar(
// // // // // // // // // // //               tabs: [
// // // // // // // // // // //                 Tab(icon: Icon(Icons.directions_transit), text: 'Transit'),
// // // // // // // // // // //                 Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
// // // // // // // // // // //                 Tab(icon: Icon(Icons.directions_boat), text: 'Boat'),
// // // // // // // // // // //                 Tab(icon: Icon(Icons.directions_railway), text: 'Railway'),
// // // // // // // // // // //               ],
// // // // // // // // // // //             ),
// // // // // // // // // // //             title: Text('TabBar Example'),
// // // // // // // // // // //           ),
// // // // // // // // // // //           body: TabBarView(
// // // // // // // // // // //             children: [
// // // // // // // // // // //               Icon(Icons.directions_transit),
// // // // // // // // // // //               Icon(Icons.directions_bike),
// // // // // // // // // // //               Icon(Icons.directions_boat),
// // // // // // // // // // //               Icon(Icons.directions_railway),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // // void main() {
// // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // }

// // // // // // // // // // class MyApp extends StatelessWidget {
// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return MaterialApp(
// // // // // // // // // //       home: Scaffold(
// // // // // // // // // //         appBar: AppBar(
// // // // // // // // // //           title: Text('3rd Exercise'),
// // // // // // // // // //         ),
// // // // // // // // // //         body: Center(
// // // // // // // // // //           child: Container(
// // // // // // // // // //             width: 300,
// // // // // // // // // //             height: 200,
// // // // // // // // // //             padding: EdgeInsets.all(10.0),
// // // // // // // // // //             child: Card(
// // // // // // // // // //               shape: RoundedRectangleBorder(
// // // // // // // // // //                 borderRadius: BorderRadius.circular(15.0),
// // // // // // // // // //               ),
// // // // // // // // // //               color: Colors.red,
// // // // // // // // // //               elevation: 10,
// // // // // // // // // //               child: Column(
// // // // // // // // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // //                 children: [
// // // // // // // // // //                   ListTile(
// // // // // // // // // //                     leading: Icon(Icons.album, size: 60),
// // // // // // // // // //                     title: Text(
// // // // // // // // // //                       'Sonu Nigam',
// // // // // // // // // //                       style: TextStyle(fontSize: 30.0),
// // // // // // // // // //                     ),
// // // // // // // // // //                     subtitle: Text(
// // // // // // // // // //                       'Best of Sonu Nigam Music.',
// // // // // // // // // //                       style: TextStyle(fontSize: 18.0),
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                   Row(
// // // // // // // // // //                     mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // //                     children: [
// // // // // // // // // //                       ElevatedButton(
// // // // // // // // // //                         onPressed: () {
// // // // // // // // // //                         },
// // // // // // // // // //                         style: ButtonStyle(
// // // // // // // // // //                           backgroundColor: MaterialStateProperty.all(Colors.grey),
// // // // // // // // // //                         ),
// // // // // // // // // //                         child: Text('Play'),
// // // // // // // // // //                       ),
// // // // // // // // // //                       SizedBox(width: 16.0),
// // // // // // // // // //                       ElevatedButton(
// // // // // // // // // //                         onPressed: () {
// // // // // // // // // //                         },
// // // // // // // // // //                         style: ButtonStyle(
// // // // // // // // // //                           backgroundColor: MaterialStateProperty.all(Colors.grey),
// // // // // // // // // //                         ),
// // // // // // // // // //                         child: Text('Pause'),
// // // // // // // // // //                       ),
// // // // // // // // // //                     ],
// // // // // // // // // //                   ),
// // // // // // // // // //                 ],
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //         ),
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }

// // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // void main() {
// // // // // // // // //   runApp(
// // // // // // // // //     MaterialApp(
// // // // // // // // //       home: Scaffold(
// // // // // // // // //        appBar: AppBar(
// // // // // // // // //           centerTitle: true,
// // // // // // // // //           title: Text('Меню-гамбургер'),
// // // // // // // // //           backgroundColor: Colors.green[600],
// // // // // // // // //         ),
// // // // // // // // //         body: App(),
// // // // // // // // //         drawer: Drawer(
// // // // // // // // //           child: new ListView(
// // // // // // // // //             children: <Widget>[
// // // // // // // // //               new DrawerHeader(
// // // // // // // // //                 margin: EdgeInsets.zero,
// // // // // // // // //                 padding: EdgeInsets.zero,
// // // // // // // // //                 child: UserAccountsDrawerHeader (
// // // // // // // // //                   decoration: BoxDecoration(color: Colors.green),
// // // // // // // // //                   accountName: Text('Мистер Твистер'),
// // // // // // // // //                   accountEmail: Text("home@dartflutter.ru"),
// // // // // // // // //                   currentAccountPicture: Container(
// // // // // // // // //                     decoration: BoxDecoration(
// // // // // // // // //                       shape: BoxShape.rectangle,
// // // // // // // // //                       color: Colors.red,
// // // // // // // // //                     )
// // // // // // // // //                   ),
// // // // // // // // //               ),
// // // // // // // // //                 ),
// // // // // // // // //             new ListTile(
// // // // // // // // //               title: new Text("О себе"),
// // // // // // // // //                 leading: Icon(Icons.account_box),
// // // // // // // // //               onTap: (){}
// // // // // // // // //             ),
// // // // // // // // //             new ListTile(
// // // // // // // // //                 title: new Text("Настройки"),
// // // // // // // // //                 leading: Icon(Icons.settings),
// // // // // // // // //                 onTap: (){}
// // // // // // // // //               )
// // // // // // // // //             ],
// // // // // // // // //       ),
// // // // // // // // //     ),
// // // // // // // // //   )));
// // // // // // // // // }
// // // // // // // // // class App extends StatelessWidget {
// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Container();
// // // // // // // // //   }
// // // // // // // // // }
// // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // void main() {
// // // // // // // //   runApp(MyApp());
// // // // // // // // }

// // // // // // // // class MyApp extends StatelessWidget {
// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return MaterialApp(
// // // // // // // //       home: Scaffold(
// // // // // // // //         appBar: AppBar(
// // // // // // // //           title: Text('ListTile Example'),
// // // // // // // //         ),
// // // // // // // //         body: ListView(
// // // // // // // //           children: <Widget>[
// // // // // // // //             ListTile(
// // // // // // // //               leading: Icon(Icons.map),
// // // // // // // //               title: Text('Map'),
// // // // // // // //             ),
// // // // // // // //             ListTile(
// // // // // // // //               leading: Icon(Icons.photo_album),
// // // // // // // //               title: Text('Album'),
// // // // // // // //             ),
// // // // // // // //             ListTile(
// // // // // // // //               leading: Icon(Icons.phone),
// // // // // // // //               title: Text('Phone'),
// // // // // // // //             ),
// // // // // // // //             ListTile(
// // // // // // // //               leading: Icon(Icons.contacts),
// // // // // // // //               title: Text('Contact'),
// // // // // // // //             ),
// // // // // // // //             ListTile(
// // // // // // // //               leading: Icon(Icons.settings),
// // // // // // // //               title: Text('Setting'),
// // // // // // // //             ),
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // import 'package:flutter/material.dart';

// // // // // // // void main() {
// // // // // // //   runApp(const MyApp());
// // // // // // // }

// // // // // // // class MyApp extends StatelessWidget {
// // // // // // //   const MyApp({Key? key}) : super(key: key);

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return MaterialApp(
// // // // // // //       // Hide the debug banner
// // // // // // //       debugShowCheckedModeBanner: false,
// // // // // // //       title: 'Kindacode.com',
// // // // // // //       theme: ThemeData(),
// // // // // // //       home: const HomePage(),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // class HomePage extends StatefulWidget {
// // // // // // //   const HomePage({Key? key}) : super(key: key);

// // // // // // //   @override
// // // // // // //   State<HomePage> createState() => _HomePageState();
// // // // // // // }

// // // // // // // class _HomePageState extends State<HomePage> {
// // // // // // //   // Generate a list of available hobbies here
// // // // // // //   List<Map> availableHobbies = [
// // // // // // //     {"name": "Football", "isChecked": false},
// // // // // // //     {"name": "Backetball", "isChecked": false},
// // // // // // //     {
// // // // // // //       "name": "Video Games",
// // // // // // //       "isChecked": false,
// // // // // // //     },
// // // // // // //     {"name": "Reading Books", "isChecked": false},
// // // // // // //     {"name": "Surfing The Internet", "isChecked": false}
// // // // // // //   ];

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       appBar: AppBar(
// // // // // // //         title: const Text('Kindacode.com'),
// // // // // // //       ),
// // // // // // //       body: SingleChildScrollView(
// // // // // // //         child: Padding(
// // // // // // //           padding: const EdgeInsets.all(20),
// // // // // // //           child:
// // // // // // //               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
// // // // // // //             const Text(
// // // // // // //               'Choose your hobbies:',
// // // // // // //               style: TextStyle(fontSize: 24),
// // // // // // //             ),
// // // // // // //             const SizedBox(height: 10),
// // // // // // //             const Divider(),
// // // // // // //             const SizedBox(height: 10),

// // // // // // //             // The checkboxes will be here
// // // // // // //             Column(
// // // // // // //                 children: availableHobbies.map((hobby) {
// // // // // // //               return CheckboxListTile(
// // // // // // //                   value: hobby["isChecked"],
// // // // // // //                   title: Text(hobby["name"]),
// // // // // // //                   onChanged: (newValue) {
// // // // // // //                     setState(() {
// // // // // // //                       hobby["isChecked"] = newValue;
// // // // // // //                     });
// // // // // // //                   });
// // // // // // //             }).toList()),

// // // // // // //             // Display the result here
// // // // // // //             const SizedBox(height: 10),
// // // // // // //             const Divider(),
// // // // // // //             const SizedBox(height: 10),
// // // // // // //             Wrap(
// // // // // // //               children: availableHobbies.map((hobby) {
// // // // // // //                 if (hobby["isChecked"] == true) {
// // // // // // //                   return Card(
// // // // // // //                     elevation: 3,
// // // // // // //                     color: Colors.amber,
// // // // // // //                     child: Padding(
// // // // // // //                       padding: const EdgeInsets.all(8.0),
// // // // // // //                       child: Text(hobby["name"]),
// // // // // // //                     ),
// // // // // // //                   );
// // // // // // //                 }

// // // // // // //                 return Container();
// // // // // // //               }).toList(),
// // // // // // //             )
// // // // // // //           ]),
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // // import 'package:flutter/material.dart';

// // // // // // void main() {
// // // // // //   runApp(const MyApp());
// // // // // // }

// // // // // // class MyApp extends StatelessWidget {
// // // // // //   const MyApp({Key? key}) : super(key: key);

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return const MaterialApp(
// // // // // //       // Hide the debug banner
// // // // // //       debugShowCheckedModeBanner: false,
// // // // // //       title: 'Kindacode.com',
// // // // // //       home: HomePage(),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // class HomePage extends StatefulWidget {
// // // // // //   const HomePage({Key? key}) : super(key: key);

// // // // // //   @override
// // // // // //   State<HomePage> createState() => _HomePageState();
// // // // // // }

// // // // // // class _HomePageState extends State<HomePage> {
// // // // // //   // The inital group value
// // // // // //   String _selectedGender = 'male';
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         centerTitle: true,
// // // // // //         title: const Text(
// // // // // //           'Kindacode.com',
// // // // // //         ),
// // // // // //       ),
// // // // // //       body: Padding(
// // // // // //           padding: const EdgeInsets.all(25),
// // // // // //           child: Column(
// // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //             children: [
// // // // // //               const Text('Please let us know your gender:'),
// // // // // //               ListTile(
// // // // // //                 leading: Radio<String>(
// // // // // //                   value: 'male',
// // // // // //                   groupValue: _selectedGender,
// // // // // //                   onChanged: (value) {
// // // // // //                     setState(() {
// // // // // //                       _selectedGender = value!;
// // // // // //                     });
// // // // // //                   },
// // // // // //                 ),
// // // // // //                 title: const Text('Male'),
// // // // // //               ),
// // // // // //               ListTile(
// // // // // //                 leading: Radio<String>(
// // // // // //                   value: 'female',
// // // // // //                   groupValue: _selectedGender,
// // // // // //                   onChanged: (value) {
// // // // // //                     setState(() {
// // // // // //                       _selectedGender = value!;
// // // // // //                     });
// // // // // //                   },
// // // // // //                 ),
// // // // // //                 title: const Text('Female'),
// // // // // //               ),
// // // // // //               const SizedBox(height: 25),
// // // // // //               Text(_selectedGender == 'male' ? 'Hello gentlement!' : 'Hi lady!')
// // // // // //             ],
// // // // // //           )),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';

// // // // // class LinearProgressIndicatorApp extends StatefulWidget {
// // // // //   @override
// // // // //   _LinearProgressIndicatorAppState createState() =>
// // // // //       _LinearProgressIndicatorAppState();
// // // // // }

// // // // // class _LinearProgressIndicatorAppState
// // // // //     extends State<LinearProgressIndicatorApp> {
// // // // //   bool loading = false; // Инициализация поля loading

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text("Flutter Linear Progress Bar"),
// // // // //       ),
// // // // //       body: Center(
// // // // //         child: Container(
// // // // //           padding: EdgeInsets.all(12.0),
// // // // //           child: loading
// // // // //               ? LinearProgressIndicator()
// // // // //               : Text(
// // // // //                   "Press button for downloading",
// // // // //                   style: TextStyle(fontSize: 25),
// // // // //                 ),
// // // // //         ),
// // // // //       ),
// // // // //       floatingActionButton: FloatingActionButton(
// // // // //         onPressed: () {
// // // // //           setState(() {
// // // // //             loading = !loading;
// // // // //           });
// // // // //         },
// // // // //         tooltip: 'Download',
// // // // //         child: Icon(Icons.cloud_download),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // void main() {
// // // // //   runApp(MaterialApp(
// // // // //     home: LinearProgressIndicatorApp(),
// // // // //   ));
// // // // // }
// // // // import 'package:flutter/material.dart';

// // // // void main() => runApp(MyApp());

// // // // class MyApp extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       home: Scaffold(
// // // //         appBar: AppBar(
// // // //           title: Text('Flutter Progress Bar Example'),
// // // //         ),
// // // //         body: Center(
// // // //           child: CircularProgressIndicatorApp(), 
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class CircularProgressIndicatorApp extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return CircularProgressIndicator(
// // // //       backgroundColor: Colors.yellow,
// // // //       strokeWidth: 8,
// // // //     );
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';

// // // void main() => runApp(MyApp());

// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: Scaffold(
// // //         appBar: AppBar(
// // //           title: Text('9 Example'),
// // //         ),
// // //         body: Center(
// // //           child: Column(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: [
// // //               CircularProgressIndicatorApp(),
// // //               SizedBox(height: 20), 
// // //               LinearProgressIndicatorApp(), 
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class CircularProgressIndicatorApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return CircularProgressIndicator(
// // //       backgroundColor: Colors.yellow,
// // //       strokeWidth: 8,
// // //     );
// // //   }
// // // }

// // // class LinearProgressIndicatorApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return LinearProgressIndicator(
// // //       backgroundColor: Colors.blue,
// // //       valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
// // //     );
// // //   }
// // // }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SnackBarPage(),
//     );
//   }
// }

// class SnackBarPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: RaisedButton(
//         child: Text(
//           'Show SnackBar',
//           style: TextStyle(fontSize: 25.0),
//         ),
//         textColor: Colors.white,
//         color: Colors.redAccent,
//         padding: EdgeInsets.all(8.0),
//         splashColor: Colors.grey,
//         onPressed: () {
//           final snackBar = SnackBar(
//             content: Text('Hey! This is a SnackBar message.'),
//             duration: Duration(seconds: 5),
//             action: SnackBarAction(
//               label: 'Undo',
//               onPressed: () {
//               },
//             ),
//           );

//           Scaffold.of(context).showSnackBar(snackBar);
//         },
//       ),
//     );
//   }
// }
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: MyBottomNavigationBar(),
// //     );
// //   }
// // }

// // class MyBottomNavigationBar extends StatefulWidget {
// //   @override
// //   _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
// // }

// // class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
// //   int _selectedlndex = 0;

// //   void _onltemTapped(int index) {
// //     setState(() {
// //       _selectedlndex = index;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home),
// //             title: Text('Home'),
// //             backgroundColor: Colors.green,
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.search),
// //             title: Text('Search'),
// //             backgroundColor: Colors.yellow,
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.person),
// //             title: Text('Profile'),
// //             backgroundColor: Colors.blue,
// //           ),
// //         ],
// //         type: BottomNavigationBarType.shifting,
// //         currentIndex: _selectedlndex,
// //         selectedItemColor: Colors.black,
// //         iconSize: 40,
// //         onTap: _onltemTapped,
// //         elevation: 5,
// //       ),
// //     );
// //   }
// // // }
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: MyTableWidget(),
// //     );
// //   }
// // }

// // class MyTableWidget extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Table Example'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           children: <Widget>[
// //             Container(
// //               margin: EdgeInsets.all(20),
// //               child: Table(
// //                 defaultColumnWidth: FixedColumnWidth(120.0),
// //                 border: TableBorder.all(
// //                   color: Colors.black,
// //                   style: BorderStyle.solid,
// //                   width: 2,
// //                 ),
// //                 children: [
// //                   TableRow(children: [
// //                     Column(children: [Text('Website', style: TextStyle(fontSize: 20.0))]),
// //                     Column(children: [Text('Tutorial', style: TextStyle(fontSize: 20.0))]),
// //                     Column(children: [Text('Review', style: TextStyle(fontSize: 20.0))]),
// //                   ]),
// //                   TableRow(children: [
// //                     Column(children: [Text('Javatpoint')]),
// //                     Column(children: [Text('Flutter')]),
// //                     Column(children: [Text('5*')]),
// //                   ]),
// //                   TableRow(children: [
// //                     Column(children: [Text('Javatpoint')]),
// //                     Column(children: [Text('MySQL')]),
// //                     Column(children: [Text('5*')]),
// //                   ]),
// //                   TableRow(children: [
// //                     Column(children: [Text('Javatpoint')]),
// //                     Column(children: [Text('ReactJS')]),
// //                     Column(children: [Text('5*')]),
// //                   ]),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// class StackAndPositionedDemo extends StatefulWidget {
//   @override
//   _StackAndPositionedDemoState createState() => _StackAndPositionedDemoState();
// }

// class _StackAndPositionedDemoState extends State<StackAndPositionedDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Stack & Positioned Widget'),
//         centerTitle:true,
//       ),
//       body:Container(
//         padding:EdgeInsets.all(10),
//         child:Stack(
//           children: <Widget>[
//             Positioned(
//               top: 30,
//               left: 30,
//               height:250,
//               width: 250,
//               child: Container(
//                 width: 150,
//                 height: 150,
//                 color: Colors.green[300],
//                 child: Text(
//                   'Green',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 70,
//               left:60,
//               width: 250,
//               height: 250,
//               child: Container(
//                 width:150,
//                 height:150,
//                 color: Colors.red[400],
//                 child: Text(
//                   'Red',
//                   style: TextStyle(color: Colors.white,
//                   fontSize: 20),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 130,
//               left: 90,
//               width: 250,
//               height: 250,
//               child: Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.purple[300],
//                 child: Text(
//                   'Purple',
//                   style: TextStyle(color: Colors.white,
//                   fontSize: 20),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


