import 'dart:ffi';

import 'package:flutter/material.dart';

import '../screen/drawerside.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      drawer: DrawerWidget(),
      body: Stack(children: [
        Column(
          children: [
            Container(
              //* my profile or profile icon k bick ka height
              height: 50,
              color: Colors.green,
            ),
            Container(
              height: 584,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
            ),
          ],
        ),

        //* profile iCons
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 30),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSwWsiybRV3hquFxLGZ5R67U6t3HZnqhLFJTcwi0D122HLk2NGq"),
              radius: 45,
              backgroundColor: Colors.green,
            ),
          ),
        ),
      ]),
    );
  }
}
