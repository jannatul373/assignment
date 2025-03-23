import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("My flutter")),
        body: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 70,
              color: Color.fromARGB(255, 135, 0, 67),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
