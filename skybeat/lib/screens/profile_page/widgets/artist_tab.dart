import 'package:flutter/material.dart';

class ArtistTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Color(0xFF131019),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color(0xFF232027),
        ),
        child: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, count) {
            return Container(
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
                      CircleAvatar(
                        backgroundImage: NetworkImage("https://mtv.mtvnimages.com/uri/mgid:ao:image:mtv.com:105097?quality=0.8&format=jpg&width=1440&height=810&.jpg"),
                        radius: 40.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Selena Gomez",
                            style: TextStyle(
                                color: Color(0xFFCFCAD1), fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "17 songs",
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
            );
          },
        ),
      ),
    );
  }
}
