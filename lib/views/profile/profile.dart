// ignore_for_file: prefer_const_declarations, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/profile/model/user.dart';
import 'package:flutter_application_2/views/profile/utils/user_data.dart';



class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context){
    final user = UserData.userInfo;
    final double coverHeight = 280;
    final double profileHeight = 144;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(coverHeight, profileHeight),
          buildName(user)
          ]
          ),
      /* body: Center(
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
      ) */
    );
  }

  Widget buildName(User user) => Column(
    children:  [
      Text('\n ${user.name}', style: TextStyle(fontWeight: FontWeight.bold, fontSize:24)),
      Text('\n ${user.profession}', style: TextStyle(color:Colors.blueGrey, fontSize:20)),
      Text('\n ${user.email}', style: TextStyle(color:Colors.blueGrey, fontSize:20)),
      Text('\n ${user.phoneNumber}', style: TextStyle(color:Colors.blueGrey, fontSize:20))
    ]
    
    ,);

    Widget buildTop(coverHeight, profileHeight){

      final top = coverHeight - profileHeight/2;
      final bottom = profileHeight/2;
      return Stack(

        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            child: buildCoverImage(coverHeight),
            margin: EdgeInsets.only(bottom:bottom),
            ),
          Positioned(
            top:top,
            child: buildProfileImage(profileHeight),
          ),
          
          //const SizedBox(height:24),
          //buildName(user),
        ]
      );
    }

    Widget buildCoverImage(height) => Container(
      color:Colors.grey,
      child: Image.network(
        'https://www.aoe.com/fileadmin/AOE.com/Images/main_navigation/insights/Fotolia_58569245_Software_Development_930_590_70.jpg',
        width: double.infinity,
        height: height ,
        fit: BoxFit.cover
        )
    );

    Widget buildProfileImage(height) => CircleAvatar(
      backgroundColor: Colors.grey.shade800,
      backgroundImage: const AssetImage('assets/images/LuisPayares.jpeg'),
      radius: height/2,
      foregroundColor: Colors.grey,

    );
}