import 'package:flutter/material.dart';
import 'package:skybeat/screens/explore_page/explore_page.dart';
import 'package:skybeat/screens/music_home/music_home.dart';
import 'package:skybeat/screens/profile_page/profile_page.dart';

class BottomBarScreenController extends StatefulWidget {
  @override
  _BottomBarScreenControllerState createState() =>
      _BottomBarScreenControllerState();
}



class _BottomBarScreenControllerState extends State<BottomBarScreenController> {
  final List<Widget> pages = [
    MusicHome(
      key: PageStorageKey('Music Home Page'),
    ),
    ExplorePage(key: PageStorageKey('Explore Page')),
    ProfilePage(
      key: PageStorageKey('Profile Page'),
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
        backgroundColor: Colors.black,
        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.play_arrow),
            icon: Icon(Icons.graphic_eq),
            title: Text("Music"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Explore"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}
