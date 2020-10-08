import 'package:flutter/material.dart';
import 'package:skybeat/utils/size_config.dart';

class PlaylistCreator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      height: SizeConfig.blockSizeVertical * 20,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(SizeConfig.blockSizeHorizontal * 5),
            bottomLeft: Radius.circular(SizeConfig.blockSizeHorizontal * 5)),
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
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal * 3,
                    ),
                    Text(
                      "My Playlists",
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 4,
                          color: Color(0xFFCFCAD1)),
                    ),
                    Spacer(),
                    Container(
                      height: SizeConfig.blockSizeVertical * 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            child: Icon(
                              Icons.add,
                              size: SizeConfig.blockSizeHorizontal * 5.5,
                              color: Color(0xFFCFCAD1),
                            ),
                            onTap: () {
                              print("+ icon pressed");
                            },
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 2,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.reorder,
                              size: SizeConfig.blockSizeHorizontal * 5.5,
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
                      width: SizeConfig.blockSizeHorizontal * 4,
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal * 4,
                    ),
                    Container(
                      height: SizeConfig.blockSizeVertical * 7,
                      width: SizeConfig.blockSizeHorizontal * 14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              SizeConfig.blockSizeVertical),
                          color: Colors.black),
                      child: Stack(
                        children: <Widget>[
                          Image.network(
                            'https://monodomo.com/free-wallpapers/colorful-music-note-wallpapers-desktop-For-Free-Wallpaper.jpg',
                            height: SizeConfig.blockSizeVertical * 7,
                            width: SizeConfig.blockSizeHorizontal * 14,
                          ),
                          Center(
                            child: Icon(
                              Icons.play_arrow,
                              size: SizeConfig.blockSizeVertical * 4,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal * 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Favorite songs",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xFFCFCAD1), fontSize: SizeConfig.safeBlockHorizontal * 3.5),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical,
                        ),
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
