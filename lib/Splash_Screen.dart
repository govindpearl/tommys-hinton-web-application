
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Main_Home_Page.dart';
import 'Screens/Home_Page.dart';



class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Set preferred orientations to portrait only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Splash Screen Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      // routes: {
      //   '/main': (context) => MyHomePage(),
      // },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay before navigating to the main screen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>signinscreen()));
      // Navigator.pushReplacementNamed(context, '/main');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
         // height: double.infinity,
         // width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splash.png"),
               // fit: BoxFit.cover,
              )),
        )
  /*         Center(
        child: Text(
          'Welcome to Hinton',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),*/
    );
  }
}

