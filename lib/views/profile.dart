import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child : Column(
          children:  const[
            Text("\n Luis Payares Joly", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),),
            CircleAvatar( 
              backgroundImage: AssetImage('assets/images/LuisPayares.jpeg'),radius: 130),
              Text("\n Username: luispayaresj",style: TextStyle(fontSize: 20),),
              Text("\n Cel: 3214567899",style: TextStyle(fontSize: 20),),
              Text("\n Email: lpayares@lsv-tech.com",style: TextStyle(fontSize: 20),),
          ],
          
          )
      )
    );
  }
}