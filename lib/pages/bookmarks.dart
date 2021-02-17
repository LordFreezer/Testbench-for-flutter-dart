import 'package:creative1/pages/page_screen.dart';
import 'package:creative1/model/pages.dart';
import 'package:flutter/material.dart';

class Bookmarks extends StatefulWidget {
  static const routeName = '/bk';

  @override
  State<StatefulWidget> createState() {
    return _BookmarksState();
  }
}

class _BookmarksState extends State<Bookmarks> {
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
        title: Text("Chad's Bookmarks"),
        actions: con.selected != null
            ? [
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: con.delete,
                ),
                IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: con.cancel,
                ),
              ]
            : null,
      ),
      body: ListView.builder(
        itemCount: bookmarks.length,
        itemBuilder: con.getTile,
      ),
    );
  }
}

class _Controller {
  _BookmarksState state;
  _Controller(this.state);
  List<int> selected;
  List<int> removedItems;
  final Color selectedColor = Colors.indigo[500];
  final Color unselectedColor = Colors.indigo[200];

  Widget getTile(BuildContext context, int index) {
    return Container(
      color: (selected != null && selected.indexOf(index) >= 0)
          ? selectedColor
          : unselectedColor,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text('${bookmarks[index].page.title}'),
        onTap: () {
          _onTap(context, index);
        },
        onLongPress: () {
          _longPress(context, index);
        },
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    if (selected == null) {
      state.render(
        () {
          Navigator.pushNamed(state.context, PageScreen.routeName,
              arguments:
                  ArgsPage(bookmarks[index].chapter)); // big problem here
        },
      );
    } else {
      state.render(() {
        if (selected.indexOf(index) < 0) {
          selected.add(index);
        } else {
          // cancels selection
          selected.removeWhere((value) => value == index);
          if (selected.length == 0) selected = null;
        }
      });
    }
  }

  void _longPress(BuildContext context, int index) {
    if (selected == null) {
      state.render(() {
        selected = [];
        selected.add(index);
      });
    } else {
      state.render(() {
        if (selected.indexOf(index) < 0) {
          selected.add(index);
        } else {
          // cancels selection
          selected.removeWhere((value) => value == index);
          if (selected.length == 0) selected = null;
        }
      });
    }
  }

  void delete() {
    selected.sort(); // ascending order
    state.render(() {
      for (int i = selected.length - 1; i >= 0; i--) {
        bookmarks.removeAt(selected[i]);
      }
      selected = null;
    });
  }

  void cancel() {
    state.render(() {
      selected = null;
    });
  }
}
