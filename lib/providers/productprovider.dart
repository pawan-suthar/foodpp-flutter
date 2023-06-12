import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodpp/modals/productmodel.dart';

class Productprovider with ChangeNotifier {
  List<Productmodel> greensesonlist = [];
  Productmodel productmodel = Productmodel(pname: '', pimg: '', pprice: 0);

  fetchgreenseasoning() async {
    QuerySnapshot greeherb =
        await FirebaseFirestore.instance.collection("greenseasoning").get();

    greensesonlist.clear();

    greeherb.docs.forEach((element) {
      Productmodel product = Productmodel(
        pname: element.get('pname'),
        pimg: element.get('pimg'),
        pprice: element.get('pprice'),
      );

      greensesonlist.add(product);
    });

    notifyListeners();
  }
}
