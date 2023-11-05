import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alquran/screens/homeScreen.dart';
import 'package:alquran/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Days"),
      home: SplashScreen(),
      routes: {
        '/home': (context) => homePage(),
      },
    );
  }
}
