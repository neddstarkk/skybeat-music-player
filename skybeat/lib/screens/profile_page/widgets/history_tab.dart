import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skybeat/screens/profile_page/widgets/shimmer.dart';
import 'package:skybeat/utils/size_config.dart';

class HistoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Color(0xFF131017),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xFF1B181F),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.blockSizeVertical * 2.5,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal * 4,
                ),
                GestureDetector(
                  onTap: () {
                    print("PLAY button pressed");
                  },
                  child: Container(
                    height: SizeConfig.blockSizeVertical * 4.5,
                    width: SizeConfig.blockSizeHorizontal * 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          SizeConfig.blockSizeVertical * 3),
                      color: Colors.black87,
                    ),
                    child: Center(
                      child: Shimmer(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.play_arrow,
                              size: SizeConfig.blockSizeVertical * 2,
                            ),
                            Text("Click to play")
                          ],
                        ),
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.greenAccent]),
                        period: Duration(seconds: 3),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    print("Select icon pressed");
                  },
                  child: Icon(
                    FontAwesomeIcons.tasks,
                    color: Color(0xFF6D6977),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal * 4,
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 2,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Row(
                    children: <Widget>[
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal * 4,
                        height: SizeConfig.blockSizeVertical * 9,
                      ),
                      Container(
                        height: SizeConfig.blockSizeVertical * 7,
                        width: SizeConfig.blockSizeHorizontal * 14,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal * 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Song Name",
                            style: TextStyle(
                                color: Color(0xFFCFCAD1),
                                fontSize: SizeConfig.safeBlockHorizontal * 3.5),
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical,
                          ),
                          Text(
                            "Artist Name \u00b7 Album Name",
                            style: TextStyle(
                              color: Color(0xFF6D6977),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                        child: Icon(
                          Icons.more_vert,
                          size: SizeConfig.blockSizeVertical * 3,
                          color: Color(0xFF6D6977),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal * 4,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
