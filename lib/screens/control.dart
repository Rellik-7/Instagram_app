import 'package:flutter/material.dart';
import 'package:insta_app/screens/home.dart';
import 'package:insta_app/screens/profile.dart';
import 'package:insta_app/screens/search_page.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({Key? key}) : super(key: key);

  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _currentIndex = 0;
  final List<Widget> list = [
    Home(),
    searchPage(),
    Home(),
    Home(),
    Profile()
  ];

  void onTapBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: list[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          onTap: onTapBar,
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label:'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Heart',
            ),

            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage('images/myav.jpg'),
                radius: 17,
              ),

              label:'Image',
            ),


          ],

        ),
    );
  }
}
