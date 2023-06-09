import 'package:flutter/material.dart';
import 'package:foodpp/Widgets/prosearchlist.dart';

import '../../Widgets/prosearchlist.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Search",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Products"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 52,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Color.fromARGB(131, 241, 240, 240),
                filled: true,
                hintText: "Search Products",
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //* main page upper serch button me
          SingleItem(
            isBool: false, //* if false add btn how otherwise delete
          ),
          SingleItem(
            isBool: false,
          ),
          SingleItem(
            isBool: false,
          ),
          SingleItem(
            isBool: false,
          ),
          SingleItem(
            isBool: false,
          ),
        ],
      ),
    );
  }
}
