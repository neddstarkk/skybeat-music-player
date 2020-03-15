import 'package:flutter/material.dart';
import 'package:skybeat/screens/profile_page/widgets/playlist_creator.dart';
import 'package:skybeat/screens/profile_page/widgets/profile_page_presenter.dart';

class ProfilePage extends StatelessWidget {
  // This constructor makes sure the bottom nav bar works properly
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: <Widget>[
              Container(
                // The ProfilePagePresenter contains more code than is necessary,
                // but it's the only hack I could do at the time.
                child: ProfilePagePresenter(
                  title: "Full Name",
                ),
              ),
              Expanded(
                // This is where we define the content for those 4 tabs
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      color: Color(0xFF131017),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          PlaylistCreator(),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height - 533,
                            decoration: BoxDecoration(
                                color: Color(0xFF1B181F),
                                borderRadius: BorderRadius.circular(20.0)),
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
                                    Text(
                                      "Favourites",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color(0xFFCFCAD1)
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 50.0,
                                ),
                                Text(
                                  "Playlists you create will appear\n here",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF6D6977),
                                    fontSize: 16.0
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(child: Text('2')),
                    Center(child: Text('3')),
                    Center(child: Text('4')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
