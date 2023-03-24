import 'package:flutter/material.dart';

class ProducOverview extends StatefulWidget {
  const ProducOverview({super.key});

  @override
  State<ProducOverview> createState() => _ProducOverviewState();
}

class _ProducOverviewState extends State<ProducOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Product Overview page",
          style: TextStyle(color: Colors.black87),
        ),
      ),
    );
  }
}
