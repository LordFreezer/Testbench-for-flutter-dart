import 'package:creative1/pages/bookmarks.dart';
import 'package:creative1/pages/page_18_19.dart';
import 'package:creative1/pages/page_16.dart';
import 'package:creative1/pages/start_screen.dart';
import 'package:flutter/material.dart';

class PageSeventeen extends StatelessWidget {
  static const routeName = '/p17';
  static const title_1 = 'Chapter 232 - Page 17';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title_1),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () =>
                Navigator.pushNamed(context, StartScreen.routeName),
          ),
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Bookmarks(title_1: title_1),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset('images/naruto_ch232_p17.jpg'),
              Positioned(
                top: 250,
                right: 10,
                child: IconButton(
                  iconSize: 50,
                  color: Colors.red,
                  icon: Icon(Icons.arrow_right),
                  onPressed: () => Navigator.pushNamed(
                      context, PageEighteenNineteen.routeName),
                ),
              ),
              Positioned(
                top: 250,
                left: 10,
                child: IconButton(
                  iconSize: 50,
                  color: Colors.red,
                  icon: Icon(Icons.arrow_left),
                  onPressed: () =>
                      Navigator.pushNamed(context, PageSixteen.routeName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}