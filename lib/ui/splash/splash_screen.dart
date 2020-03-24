import 'package:covid/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 2,
          navigateAfterSeconds: new HomeScreen(),
          backgroundColor: Colors.white,
          loaderColor: Colors.white,
        ),
        Center(
          child: Container(
            height: 250,
            width: 250,
            child: Image.asset('assets/GNR.jpeg'),
          ),
        ),
      ],
    );
  }
}
