import 'package:creative1/donation.dart';
import 'package:creative1/model/pages.dart';
import 'package:creative1/pages/bookmarks.dart';
import 'package:creative1/pages/page_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  static const routeName = '/startScreen';
  @override
  State<StatefulWidget> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  _Controller con;
  int index = 0;
  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) {
    setState(fn);
  }

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
          child: Wrap(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: con.getChapterList(),
          ),
        ),
      ),
    );
  }
}

class _Controller {
  _StartScreenState state;
  _Controller(this.state);

  List<Widget> getChapterList() {
    return chapters.map(
      (chapter) {
        return IconButton(
            icon: Image.network(chapter.coverImage),
            iconSize: 185,
            onPressed: () {
              Navigator.pushNamed(state.context, PageScreen.routeName,
                  arguments: Args(chapter.name));
            });
      },
    ).toList();
  }
}
