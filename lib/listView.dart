import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NumberListScreen(),
    );
  }
}

class NumberListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styled Numbered List'),
        backgroundColor: const Color.fromARGB(255, 58, 183, 166),
        centerTitle: true,
        elevation: 10,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 58, 181, 183),
              const Color.fromARGB(255, 64, 251, 242),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: 50,
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 58, 183, 173),
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  'Item ${index + 1}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 58, 175, 183),
                  ),
                ),
                subtitle: Text(
                  'click here for more details.',
                  style: TextStyle(color: const Color.fromARGB(157, 0, 0, 0)),
                ),
                trailing: Icon(Icons.star, color: Colors.amber),
              ),
            );
          },
        ),
      ),
    );
  }
}
