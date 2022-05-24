import 'package:flutter/material.dart';


class Counter extends StatelessWidget  {

  const Counter({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    int count = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        backgroundColor: Colors.indigo,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            const Text('Number Push',
                  style: TextStyle(color: Colors.blue, fontSize: 35)),
            Text('$count', style: TextStyle(fontSize:30))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_alarms),
        onPressed: (){
          showMessage();
        }
        
        ),

    );
  }
void showMessage(){
  print('Hi Luis, and CAR IV');
}


}