import 'package:flutter/material.dart';
import 'package:skybeat/screens/splash_screen/splash_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF000731),
        backgroundColor: Color(0xFF000731),
      ),
      home: SplashScreen(),
    );
  }
}
