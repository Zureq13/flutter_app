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
                Colors.transparent,
                Colors.orangeAccent,
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
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 250,
                          height: 250,
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/food.jpg'),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Meal of the day"),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 1),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
