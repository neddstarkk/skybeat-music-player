import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_animations/simple_animations.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xFF0A0D33), end: Color(0xFF822B7B))),
      Track("color2").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xFF822B7B), end: Color(0xFF0A0D33))),
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
                  animation["color1"], animation["color2"]
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
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                  ),
                  Column(
                    children: <Widget>[
                      FlatButton(
                        padding:
                        EdgeInsets.symmetric(horizontal: 150.0, vertical: 15.0),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.facebookF),
                            Text(
                              '  Sign in with facebook',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      FlatButton(
                        padding:
                        EdgeInsets.symmetric(horizontal: 150.0, vertical: 15.0),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        onPressed: () {},
                        child: Row(
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
                      SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        'By clicking log in, you agree to our Privacy Policy and Terms of Service',
                        style: TextStyle(color: Colors.grey, fontSize: 10.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      )
      ,
    );
  }
}
