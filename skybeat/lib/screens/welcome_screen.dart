import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:skybeat/screens/bottom_nav_bar.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xFF0A0D33), end: Color(0xFFDF0F90))),
      Track("color2").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xFFDF0F90), end: Colors.blue.shade500)),
      Track("color3").add(Duration(seconds: 3),
          ColorTween(begin: Colors.blue.shade500, end: Color(0xFF0A0D33))),
    ]);

    return Scaffold(
      body: ControlledAnimation(
        playback: Playback.MIRROR,
        tween: tween,
        duration: tween.duration,
        builder: (context, animation) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  animation["color1"],
                  animation["color2"],
                  animation["color3"]
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 75.0),
                    child: Text(
                      'TUNE IN         \nTOGETHER',
                      style: TextStyle(
//                  fontFamily: 'Teko',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 70.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 45.0,
                        width: 425.0,
                        child: FlatButton(
                          color: Color(0xFF1553C6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomBarScreenController(),
                              ),
                            );
                          },
                          splashColor: Colors.grey.shade400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(FontAwesomeIcons.facebookF),
                              Text(
                                'Sign in with facebook',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                        width: 5.0,
                      ),
                      Container(
                        height: 45.0,
                        width: 425.0,
                        child: FlatButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomBarScreenController(),
                              ),
                            );
                          },
                          splashColor: Colors.grey.shade400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.google,
                                color: Colors.black,
                              ),
                              Text(
                                '  Sign in with Google',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'By clicking log in, you agree to our Privacy Policy and Terms of Service',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
