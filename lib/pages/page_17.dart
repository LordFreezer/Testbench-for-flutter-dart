import 'package:creative1/pages/page_18_19.dart';
import 'package:creative1/pages/page_16.dart';
import 'package:flutter/material.dart';

class PageSeventeen extends StatelessWidget {
  static const routeName = '/p17';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 232 - Page 17'),
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
