import 'package:creative1/pages/page_10_11.dart';
import 'package:creative1/pages/page_13.dart';
import 'package:flutter/material.dart';

class PageTwelve extends StatelessWidget {
  static const routeName = '/p12';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 232 - Page 12'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset('images/naruto_ch232_p12.jpg'),
              Positioned(
                top: 250,
                right: 10,
                child: IconButton(
                  iconSize: 50,
                  color: Colors.red,
                  icon: Icon(Icons.arrow_right),
                  onPressed: () =>
                      Navigator.pushNamed(context, PageThirteen.routeName),
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
                      Navigator.pushNamed(context, PageTenEleven.routeName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
