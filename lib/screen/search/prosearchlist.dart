import 'package:flutter/material.dart';

class Prosearchlist extends StatelessWidget {
  const Prosearchlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 100,
            child: Center(
              child: Image.network(
                  "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/317559a.jpg?ts=1664175742"),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Product Name",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "15\₹/ 100gm",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "100gm",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                      Center(
                          child: Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                        color: Colors.green,
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
          ),
        ),
      ],
    );
  }
}
