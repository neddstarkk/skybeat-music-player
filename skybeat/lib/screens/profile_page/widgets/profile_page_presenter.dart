import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:skybeat/screens/profile_page/notification_page.dart';

class ProfilePagePresenter extends StatelessWidget {
  final String title;
  final double barHeight = 50.0;

  ProfilePagePresenter({this.title});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xFF170C45), end: Color(0xFF580038))),
      Track("color2").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xFF24093C), end: Color(0xFF170C45))),
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Container(
          padding: EdgeInsets.only(top: statusBarHeight),
          height: 227.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationPage(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.notifications_none,
                        color: Color(0xFFCFCAD1),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Settings button pressed");
                      },
                      child: Icon(
                        Icons.settings,
                        color: Color(0xFFCFCAD1),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    )
                  ],
                ),
              ),
              Column(
//                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      CircleAvatar(
                        child: Icon(Icons.person),
                        radius: 30.0,
                        backgroundColor: Colors.grey.shade800,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "    $title",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Color(0xFFCFCAD1),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Teko"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 13.0),
                        child: GestureDetector(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFCFCAD1),
                          ),
                          onTap: () {
                            print("Arrow pressed");
                          },
                        ),
                      )
                    ],
                  ),
                  TabBar(
                    indicatorColor: Colors.pinkAccent,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Color(0xFFCFCAD1),
                    unselectedLabelColor: Color(0xFF6D6977),
                    tabs: <Widget>[
                      Tab(
                        text: "Library",
                      ),
                      Tab(text: "Artist"),
                      Tab(text: "Download"),
                      Tab(text: "History"),
                    ],
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [animation["color1"], animation["color2"]],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft),
          ),
        );
      },
    );
  }
}
