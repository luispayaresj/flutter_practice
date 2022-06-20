
import 'package:flutter_application_2/views/obtenerFireBase.dart';

//import 'package:flutter_application_2/views/obtener_firebase.dart';
import 'package:flutter_application_2/views/listview_1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_2/views/splash.dart';
//import 'package:firebase_crashlytics/firebase_crashlytics.dart';
//import 'package:firebase_analytics/firebase_analytics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  callDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        //home: GetFireBase());
        //home: ListView1());
        home: Splash());
  }
}

void callDatabase() {
  DatabaseReference starCountRef =
      FirebaseDatabase.instance.ref('Registros');
  starCountRef.onValue.listen((event) {
    final data = event.snapshot.value;
    print(data.toString());
  });
}

 