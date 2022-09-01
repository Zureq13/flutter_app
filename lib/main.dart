import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App",
      theme: ThemeData(scaffoldBackgroundColor: Colors.blueGrey),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.orange,
              ],
            ),
          ),
          child: Column(
            children: [
              SafeArea(
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Text(
                        "Check out",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Spacer(flex: 4),
                  Card(
                    color: Colors.orange[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const SizedBox(
                      width: 250,
                      height: 250,
                      child: Icon(Icons.food_bank_outlined),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
