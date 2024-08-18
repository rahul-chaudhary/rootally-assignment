import 'package:flutter/cupertino.dart';

class Appointment {
  final Icon icon;
  final String title;

  Appointment({required this.icon, required this.title});
}

//List of 3 appointments
List<Appointment> appointmentList = [
  Appointment(
    icon: const Icon(CupertinoIcons.doc_circle),
    title: "Cancer 2nd opinion",
  ),
  Appointment(
    icon: const Icon(CupertinoIcons.calendar_today),
    title: "Physiotherapy Appointment",
  ),
  Appointment(
    icon: const Icon(CupertinoIcons.heart_circle),
    title: "Fitness Appointment",
  ),
];
