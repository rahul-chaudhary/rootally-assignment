import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> getAllUsers() async {
  QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('assessment').get();

  for (var doc in querySnapshot.docs) {
    Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;
    print("User: ${data!['name']}, Age: ${data['age']}");
  }
}