import 'package:flutter/material.dart';
import 'package:flutter_application_2/card.dart';

class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apple Shop"),
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
    );
  }
}
