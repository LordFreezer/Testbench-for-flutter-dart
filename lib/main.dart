import 'package:creative1/pages/page_6_7.dart';
import 'package:creative1/pages/page_1.dart';
import 'package:creative1/pages/page_2.dart';
import 'package:creative1/pages/page_3.dart';
import 'package:creative1/pages/page_4.dart';
import 'package:creative1/pages/page_5.dart';
import 'package:creative1/pages/page_8.dart';
import 'package:creative1/pages/page_9.dart';
import 'package:creative1/pages/page_12.dart';
import 'package:creative1/pages/page_10_11.dart';
import 'package:creative1/pages/page_13.dart';
import 'package:creative1/pages/page_14.dart';
import 'package:creative1/pages/page_15.dart';
import 'package:creative1/pages/page_16.dart';
import 'package:creative1/pages/page_17.dart';
import 'package:creative1/pages/page_18_19.dart';
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
        PageThree.routeName: (context) => PageThree(),
        PageFour.routeName: (context) => PageFour(),
        PageFive.routeName: (context) => PageFive(),
        PageSix_Seven.routeName: (context) => PageSix_Seven(),
        PageEight.routeName: (context) => PageEight(),
        PageNine.routeName: (context) => PageNine(),
        PageTenEleven.routeName: (context) => PageTenEleven(),
        PageTwelve.routeName: (context) => PageTwelve(),
        PageThirteen.routeName: (context) => PageThirteen(),
        PageFourteen.routeName: (context) => PageFourteen(),
        PageFifteen.routeName: (context) => PageFifteen(),
        PageSixteen.routeName: (context) => PageSixteen(),
        PageSeventeen.routeName: (context) => PageSeventeen(),
        PageEighteenNineteen.routeName: (context) => PageEighteenNineteen(),
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
