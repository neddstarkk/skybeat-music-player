import 'package:flutter/material.dart';
import 'package:skybeat/screens/profile_page/widgets/playlist_creator.dart';

class LibraryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Color(0xFF131017),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          PlaylistCreator(),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height-533,
            decoration: BoxDecoration(
                color: Color(0xFF1B181F),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Favourites",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFCFCAD1)
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Playlists you create will appear\n here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF6D6977),
                      fontSize: 16.0
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
