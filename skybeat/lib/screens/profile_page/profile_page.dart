import 'package:flutter/material.dart';
import 'package:skybeat/screens/profile_page/widgets/artist_tab.dart';
import 'package:skybeat/screens/profile_page/widgets/download_tab.dart';
import 'package:skybeat/screens/profile_page/widgets/history_tab.dart';
import 'package:skybeat/screens/profile_page/widgets/library_tab.dart';
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
                    LibraryTab(),
                    ArtistTab(),
                    DownloadTab(),
                    HistoryTab(),
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
