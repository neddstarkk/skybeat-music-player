import 'package:flutter/material.dart';

class MusicHome extends StatefulWidget {
  const MusicHome({Key key}) : super(key: key);

  @override
  _MusicHomeState createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent.withOpacity(0.0),
        elevation: 0,
        title: Text(
          "Your Daily Mix",
          style: TextStyle(color: Color(0xFFCDCED3), fontSize: 15.0),
        ),
        centerTitle: true,
        actions: <Widget>[
          Icon(
            Icons.more_horiz,
          ),
          SizedBox(
            width: 10.0,
          )
        ],
        leading: Icon(Icons.sort),
      ),
      body: Stack(),
    );
  }
}
