// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/listview_1.dart';
import 'package:flutter_application_2/views/obtenerFireBase.dart';
import 'package:flutter_application_2/views/obtenerFireBase2.dart';
import 'package:flutter_application_2/views/profile/profile.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => MenuS();
}

class MenuS extends State<Menu> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle = 
    TextStyle(fontSize:24, fontWeight: FontWeight.bold);

  static  List<Widget> _widgetOptions= <Widget>[

    Text('Index 0: Home', style: optionStyle),
    GetFireBase(),
    ListView1(),
    //Text('Index 2: Profile', style: optionStyle),
    Profile(),
    
  ];
  void _onItemTapped(int index){
    setState((){
      _selectedIndex =index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Car Wash'),

      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Home',
            backgroundColor: Colors.blue,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Clients',
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Services',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.indigo,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,

      ),
      /* body: Container(
        alignment: Alignment.center,
        child: const Text("Home"),
        ), */
      );
  }
}