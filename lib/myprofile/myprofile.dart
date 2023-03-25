import 'dart:ffi';

import 'package:flutter/material.dart';

import '../screen/drawerside.dart';

class Myprofile extends StatelessWidget {
  Widget listtile({required IconData icon, required String title}) {
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

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
                ),
              ),
              child: ListView(
                children: [
                  Row(
                    //* name and email part start
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 250,
                        height: 80,
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pawan Suthar",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("ting33497@gmail.com")
                              ],
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.green,
                              child: CircleAvatar(
                                radius: 13,
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.green,
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  listtile(icon: Icons.shopping_cart, title: "My Orders"),
                  listtile(icon: Icons.history_rounded, title: "Order history"),
                  listtile(icon: Icons.location_on_outlined, title: "Address"),
                  // listtile(icon: Icons.shop_outlined, title: "Orders"),
                  listtile(
                      icon: Icons.file_copy_outlined,
                      title: "Privacy & Policy"),
                  listtile(
                      icon: Icons.support_agent_outlined,
                      title: "Help and support"),
                  listtile(icon: Icons.exit_to_app_outlined, title: "Logout"),
                ],
              ),
            ),
          ],
        ),

        //* profile avatar
        Padding(
          padding: const EdgeInsets.only(top: 0, left: 20),
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
