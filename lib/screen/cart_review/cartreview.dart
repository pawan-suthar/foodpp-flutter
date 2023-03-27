import 'package:flutter/material.dart';

class Cartreview extends StatelessWidget {
  const Cartreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
