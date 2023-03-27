import 'package:flutter/material.dart';

import '../../Widgets/prosearchlist.dart';

class Cartreview extends StatelessWidget {
  const Cartreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Amount"),
        subtitle:
            Text("\ ₹ 15.00", style: TextStyle(color: Colors.green.shade800)),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: Text("Submit"),
            color: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {},
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Cart Page",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SingleItem(),
          SingleItem(),
          SingleItem(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
