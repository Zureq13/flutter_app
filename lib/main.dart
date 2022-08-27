import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/apple_shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        body: Builder(builder: (context) {
          return Center(
            child: CupertinoButton(
              child: const Text("Enter Apple Shop"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const View(),
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
