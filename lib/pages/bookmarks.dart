import 'package:creative1/pages/start_screen.dart';
import 'package:flutter/material.dart';

class Bookmarks extends StatelessWidget {
  static const routeName = '/bk';

  final title_1;

  Bookmarks({Key key, this.title_1}) : super(key: key);

  String nullMark() {
    if (title_1 == null) {
      return 'No Bookmarks';
    }
    return title_1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bookmarks'),
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () =>
                  Navigator.pushNamed(context, StartScreen.routeName),
            ),
          ],
        ),
        body: RaisedButton(
          onPressed: Navigator.of(context).pop,
          child: Text(
            nullMark(),
            style: Theme.of(context).textTheme.button,
          ),
        ));
  }
}
