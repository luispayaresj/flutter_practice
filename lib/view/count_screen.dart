import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({Key? key}) : super(key: key);

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  void restart() {
    setState(() {
      count=0;
    });
  }

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
      floatingActionButton:  ButtonGroup(increment:increment, decrement:decrement, restart:restart),
    );
  }

}

class ButtonGroup extends StatelessWidget {
  final Function increment;
  final Function decrement;
  final Function restart;
  const ButtonGroup({
    Key? key,
    required this.increment,
    required this.decrement,
    required this.restart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.plus_one),
            onPressed: () {
              increment();
            }),
        FloatingActionButton(
            child: const Icon(Icons.restore),
            onPressed: () {
              restart();
            }),
        FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              decrement();
            }),
      ],
    );
  }
}


