import 'package:creative1/pages/page_17.dart';
import 'package:flutter/material.dart';

class PageEighteenNineteen extends StatelessWidget {
  static const routeName = '/p18_19';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 232 - Page 18 & 19'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset('images/naruto_ch232_p18_19.jpg'),
              Positioned(
                top: 250,
                left: 10,
                child: IconButton(
                  iconSize: 50,
                  color: Colors.red,
                  icon: Icon(Icons.arrow_left),
                  onPressed: () =>
                      Navigator.pushNamed(context, PageSeventeen.routeName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
