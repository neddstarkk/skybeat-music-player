import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:skybeat/auth/sign_in.dart';
import 'package:skybeat/screens/bottom_nav_bar.dart';
import 'package:skybeat/screens/welcome_screen/widgets/animated_text.dart';
import 'package:skybeat/utils/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xFF2E2870), end: Color(0xFF3072AC))),
      Track("color2").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xFF3072AC), end: Color(0xFFC23061))),
      Track("color3").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xFFC23061), end: Color(0xFF2E2870))),
    ]);

    return Scaffold(
      body: ControlledAnimation(
        playback: Playback.MIRROR,
        tween: tween,
        duration: tween.duration,
        builder: (context, animation) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                animation["color1"],
                animation["color2"],
                animation["color3"],
              ], begin: Alignment.topRight, end: Alignment.bottomRight),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 7),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'TUNE IN         ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical * 7,
                          ),
                        ),
                        AnimatedText(text: "TOGETHER",),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 7,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: SizeConfig.blockSizeVertical * 4.7,
                        width: SizeConfig.blockSizeHorizontal * 86,
                        child: FlatButton(
                          color: Color(0xFF1553C6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BottomBarScreenController(),
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
                        height: SizeConfig.blockSizeVertical * 1.2,
                      ),
                      Container(
                        height: SizeConfig.blockSizeVertical * 4.7,
                        width: SizeConfig.blockSizeHorizontal * 86,
                        child: FlatButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            signInWithGoogle().whenComplete(() => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BottomBarScreenController(),
                              ),
                            ));
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
                        height: SizeConfig.blockSizeVertical * 2,
                      ),
                      Text(
                        'By clicking log in, you agree to our Privacy Policy and Terms of Service',
                        style: TextStyle(color: Colors.grey, fontSize: SizeConfig.safeBlockHorizontal * 2.5),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 2,
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
