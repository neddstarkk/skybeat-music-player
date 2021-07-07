import 'package:flutter/material.dart';
import 'package:skybeat/utils/size_config.dart';

class NewReleases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      height: SizeConfig.blockSizeVertical * 33,
      width: SizeConfig.screenWidth - 20,
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white70.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 4),
                    child: Text(
                      "New Releases for you",
                      style: TextStyle(
                          color: Color(0xFFCFCAD1),
                          fontSize: SizeConfig.safeBlockHorizontal * 4),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2),
                        child: Text(
                          "View all  ",
                          style: TextStyle(
                              color: Color(0xFF6D69A7),
                              fontSize: SizeConfig.safeBlockHorizontal * 3.3),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: SizeConfig.blockSizeHorizontal * 3,
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
                  size: SizeConfig.blockSizeVertical * 4,
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: SizeConfig.blockSizeHorizontal * 5.4,
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: SizeConfig.blockSizeVertical * 13,
                    width: SizeConfig.blockSizeHorizontal * 26,
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
                          height: SizeConfig.blockSizeVertical * 13,
                          width: SizeConfig.blockSizeHorizontal * 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.play_arrow,
                            size: SizeConfig.blockSizeVertical * 3,
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
                    height: SizeConfig.blockSizeVertical * 16,
                    width: SizeConfig.blockSizeHorizontal * 34,
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
                          height: SizeConfig.blockSizeVertical * 16,
                          width: SizeConfig.blockSizeHorizontal * 34,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.play_arrow,
                            size: SizeConfig.blockSizeVertical * 3,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("I'm so tired"),
                      Container(
                        width: SizeConfig.blockSizeHorizontal * 26,
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
                    height: SizeConfig.blockSizeVertical * 13,
                    width: SizeConfig.blockSizeHorizontal * 26,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Worth_it_single_cover.png/220px-Worth_it_single_cover.png",
                            fit: BoxFit.cover,
                          ),
                          height: SizeConfig.blockSizeVertical * 13,
                          width: SizeConfig.blockSizeHorizontal * 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.play_arrow,
                            size: SizeConfig.blockSizeVertical * 3,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 2, top: SizeConfig.blockSizeVertical ),
                        width: SizeConfig.blockSizeHorizontal * 26,
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(text: "Worth It"),
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal),
                        width: SizeConfig.blockSizeHorizontal * 25,
                        child: RichText(
                          text:
                              TextSpan(text: "Fifth Harmony"),
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
