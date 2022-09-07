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
            color: Color(0xFFFFFFFF),
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
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.yellow[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Image.asset('images/food.png'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Meal of the day"),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: RawMaterialButton(
                      onPressed: () {},
                      fillColor: const Color(0xFF124e78),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                      child: const Icon(
                        Icons.home,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
