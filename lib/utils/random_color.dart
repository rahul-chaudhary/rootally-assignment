import 'dart:math';
import 'package:flutter/material.dart';

Color getRandomColor() {
  final Random random = Random();
  return Color.fromARGB(
    255, // alpha
    random.nextInt(256), // red
    random.nextInt(256), // green
    random.nextInt(256), // blue
  );
}