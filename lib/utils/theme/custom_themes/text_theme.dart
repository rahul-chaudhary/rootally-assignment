import 'package:flutter/material.dart';

import '../../../assets/colors_container.dart';

class RATextTheme {
  RATextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    //headlines
    headlineLarge: const TextStyle().copyWith(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: ColorContainer.clrBlue1),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: ColorContainer.clrGray2),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorContainer.clrGray2),

    //title
    titleLarge: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: ColorContainer.clrGray2),
    titleMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: ColorContainer.clrGray2),
    titleSmall: const TextStyle().copyWith(
        fontSize: 10,
        fontWeight: FontWeight.bold,
        color: ColorContainer.clrGray2),

    //body
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: ColorContainer.clrGray2),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: ColorContainer.clrGray2),
    bodySmall: const TextStyle().copyWith(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: ColorContainer.clrGray2),
  );
  static TextTheme darkTextTheme = TextTheme(
    //headlines
    headlineLarge: const TextStyle().copyWith(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: ColorContainer.clrBlue1),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: ColorContainer.clrWhite2),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorContainer.clrWhite2),

    //title
    titleLarge: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: ColorContainer.clrWhite2),
    titleMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: ColorContainer.clrWhite2),
    titleSmall: const TextStyle().copyWith(
        fontSize: 10,
        fontWeight: FontWeight.bold,
        color: ColorContainer.clrWhite2),

    //body
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: ColorContainer.clrWhite2),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: ColorContainer.clrWhite2),
    bodySmall: const TextStyle().copyWith(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: ColorContainer.clrWhite2),
  );
}
