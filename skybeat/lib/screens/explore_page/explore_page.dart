import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(
          Duration(seconds: 3),
          ColorTween(
              begin: Color(0xFF173179).withOpacity(1),
              end: Color(0xFF68377E).withOpacity(1))),
      Track("color2").add(
          Duration(seconds: 3),
          ColorTween(
              begin: Color(0xFF68377E).withOpacity(1),
              end: Color(0xFF173179).withOpacity(1))),
    ]);

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ControlledAnimation(
              playback: Playback.MIRROR,
              tween: tween,
              duration: tween.duration,
              builder: (context, animation) => Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          animation["color1"],
                          animation["color2"],
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.topLeft,
                      ),
                    ),
                  )),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).padding.top + 30),
              Container(
                height: 40.0,
                width: MediaQuery.of(context).size.width - 70,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(Icons.search, color: Color(0xFF707EA8),),
                    SizedBox(width: 10.0,),
                    Text("Search", style: TextStyle(color: Color(0xFF707EA8)),)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
