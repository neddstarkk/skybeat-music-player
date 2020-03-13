import 'package:flutter/material.dart';
import 'package:skybeat/widgets/profile_page_presenter.dart';

class ProfilePage extends StatelessWidget {
  // This constructor makes sure the bottom nav bar works properly
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // The ProfilePagePresenter contains more code than is necessary,
          // but it's the only hack I could do at the time.
          child: ProfilePagePresenter(
            title:
                "Full Name",
          ),
        ),
      ),
    );
  }
}
