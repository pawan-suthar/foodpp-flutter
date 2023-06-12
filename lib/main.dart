import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodpp/providers/productprovider.dart';
import 'package:foodpp/screen/home.dart';
import 'package:foodpp/screen/productOverview.dart';
import 'package:provider/provider.dart';

import 'auth/signin.dart';
import 'myprofile/myprofile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Productprovider>(
      create: (context) => Productprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Fresh',
        home: Home(),
      ),
    );
  }
}
