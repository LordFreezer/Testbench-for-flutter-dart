/*
I borrowed the use of a GestureDetector to allow zoom by doubletap 
and panning through InteractiveViewer

https://stackoverflow.com/questions/65408346/flutter-enable-image-zoom-in-out-on-double-tap-using-interactiveviewer

To-Dos:

Fix bookmark argument passing:
  I need to be able to pass the chapter name to navigate to 


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
