import 'package:flutter/material.dart';
import 'package:skybeat/screens/profile_page/widgets/playlist_creator.dart';
import 'package:skybeat/utils/size_config.dart';

class LibraryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      height: SizeConfig.screenHeight,
      color: Color(0xFF131017),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          PlaylistCreator(),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: SizeConfig.screenHeight - 533,
            decoration: BoxDecoration(
              color: Color(0xFF1B181F),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(SizeConfig.blockSizeHorizontal * 5),
                topLeft: Radius.circular(SizeConfig.blockSizeHorizontal * 5),
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: SizeConfig.blockSizeHorizontal * 4),
                    Text(
                      "Favourites",
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 4,
                          color: Color(0xFFCFCAD1)),
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 5,
                ),
                Text(
                  "Playlists you create will appear\n here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF6D6977),
                      fontSize: SizeConfig.safeBlockHorizontal * 3.3),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
