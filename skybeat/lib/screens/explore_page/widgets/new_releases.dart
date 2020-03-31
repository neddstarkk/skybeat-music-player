import 'package:flutter/material.dart';

class NewReleases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      width: MediaQuery.of(context).size.width - 20,
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white70.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "New Releases for you",
                      style: TextStyle(
                        color: Color(0xFFCFCAD1),
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "View all  ",
                          style: TextStyle(
                              color: Color(0xFF6D69A7), fontSize: 15.0),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15.0,
                        color: Color(0xFF6D69A7),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.play_circle_filled,
                  size: 40.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 20.0,
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                    ),
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Image.network(
                            "https://rukminim1.flixcart.com/image/832/832/jnm2efk0/music/t/e/h/audio-cd-cap-standard-edition-ek-main-aur-ekk-tu-original-imafa8cyr8krvhgf.jpeg?q=70",
                            fit: BoxFit.cover,
                          ),
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.play_arrow,
                            size: 30.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                    width: 0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 130,
                        child: RichText(
                          text: TextSpan(text: "Ekk Main Aur Ekk Tuu"),
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                      Container(
                        width: 130,
                        child: RichText(
                          text:
                              TextSpan(text: "Benny Dayal, Anushka Manchanda"),
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Image.network(
                            "https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/b2/4b/c1/b24bc118-1993-1ee3-68d6-bf5f8e665ced/source/1200x1200bb.jpg",
                            fit: BoxFit.cover,
                          ),
                          height: 160,
                          width: 160,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.play_arrow,
                            size: 30.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("I'm so tired"),
                      Container(
                        width: 130,
                        child: RichText(
                          text: TextSpan(text: "Lauv"),
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Worth_it_single_cover.png/220px-Worth_it_single_cover.png",
                          fit: BoxFit.cover,
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Icon(
                              Icons.play_arrow,
                              size: 30.0,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Worth It"),
                      Container(
                        width: 130,
                        child: RichText(
                          text: TextSpan(text: "Fifth Harmony1"),
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
