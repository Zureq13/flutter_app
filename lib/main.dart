import 'package:flutter/material.dart';
import 'package:flutter_application_2/card.dart';
import 'package:flutter_application_2/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static List products = [
    'IPhone 11',
    'IPhone 12',
    'IPhone 13',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue[100],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Apple"),
          centerTitle: true,
        ),
        body: ListView(
          children: const [
            CardItem(
              productName: 'IPhone 13',
              asset: 'images/iphone13.jpg',
              desc: 'This is the newest IPhone',
              price: 'from 770',
            ),
            CardItem(
              productName: 'IPhone 12',
              asset: 'images/iphone12.jpg',
              desc: 'This is first IPhone with square edges.',
              price: 'from 670',
            ),
            CardItem(
              productName: 'IPhone 11',
              asset: 'images/iphone11.jpg',
              desc: 'This is the cheapest IPhone brand new',
              price: 'from 470',
            ),
          ],
        ),
      ),
    );
  }
}
