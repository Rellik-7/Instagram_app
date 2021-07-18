import 'package:flutter/material.dart';
import 'package:insta_app/screens/control.dart';
import 'package:insta_app/screens/dms.dart';
import 'package:insta_app/screens/home.dart';
import 'package:insta_app/screens/login_screen.dart';
import 'package:insta_app/screens/profile.dart';
import 'package:insta_app/screens/search_page.dart';
import 'package:insta_app/screens/signup_screen.dart';
import 'package:insta_app/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram App',
      initialRoute: '/',
      routes: {
        '/': (context) => welcomeScreen(),
        '/login': (context) => loginScreen(),
        '/signup' : (context) => signUp(),
        '/home' : (context) => Home(),
        '/profile': (context) => Profile(),
        '/dm': (context) => dmPage(),
        '/search': (context) => searchPage(),
        '/control' : (context) => MyNavBar()
      },
    );
  }
}
