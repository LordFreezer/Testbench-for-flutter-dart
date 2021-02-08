import 'package:creative1/pages/page_8.dart';
import 'package:creative1/pages/page_10_11.dart';
import 'package:flutter/material.dart';

class PageNine extends StatelessWidget {
  static const routeName = '/p9';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 232 - Page 9'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset('images/naruto_ch232_p09.jpg'),
              Positioned(
                top: 250,
                right: 10,
                child: IconButton(
                  iconSize: 50,
                  color: Colors.red,
                  icon: Icon(Icons.arrow_right),
                  onPressed: () =>
                      Navigator.pushNamed(context, PageTenEleven.routeName),
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
                      Navigator.pushNamed(context, PageEight.routeName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
