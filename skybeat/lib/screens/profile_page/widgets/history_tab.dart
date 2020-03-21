import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              height: 25.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    print("PLAY button pressed");
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.red,
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
                  width: 20.0,
                )
              ],
            ),
            SizedBox(
              height: 20.0,
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
                        width: 20.0, height: 90.0,
                      ),
                      Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Song Name",
                            style: TextStyle(
                                color: Color(0xFFCFCAD1), fontSize: 18.0),
                          ),
                          SizedBox(height: 10.0,),
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
                        child: Icon(Icons.more_vert,size: 30.0, color: Color(0xFF6D6977),),
                      ),
                      SizedBox(width: 20.0,)
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
