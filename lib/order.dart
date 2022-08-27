import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const Spacer(),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
          CupertinoButton(
              child: const Text("Back"),
              onPressed: () {
                Navigator.pop(context);
              }),
          const Spacer(),
          const Spacer(),
        ],
      ),
    );
  }
}
