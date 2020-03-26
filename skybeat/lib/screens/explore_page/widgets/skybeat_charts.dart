import 'dart:ui';

import 'package:flutter/material.dart';

class SkybeatCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 170.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(left: 20.0),
                width: 230.0,
                decoration: BoxDecoration(
                  color: Color(0xFF231F2D).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 170,
                      width: 230,
                    ),
                    Column(
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
                              "SkyBeat\nTop 30",
                              style: TextStyle(
                                color: Color(0xFFCFCAD1),
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Transform.rotate(
                              angle: 351.6,
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0),
                                height: 75.0,
                                width: 65.0,
                                child: Image.network(
                                    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/album-cover-design-template-c371e7b0504a63f89802d5e7bd491950_screen.jpg?ts=1567445462", fit: BoxFit.fitHeight,),
                              ),
                            ),
                            Container(
                              height: 85.0,
                              width: 75.0,
                              child: Image.network(
                                "https://images.theconversation.com/files/258026/original/file-20190208-174861-nms2kt.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
