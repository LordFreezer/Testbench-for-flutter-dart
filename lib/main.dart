/*
I borrowed the use of a constructor to create an instance of my Bookmark page
without my classes extending into stateful.
Here is the link:
https://stackoverflow.com/questions/60204360/passing-variables-between-two-classes-in-flutter
*/

import 'package:creative1/donation.dart';
import 'package:creative1/pages/bookmarks.dart';
import 'package:creative1/pages/page_screen.dart';
import 'package:creative1/pages/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MangaApp());
}

class MangaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lobster',
        brightness: Brightness.light,
        primaryColor: Colors.red[900],
        textTheme: TextTheme(
          button: TextStyle(fontFamily: 'Lobster', fontSize: 28.0),
        ),
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (context) => StartScreen(),
        Bookmarks.routeName: (context) => Bookmarks(),
        Donation.routeName: (context) => Donation(),
        PageScreen.routeName: (context) => PageScreen(),
      },
    );
  }
}
