import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/listview_1.dart';
//mateapp
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ListView1()
    );
  }
}

