import 'package:creative1/pages/page_1.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Menu'),
        actions: [
          /* IconButton(
              icon: Icon(Icons.alarm),
              onPressed: () {
                print('Alarm');
              }),
          IconButton(
              icon: Icon(Icons.message_sharp),
              onPressed: () {
                print('Message');
              }),*/
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            /* DrawerHeader(
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Message'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),*/
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, PageOne.routeName),
              child: Text(
                'Naruto',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            /*RaisedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ImageScreen.routeName),
              child: Text(
                'Image Demo Screen',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ButtonScreen.routeName),
              child: Text(
                'Button Demo',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, FontScreen.routeName),
              child: Text(
                'Custom Font Demo',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, RowColScreen.routeName),
              child: Text(
                'Row/Column Layout Demo',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ExpandedWidgetScreen.routeName),
              child: Text(
                'Expended Widget Screen Demo',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, BusinessCardScreen.routeName),
              child: Text(
                'Business card demo',
                style: Theme.of(context).textTheme.button,
              ),
            ),*/
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Floating Action Button");
        },
        child: Icon(Icons.star_outline),
      ),*/
      /* bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
        ],
        currentIndex: 0,
        onTap: (index) {
          print('Current index = $index');
        },
      ),*/
    );
  }
}
