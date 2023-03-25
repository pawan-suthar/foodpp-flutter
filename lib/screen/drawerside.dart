import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodpp/screen/home.dart';

import '../myprofile/myprofile.dart';

class DrawerWidget extends StatelessWidget {
  Widget listTile({
    required IconData icon,
    required String title,
    Function()? onTap,
  }) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  const DrawerWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(
          children: [
            SizedBox(
              height: 130,
              child: DrawerHeader(
                /*  
                        * circle inside circle 
              
                      */

                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 45,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSwWsiybRV3hquFxLGZ5R67U6t3HZnqhLFJTcwi0D122HLk2NGq"),
                        radius: 40,
                        backgroundColor: Colors.green.shade900,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome Guest"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            listTile(
                icon: Icons.home_outlined,
                title: "Home",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                }),
            listTile(
                icon: Icons.person_outline,
                title: "My Profile",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Myprofile(),
                    ),
                  );
                }),
            listTile(icon: Icons.notifications_active, title: "Notifications"),
            listTile(icon: Icons.star_outline, title: "Ratings & Review"),
            listTile(icon: Icons.favorite_outline, title: "Wishlist"),
            listTile(icon: Icons.shopping_cart, title: "Cart"),
            listTile(icon: Icons.format_quote_outlined, title: "FAQ's"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Call us:"),
                      Text("+9123456789"),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("Mail us:"),
                        Text("app@mail.com"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
