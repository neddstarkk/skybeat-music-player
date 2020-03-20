import 'package:flutter/material.dart';

class Artist {
  Artist({this.artistName, this.image, this.noOfSongs});

  final String artistName;
  final int noOfSongs;
  final String image;
}

class ArtistTab extends StatelessWidget {
  final List<Artist> _artists = [
    Artist(
        artistName: "Selena Gomez",
        noOfSongs: 17,
        image:
            "https://mtv.mtvnimages.com/uri/mgid:ao:image:mtv.com:105097?quality=0.8&format=jpg&width=1440&height=810&.jpg"),
    Artist(
        artistName: "One Direction",
        noOfSongs: 162,
        image: "https://images.alphacoders.com/479/thumb-350-479069.jpg"),
    Artist(
        artistName: "Zayn",
        noOfSongs: 131,
        image:
            "https://www.much.com/wp-content/uploads/2016/03/ZaynHeader-2-770x433.jpg"),
    Artist(
        artistName: "Halsey",
        noOfSongs: 20,
        image:
            "https://www.capitolrecords.com/files/2019/09/HalseyGraveyardAlbumArt-1024x1024.jpg"),
    Artist(
        artistName: "Bebe Rexha",
        noOfSongs: 196,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRQaguewDTpKPoUGXckVLPjKeiWIpH6ZHZvU_7sHBj7nQ0AgWzM"),
    Artist(
        artistName: "Ed Sheeran",
        noOfSongs: 278,
        image:
            "https://i.pinimg.com/originals/f7/91/10/f791105b091573343c972cbdab7c774d.jpg"),
    Artist(
        artistName: "Fifth Harmony",
        noOfSongs: 125,
        image:
            "https://static.billboard.com/files/media/fifth-harmony-perform-on-jimmy-kimmel-live-2016-billboard-1548-compressed.jpg"),
    Artist(
        artistName: "Camila Cabello",
        noOfSongs: 78,
        image:
            "https://static.billboard.com/files/media/Camila-Cabello-press-by-Amanda-Charchian-2020-billboard-1548-1024x677.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Color(0xFF131019),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(20.0),
          color: Color(0xFF1B181F),
        ),
        child: ListView.builder(
          itemCount: _artists.length,
          itemBuilder: (context, index) {
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
                        backgroundImage: NetworkImage(_artists[index].image),
                        radius: 35.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            _artists[index].artistName,
                            style: TextStyle(
                                color: Color(0xFFCFCAD1), fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "${_artists[index].noOfSongs} songs",
                            style: TextStyle(
                              color: Color(0xFF6D6977),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
