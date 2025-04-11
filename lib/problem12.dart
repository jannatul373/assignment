import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Container with Style')),
        body: Center(
          child: Container(
            width: 250, // Set the width of the container
            height: 150, // Set the height of the container
            decoration: BoxDecoration(
              color: Colors.blueAccent, // Background color
              borderRadius: BorderRadius.circular(20), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  spreadRadius: 5, // Spread of the shadow
                  blurRadius: 7, // Blur radius of the shadow
                  offset: const Offset(0, 3), // Position of the shadow
                ),
              ],
            ),
            alignment:
                Alignment
                    .center, // Center the child widget inside the container
            child: const Text(
              'Hello, Flutter!',
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 20, // Font size
                fontWeight: FontWeight.bold, // Font weight
              ),
            ),
          ),
        ),
      ),
    );
  }
}
