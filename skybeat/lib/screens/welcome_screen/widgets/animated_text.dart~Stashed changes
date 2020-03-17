import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  final String text;

  AnimatedText({@required this.text});

  @override
  _AnimatedTextState createState() => _AnimatedTextState(text: text);
}

class _AnimatedTextState extends State<AnimatedText>
    with SingleTickerProviderStateMixin {
  _AnimatedTextState({this.text});

  String text;
  double opacity = 0.0;
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = Tween<double>(begin: 0, end: 1).animate(controller)..addListener(() {
      setState(() {
        opacity = animation.value;
      });
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 1000),
      opacity: opacity,
      child: Text(
        "$text   ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 70.0,
        ),
      ),
    );
  }
}
