import 'package:flutter/material.dart';

void main() {
  runApp(SwipeListApp());
}

class SwipeListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwipeListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SwipeListPage extends StatefulWidget {
  @override
  _SwipeListPageState createState() => _SwipeListPageState();
}

class _SwipeListPageState extends State<SwipeListPage> {
  List<String> items = List.generate(10, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swipe List"),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            background: swipeBackground(Colors.red, Icons.delete, "Delete", Alignment.centerLeft),
            secondaryBackground: swipeBackground(Colors.blue, Icons.edit, "Edit", Alignment.centerRight),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                setState(() {
                  items.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$item deleted")));
              } else {
                // Example "Edit" action - here just shows a snackbar
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Edit $item")));
              }
            },
            child: ListTile(
              title: Text(item),
            ),
          );
        },
      ),
    );
  }

  Widget swipeBackground(Color color, IconData icon, String label, Alignment alignment) {
    return Container(
      color: color,
      alignment: alignment,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment:
            alignment == Alignment.centerLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 8),
          Text(label, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
