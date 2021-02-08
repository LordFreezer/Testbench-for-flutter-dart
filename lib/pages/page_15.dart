import 'package:creative1/pages/page_14.dart';
//import 'package:creative1/pages/page_16.dart';
import 'package:flutter/material.dart';

class PageFifteen extends StatelessWidget {
  static const routeName = '/p15';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 232 - Page 15'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset('images/naruto_ch232_p15.jpg'),
              Positioned(
                top: 250,
                right: 10,
                child: IconButton(
                  iconSize: 50,
                  color: Colors.red,
                  icon: Icon(Icons.arrow_right),
                  onPressed: () =>
                      Navigator.pushNamed(context, PageFifteen.routeName),
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
                      Navigator.pushNamed(context, PageFourteen.routeName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
