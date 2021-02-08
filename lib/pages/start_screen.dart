import 'package:creative1/donation.dart';
import 'package:creative1/pages/bookmarks.dart';
import 'package:creative1/pages/page_1.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Big 5 of October 2004", style: TextStyle(fontSize: 20)),
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
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Wrap(
                children: [
                  Container(
                    child: IconButton(
                      icon: Image.asset('images/Vol26.png'),
                      iconSize: 185,
                      onPressed: () =>
                          Navigator.pushNamed(context, PageOne.routeName),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Image.network(
                          'https://static.wikia.nocookie.net/bleach/images/7/75/MangaVolume3Cover.png/revision/latest/scale-to-width-down/759?cb=20190731054852&path-prefix=en'),
                      iconSize: 185,
                      onPressed: () => {},
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Image.network(
                          'https://static.wikia.nocookie.net/hunterxhunter/images/7/73/Volume20cover.jpg/revision/latest/scale-to-width-down/752?cb=20170803090038'),
                      iconSize: 185,
                      onPressed: () => {},
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Image.network(
                          'https://static.wikia.nocookie.net/dragonball/images/0/0b/DBJ29.jpg/revision/latest/scale-to-width-down/200?cb=20130226151215'),
                      iconSize: 185,
                      onPressed: () => {},
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Image.network(
                          'https://static.wikia.nocookie.net/onepiece/images/6/65/Volume_35.png/revision/latest/scale-to-width-down/753?cb=20130115023232'),
                      iconSize: 185,
                      onPressed: () => {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
