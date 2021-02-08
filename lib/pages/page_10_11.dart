import 'package:creative1/pages/page_9.dart';
import 'package:creative1/pages/page_12.dart';
import 'package:flutter/material.dart';

class PageTenEleven extends StatelessWidget {
  static const routeName = '/p10_11';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 232 - Page 10 & 11'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset('images/naruto_ch232_p10_11.jpg'),
              Positioned(
                top: 250,
                right: 10,
                child: IconButton(
                  iconSize: 50,
                  color: Colors.red,
                  icon: Icon(Icons.arrow_right),
                  onPressed: () =>
                      Navigator.pushNamed(context, PageTwelve.routeName),
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
                      Navigator.pushNamed(context, PageNine.routeName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
