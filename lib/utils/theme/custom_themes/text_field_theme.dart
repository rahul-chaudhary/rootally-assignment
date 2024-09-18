import 'package:flutter/material.dart';
import '../../../assets/colors_container.dart';

class RATextFormFieldTheme {
  //to avoid creating instances of this class
  RATextFormFieldTheme._();

  //light theme
  static final lightTextFieldTheme = InputDecorationTheme(
  errorMaxLines: 3,
    errorStyle: const TextStyle(
      color: ColorContainer.clrRed1,
      fontSize: 12,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrRed1,
        width: 2,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrRed1,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrBlue1,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrGray3,
        width: 2,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrGray3,
        width: 2,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrGray3,
        width: 2,
      ),
    ),
    hintStyle: const TextStyle(
      color: ColorContainer.clrGray1,
      fontSize: 14,
    ),
    labelStyle: const TextStyle(
      color: ColorContainer.clrGray1,
      fontSize: 14,
    ),
    floatingLabelStyle: const TextStyle(
      color: ColorContainer.clrGray1,
      fontSize: 14,
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  );

  //dark theme
  static final darkTextFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    errorStyle: const TextStyle(
      color: ColorContainer.clrRed1,
      fontSize: 12,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrRed1,
        width: 2,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrRed1,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrBlue1,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrGray3,
        width: 2,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrGray3,
        width: 2,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorContainer.clrGray3,
        width: 2,
      ),
    ),
    hintStyle: const TextStyle(
      color: ColorContainer.clrGray1,
      fontSize: 14,
    ),
    labelStyle: const TextStyle(
      color: ColorContainer.clrGray1,
      fontSize: 14,
    ),
    floatingLabelStyle: const TextStyle(
      color: ColorContainer.clrGray1,
      fontSize: 14,
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  );
}