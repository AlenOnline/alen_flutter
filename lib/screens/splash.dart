// import 'dart:async';
// import 'package:exal/screens/auth/sign_in_screen.dart';
// import 'package:exal/screens/home/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import 'package:get/get.dart';

// String finalEmail;


// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createstate() => _SplashScreenState();
  
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     Timer(Duration(seconds: 2), () => Get.to(HomeScreen()));
//     super.initState();
// }

// Future getValidationData() async {
//   final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   var obtainedEmail = sharedPreferences.getString('email');
//   setState(() {
//     finalEmail = obtainedEmail!;
//   });
//   print(finalEmail);
// }
 

// @override
// Widget build(BuildContext context) {
// return Scaffold(
//   body: Center(
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//       CircleAvatar(
//         child: Icon(Icons.local_activity),
//         radius: 50.0,
//       ),
//       Padding(
//         padding: const EdgeInsets.only(top: 8.0),
//         child: CircularProgressIndicator(
//           backgroundColor: Colors.white
//         ),
//       )
//       ]
//     )
//   )
// );
// }
// }