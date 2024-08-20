import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:developer' as logger;

Future<Map<String, dynamic>> getAllAssessment() async {
  QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('assessment').get(); // .doc('n4O4UPnpfMjyiafCPSif').collection('title')
  Object? mp = querySnapshot.docs[0].data();
  List<Map<String, dynamic>> tempList = querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  logger.log(name: "Retrieved data", "${tempList.first}"); //{tempList.first.entries.first.value[1]}

  return tempList.first;
}
