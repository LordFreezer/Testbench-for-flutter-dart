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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              RaisedButton(
                onPressed: () => {},
                child: Text(
                  'Paypal',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
              RaisedButton(
                onPressed: () => {},
                child: Text(
                  'CashApp',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
              RaisedButton(
                onPressed: () => {},
                child: Text(
                  'Bitcoin',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
