import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:alquran/screens/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, CupertinoPageRoute(builder: (context) => homePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF175B32),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 100,
            child: Center(
              child: Text(
                'Al Quran',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Days',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
