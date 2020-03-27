import 'package:flutter/material.dart';

class Charts {
  final String chartName;
  final String imageOnRight;
  final String imageOnLeft;

  Charts({this.chartName, this.imageOnLeft, this.imageOnRight});
}

class SkybeatCharts extends StatelessWidget {
  final List<Charts> _charts = [
    Charts(
      chartName: "Skybeat\nTop 30",
      imageOnLeft:
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/album-cover-design-template-c371e7b0504a63f89802d5e7bd491950_screen.jpg?ts=1567445462",
      imageOnRight: "https://images.theconversation.com/files/258026/original/file-20190208-174861-nms2kt.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip",
    ),
    Charts(
      chartName: "New Release\nHot 20",
      imageOnLeft:
      "https://i.pinimg.com/originals/3a/f0/e5/3af0e55ea66ea69e35145fb108b4a636.jpg",
      imageOnRight: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/jazz-dark-album-cover-template-966020e215ba3c34a2b5d68b2d386cd7.jpg?ts=1561547030",
    ),
    Charts(
      chartName: "Punjabi\nTop 20",
      imageOnLeft:
      "https://www.newsfolo.com/wp-content/uploads/2017/07/19985179_861485617360223_8947267981172277248_n-810x810.jpg",
      imageOnRight: "https://a10.gaanacdn.com/images/albums/23/2031423/crop_480x480_1542003985_2031423.jpg",
    ),
    Charts(
      chartName: "Hindi\nTop 20",
      imageOnLeft:
      "https://www.lyricsmaze.com/files/lyrics_images/d1/9457fc28ceb408103e13533e4a5b6bd11582213197.jpeg",
      imageOnRight: "https://m.media-amazon.com/images/M/MV5BMjJmOWZmNzItZjM4MC00NjQxLWE4ZGQtNGZmZTZiNzgxOTBmXkEyXkFqcGdeQXVyNjE1OTQ0NjA@._V1_.jpg",
    ),
    Charts(
      chartName: "English\nTop 20",
      imageOnLeft:
      "https://www.nme.com/wp-content/uploads/2016/10/2013BlurThinkTank600G120313-1.jpg",
      imageOnRight: "https://upload.wikimedia.org/wikipedia/en/3/3c/The_Vaccines_English_Graffiti_Album_Cover.jpg",
    ),
    Charts(
      chartName: "Romance\nTop 20",
      imageOnLeft:
      "https://upload.wikimedia.org/wikipedia/en/3/3f/All-the-little-lights.jpg",
      imageOnRight: "https://s.mxmcdn.net/images-storage/albums/9/0/4/9/6/1/31169409_350_350.jpg",
    ),
    Charts(
      chartName: "New India\nTop 20",
      imageOnLeft:
      "https://a10.gaanacdn.com/gn_img/albums/10q3Z1K52r/0q3ZYN1K52/size_xxl.webp",
      imageOnRight: "https://is3-ssl.mzstatic.com/image/thumb/Music/v4/8e/21/e1/8e21e19a-0081-82a2-1112-c6e9f2ce497a/source/1200x1200bb.jpg",
    ),
    Charts(
      chartName: "Indie\nTop 20",
      imageOnLeft:
      "https://i.pinimg.com/originals/7f/58/da/7f58da4261c4241aff384a8e70f6e7be.png",
      imageOnRight: "https://cdn3.pitchfork.com/albums/21847/homepage_large.611afec6.jpg",
    ),
  ];

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
              itemCount: _charts.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(left: 20.0),
                width: 230.0,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.3),
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
                              "${_charts[index].chartName}",
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
                              angle: 351.71,
                              origin: Offset(0,-50),
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0),
                                height: 65.0,
                                width: 65.0,
                                child: Image.network(
                                  "${_charts[index].imageOnLeft}",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Container(
                              height: 85.0,
                              width: 75.0,
                              child: Image.network(
                                "${_charts[index].imageOnRight}",
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
