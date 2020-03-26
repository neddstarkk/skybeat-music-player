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
              itemCount: 1,
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
                        height: 85.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(150.0),
                              bottomRight: Radius.circular(15.0)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(150.0),
                            bottomRight: Radius.circular(15.0)
                          ),
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
