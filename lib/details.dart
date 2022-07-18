import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondRoute extends StatelessWidget {
  SecondRoute(
      {super.key,
      required this.productName,
      required this.desc,
      required this.asset,
      required this.price});

  String productName = "";
  String desc = "";
  String asset = "";
  String price = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: ListView(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(child: Text(productName)),
            ),
          ),
          Card(
            child: Image.asset(asset),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(desc),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('$price\$'),
            ),
          ),
          Card(
            child: RaisedButton(
              child: const Text('Order'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Are you sure?'),
                    actions: [
                      CupertinoDialogAction(
                        child: CupertinoButton(
                          onPressed: () {},
                          child: Text('No'),
                        ),
                      ),
                      CupertinoDialogAction(
                        child: CupertinoButton(
                          onPressed: () {},
                          child: Text('Yes'),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}