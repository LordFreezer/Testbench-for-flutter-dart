import 'package:creative1/donation.dart';
import 'package:creative1/pages/bookmarks.dart';
import 'package:creative1/pages/page_1.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Menu'),

        /*IconButton(
              icon: Icon(Icons.message_sharp),
              onPressed: () {
                print('Message');
              }),*/
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Chad's Manga Reader"),
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Bookmarks'),
              onTap: () => Navigator.pushNamed(context, Bookmarks.routeName),
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Buy me a coffee'),
              onTap: () => Navigator.pushNamed(context, Donation.routeName),
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset('images/Vol26.png'),
              iconSize: 300,
              onPressed: () => Navigator.pushNamed(context, PageOne.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
