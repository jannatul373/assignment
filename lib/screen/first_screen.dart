import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Screen")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the First Screen!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            // Row of icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.home, size: 40, color: Colors.blue),
                Icon(Icons.star, size: 40, color: Colors.amber),
                Icon(Icons.settings, size: 40, color: Colors.grey),
              ],
            ),

            const SizedBox(height: 50),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              icon: const Icon(Icons.arrow_forward),
              label: const Text("Go to Second Screen"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
