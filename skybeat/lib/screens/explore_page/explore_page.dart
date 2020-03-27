import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';
import 'package:skybeat/screens/explore_page/widgets/genre_selector.dart';
import 'package:skybeat/screens/explore_page/widgets/playlists.dart';
import 'package:skybeat/screens/explore_page/widgets/searchbar.dart';
import 'package:skybeat/screens/explore_page/widgets/skybeat_charts.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xFF170C45), end: Color(0xFF580038))),
      Track("color2").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xFF24093C), end: Color(0xFF170C45))),
    ]);

    return Scaffold(
      body: Stack(
        overflow: Overflow.clip,
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
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).padding.top + 30),
                SearchBar(),
                SizedBox(
                  height: 25.0,
                ),
                GenreSelector(),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Skybeat Charts",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Color(0xFFCDCED3),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                SkybeatCharts(),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Playlists For You",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Color(0xFFCDCED3),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Playlists(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
