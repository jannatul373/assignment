import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String displayText = 'Hello World';

  void _changeText() {
    setState(() {
      displayText = 'Button Pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(" My Flutter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayText,
              style: const TextStyle(
                fontSize: 70,
                color: Color.fromARGB(255, 98, 24, 42),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _changeText,
              child: const Text("For button Press "),
            ),
          ],
        ),
      ),
    );
  }
}
