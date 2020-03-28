import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF201E24),
      body: DefaultTabController(
        length: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0, top: 10.0),
                    child: Text(
                      "Notifications",
                      style: TextStyle(color: Color(0xFFD1CFD5), fontSize: 20),
                    ),
                  ),
                  Spacer()
                ],
              ),
            ),
            TabBar(
              indicatorColor: Colors.pinkAccent,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Color(0xFFCFCAD1),
              unselectedLabelColor: Color(0xFF6D6977),
              tabs: <Widget>[
                Tab(
                  text: "You",
                ),
                Tab(
                  text: "Official",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Container(
                    color: Color(0xFF1B181F),
                    child: Center(
                      child: Text(
                        "You haven't received any notifications yet",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color(0xFF6D6977), fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFF1B181F),
                    child: Center(
                      child: Text(
                        "You haven't received any notifications yet",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color(0xFF6D6977), fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
