import 'package:flutter/material.dart';

class PlaylistCreator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Color(0xFF1B181F),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "My Playlists",
                      style:
                          TextStyle(fontSize: 20.0, color: Color(0xFFCFCAD1)),
                    ),
                    Spacer(),
                    Container(
                      height: 30.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            child: Icon(
                              Icons.add,
                              size: 30.0,
                              color: Color(0xFFCFCAD1),
                            ),
                            onTap: () {
                              print("+ icon pressed");
                            },
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.reorder,
                              size: 30.0,
                              color: Color(0xFFCFCAD1),
                            ),
                            onTap: () {
                              print("List icon pressed");
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.black),
                      child: Stack(
                        children: <Widget>[
                          Image.network(
                            'https://monodomo.com/free-wallpapers/colorful-music-note-wallpapers-desktop-For-Free-Wallpaper.jpg',
                            height: 70.0,
                            width: 70.0,
                          ),
                          Center(
                            child: Icon(
                              Icons.play_arrow,
                              size: 40.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Favorite songs",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFCFCAD1),
                            fontSize: 18.0
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          "0 songs",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF6D6977),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
