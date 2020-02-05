import 'package:flutter/material.dart';
import 'dart:async';

import 'package:skybeat/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WelcomeScreen();
            },
          ),
        )
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF00051F),
              Color(0xFF000731),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.account_balance,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Skybeat',
                  style: TextStyle(
                      fontFamily: 'Teko',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.0),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
