import 'package:flutter/material.dart';

class Genre {
  final String genreName;
  final Color color;
  final String image;

  Genre({this.color, this.genreName, this.image});
}

class GenreSelector extends StatelessWidget {
  final List<Genre> _genres = [
    Genre(
      color: Color(0xFFC74668),
      genreName: "Romance",
      image:
          "https://www.ecopetit.cat/wpic/mpic/315-3155081_aesthetic-rose.jpg",
    ),
    Genre(
      color: Color(0xFF4B8ABD),
      genreName: "Bollywood",
      image:
          "https://i.pinimg.com/originals/ed/f1/2a/edf12a77a3a6559fa706176068cdc22f.jpg",
    ),
    Genre(
      color: Color(0xFFC5554A),
      genreName: "Calm",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSuFBO-sRThN6gHmKbhNbm__kLCLzLw0gLHWYBxdnckw5ROmM_P",
    ),
    Genre(
      color: Color(0xFF4BBD5D),
      genreName: "Travel",
      image:
          "https://66.media.tumblr.com/85428b4500861e04eb742454479c399c/tumblr_pcfucy5Kza1xy4ozho1_400.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 150.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _genres.length,
              itemBuilder: (context, index) => Container(
                width: 150.0,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: _genres[index].color,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20.0,
                        ),
                        Text("${_genres[index].genreName}"),
                      ],
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 90.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(150.0),
                              bottomRight: Radius.circular(15.0)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(150.0),
                              bottomRight: Radius.circular(15.0)),
                          child: Image.network(
                            _genres[index].image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
