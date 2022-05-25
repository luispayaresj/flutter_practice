import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({Key? key}) : super(key: key);

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Number Push',
                style: TextStyle(color: Colors.blue, fontSize: 35)),
            Text('$count', style: const TextStyle(fontSize: 30))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.plus_one),
              onPressed: () {
                increments();
              }),
          FloatingActionButton(
              child: const Icon(Icons.restore),
              onPressed: () {
                restarts();
              }),
          FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                reduces();
              }),
        ],
      ),
    );
  }

  void reduces() {
    setState(() {
      count--;
    });
  }

  void increments() {
    setState(() {
      count++;
    });
  }

  void restarts() {
    setState(() {
      count=0;
    });
  }

}
