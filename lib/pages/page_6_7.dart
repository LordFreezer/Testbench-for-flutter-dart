import 'package:creative1/pages/page_5.dart';
import 'package:creative1/pages/page_8.dart';
import 'package:flutter/material.dart';

class PageSix_Seven extends StatelessWidget {
  static const routeName = '/p6_7';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 232 - Page 6 & 7'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset('images/naruto_ch232_p06_07.jpg'),
              Positioned(
                top: 250,
                right: 10,
                child: IconButton(
                  iconSize: 50,
                  color: Colors.red,
                  icon: Icon(Icons.arrow_right),
                  onPressed: () =>
                      Navigator.pushNamed(context, PageEight.routeName),
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
                      Navigator.pushNamed(context, PageFive.routeName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
