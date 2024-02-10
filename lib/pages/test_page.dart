import 'package:flutter/material.dart';

class Tester extends StatefulWidget {
  const Tester({super.key});

  @override
  State<Tester> createState() => _TesterState();
}

class _TesterState extends State<Tester> {
  int count = 0;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful"),
      ),
      body: Center(
        child: Text(
          "Counter : $count",
          style: const TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incrementCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
