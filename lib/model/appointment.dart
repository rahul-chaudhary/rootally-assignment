import 'package:flutter/cupertino.dart';
import 'package:rootally_assignment/colors_container.dart';

class Appointment {
  final String svgAssetPath;
  final String title;
  final Color containerColor;

  Appointment({required this.svgAssetPath, required this.title, required this.containerColor});
}

//List of 3 appointments
List<Appointment> appointmentList = [
  Appointment(
    svgAssetPath: 'lib/assets/icons/doctor_round.svg',
    title: "Cancer 2nd opinion",
    containerColor: ColorContainer.clrBlue2,

  ),
  Appointment(
    svgAssetPath: 'lib/assets/icons/physiotherapy_ic.svg',
    title: "Physiotherapy Appointment",
    containerColor: ColorContainer.clrPurple2,
  ),
  Appointment(
    svgAssetPath: 'lib/assets/icons/dumbbell_round_ic.svg',
    title: "Fitness Appointment",
    containerColor: ColorContainer.clrCream2,
  ),
];
