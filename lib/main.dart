import 'package:covid/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 20.0, fontFamily: 'Hind',color: Colors.black),
        ),
      ),
      home: SplashScreenWidget(),
    );
  }
}