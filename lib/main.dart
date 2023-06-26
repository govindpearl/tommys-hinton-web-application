import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Splash_Screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'InAppWebView Example',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: SplashScreen(),
    );
  }
}




