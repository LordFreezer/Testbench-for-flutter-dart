import 'package:creative1/pages/page_1.dart';
import 'package:creative1/pages/page_2.dart';
import 'package:creative1/pages/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Lesson1App());
}

class Lesson1App extends StatelessWidget {
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
        PageOne.routeName: (context) => PageOne(),
        PageTwo.routeName: (context) => PageTwo(),
        /*ImageScreen.routeName: (context) => ImageScreen(),
        ButtonScreen.routeName: (contect) => ButtonScreen(),
        FontScreen.routeName: (contect) => FontScreen(),
        RowColScreen.routeName: (context) => RowColScreen(),
        ExpandedWidgetScreen.routeName: (context) => ExpandedWidgetScreen(),
        BusinessCardScreen.routeName: (context) => BusinessCardScreen(),*/
      },
    );
  }
}
