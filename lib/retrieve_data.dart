import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:developer' as logger;

import 'package:flutter/foundation.dart';
import 'package:rootally_assignment/model/fitness_challenge.dart';

List<FitnessChallenge> _fitnessChallenges = [];

Future<List<FitnessChallenge>> getAllAssessment() async {
  QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection('assessment').get();

  List<Map<String, dynamic>> tempList = querySnapshot.docs
      .map((doc) => doc.data() as Map<String, dynamic>)
      .toList();

  if (kDebugMode) {
    print("Retrieved data $tempList");
  }

  populateFitnessChallenges(tempList);

  for (var challenge in _fitnessChallenges) {
    if (kDebugMode) {
      print('Title: ${challenge.title}');
      print('Description: ${challenge.description}');
      print('Image: ${challenge.imgAssetPath}');
    }
  }

  return _fitnessChallenges;
}

void populateFitnessChallenges(List<Map<String, dynamic>> tempList) {
  for (var item in tempList) {
    List<dynamic> titlesDynamic = item['title'] ?? [];
    List<dynamic> descriptionsDynamic = item['description'] ?? [];
    List<dynamic> imgAssetPathsDynamic = item['imgAssetPath'] ?? [];

    // Convert dynamic lists to List<String>
    List<String> titles = titlesDynamic.cast<String>().toList();
    List<String> descriptions = descriptionsDynamic.cast<String>().toList();
    List<String> imgAssetPaths = imgAssetPathsDynamic.cast<String>().toList();

    for (int i = 0; i < titles.length; i++) {
      String title = titles[i];
      String description = descriptions.length > i ? descriptions[i] : '';
      String imgAssetPath = imgAssetPaths.length > i ? imgAssetPaths[i] : '';

      FitnessChallenge challenge = FitnessChallenge(
        title: title,
        description: description,
        imgAssetPath: imgAssetPath,
      );

      _fitnessChallenges.add(challenge);
    }
  }
}

/*
images ->   item.entries.last.value[0].toString(),
descriptions -> item.entries.first.value[1].toString(),
title -> item.entries.elementAt(1).value[0].toString(),
 */

// for(int i = 0; i < tempList.length; i++) {
//   Map<String, dynamic> item = tempList[i];
//   for(int j = 0; j < item.entries.elementAt(i).value.length; j++) {
//     print("$");
//     fitnessChallengesList.add(FitnessChallenge(
//       title: item.entries.elementAt(1).value[i].toString(),
//       description: item.entries.first.value[i].toString(),
//       imgAssetPath: item.entries.last.value[i].toString(),
//     ));
//   }
// }
