import 'package:flutter/material.dart';

class AssessmentFeature {
  String title;
  Icon icon;

  AssessmentFeature({required this.title, required this.icon});
}

//List of 4 Assessment
List<AssessmentFeature> assessmentFeatureList = [
  AssessmentFeature(
      title: 'Key Body Vitals',
      icon: const Icon(Icons.medical_services_outlined)),
  AssessmentFeature(
      title: 'Posture Analysis',
      icon: const Icon(Icons.medical_services_outlined)),
  AssessmentFeature(
      title: 'Body Composition',
      icon: const Icon(Icons.medical_services_outlined)),
  AssessmentFeature(
      title: 'Instant Reports',
      icon: const Icon(Icons.medical_services_outlined)),
];
