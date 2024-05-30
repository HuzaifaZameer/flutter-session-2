import 'package:flutter/material.dart';

class CommonlyUsedWidgets extends StatelessWidget {
  const CommonlyUsedWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text('Hello, Flutter!'),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            color: Colors.blue,
            child: const Text('Hello, Container!'),
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            children: <Widget>[
              Icon(Icons.star),
              Text('Row Example'),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Column(
            children: <Widget>[
              Icon(Icons.star),
              Text('Column Example'),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: ListView(
              children: const <Widget>[
                ListTile(title: Text('Item 1')),
                ListTile(title: Text('Item 2')),
                ListTile(title: Text('Item 3')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
