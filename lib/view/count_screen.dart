import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({Key? key}) : super(key: key);

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    int count = 00;

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
            // ignore: prefer_const_constructors
            Text('$count', style: TextStyle(fontSize: 30))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.access_alarms),
          onPressed: () {
            showMessage();
          }),
    );
  }

  void showMessage() {
    print('Hi Luis, and CAR IV');
  }
}
