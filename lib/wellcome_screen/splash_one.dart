import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image(
            height: 100.0,
            image: AssetImage('images/image2.png'),
          ),
          Text(
            "App Name",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
      splashIconSize: 200.0,
      duration: 2000,
      nextScreen: Home(),
      splashTransition: SplashTransition.slideTransition,
    );
  }
}
