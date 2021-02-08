import 'package:flutter/material.dart';

class Donation extends StatelessWidget {
  static const routeName = '/do';
  static const title_1 = 'Donations';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title_1),
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: IconButton(
                icon: Image.network(
                    'https://newsroom.mastercard.com/wp-content/uploads/2016/09/paypal-logo.png'),
                onPressed: () => {},
                iconSize: 150,
              ),
            ),
            Container(
              child: IconButton(
                icon: Image.network(
                    'https://www.lmaic.com/wp-content/uploads/2020/04/cash-app-png-1.png'),
                onPressed: () => {},
                iconSize: 170,
              ),
            ),
            Container(
              child: IconButton(
                icon: Image.network(
                    'https://www.coindesk.com/wp-content/uploads/2019/03/Screen-Shot-2019-03-18-at-4.40.13-PM.png'),
                onPressed: () => {},
                iconSize: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
