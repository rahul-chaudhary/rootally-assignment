import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:developer' as logger;

import 'package:flutter/foundation.dart';

Future<List<Map<String, dynamic>>> getAllAssessment() async {
  QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('assessment').get(); // .doc('n4O4UPnpfMjyiafCPSif').collection('title')
  Object? mp = querySnapshot.docs[0].data();
  List<Map<String, dynamic>> tempList = querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  if (kDebugMode) {
    print("Retrieved data ${tempList.first}");
  } //{tempList.first.entries.first.value[1]}

  return tempList;
}
/*
images ->   item.entries.last.value[0].toString(),
descriptions -> item.entries.first.value[1].toString(),
title -> item.entries.elementAt(1).value[0].toString(),
 */