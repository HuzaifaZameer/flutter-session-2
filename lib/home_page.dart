import 'package:flutter/material.dart';
import 'package:flutter_session_2/screens/commonly_used_widgets.dart';
import 'package:flutter_session_2/screens/stateful_widget.dart';
import 'package:flutter_session_2/screens/stateless_widget.dart';

import 'screens/basic_form.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const BasicForm(),
                  ),
                );
              },
              child: const Text(
                "Basic form",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const CommonlyUsedWidgets(),
                  ),
                );
              },
              child: const Text(
                "Commonly used widgets",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const MyStatelessWidget(),
                  ),
                );
              },
              child: const Text(
                "Stateless Widgets",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const MyStatefulWidget(),
                  ),
                );
              },
              child: const Text(
                "Stateful Widgets",
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
