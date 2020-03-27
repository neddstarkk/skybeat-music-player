import 'package:flutter/material.dart';

class Playlist {
  final String playlistName;
  final String genre;
  final String image;

  Playlist({this.image, this.genre, this.playlistName});
}

class Playlists extends StatelessWidget {
  final List<Playlist> _playlists = [
    Playlist(
        playlistName: "Punjabi Madhouse",
        genre: "Pop \u00b7 Party",
        image:
            "https://i.pinimg.com/originals/85/0b/dc/850bdcfc75c370422f72a65d2fc5ddfc.jpg"),
    Playlist(
        playlistName: "Strictly Deep House ",
        genre: "Excited \u00b7 Dance \u00b7 Party",
        image:
            "https://besthqwallpapers.com/img/original/119707/dj-console-dj-work-concepts-dance-party-dj-view-from-the-height.jpg"),
    Playlist(
        playlistName: "Drive Time Tunes",
        genre: "Drive \u00b7 Karaoke \u00b7 Calm",
        image:
            "https://assets3.thrillist.com/v1/image/2674681/size/tmg-facebook_social.jpg"),
    Playlist(
        playlistName: "No Pain No Gain",
        genre: "Excited \u00b7 Workout \u00b7 Motivation",
        image:
            "https://images.unsplash.com/photo-1517836357463-d25dfeac3438?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: SizedBox(
        height: (MediaQuery.of(context).size.height - 400),
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _playlists.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 15.0,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(
                        left: 10.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        "${_playlists[index].image}",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 2.5,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 27.0,
                        ),
                        Text(
                          "${_playlists[index].playlistName}",
                          style: TextStyle(
                            color: Color(0xFFCFCAD1),
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 27,
                        ),
                        Text(
                          "${_playlists[index].genre}",
                          style: TextStyle(
                              color: Color(0xFF6D69A7), fontSize: 15.0),
                        ),
                      ],
                    ),
                  ],
                )),
      ),
    );
  }
}
