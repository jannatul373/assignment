import 'package:flutter/material.dart';

class StyledTextScreen extends StatelessWidget {
  const StyledTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Styled Texts'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 8,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bold & Large Text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Italic Text with Underline',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Shadowed & Spaced Text',
              style: TextStyle(
                fontSize: 22,
                letterSpacing: 2,
                shadows: [
                  Shadow(
                    color: Colors.black45,
                    offset: Offset(2, 2),
                    blurRadius: 3,
                  ),
                ],
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Left Align',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  'Right Align',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Centered Text with Background',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
