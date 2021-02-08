import 'package:creative1/pages/page_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageOne extends StatelessWidget {
  static const routeName = '/p1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 232 - Page 1'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset('images/naruto_ch232_p01.jpg'),
              Positioned(
                top: 250,
                right: 10,
                child: IconButton(
                  iconSize: 50,
                  color: Colors.red,
                  icon: Icon(Icons.arrow_right),
                  onPressed: () =>
                      Navigator.pushNamed(context, PageTwo.routeName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
