import 'package:flutter/material.dart';
import '../../../assets/colors_container.dart';

class RAChipTheme {
  //to avoid creating instances of this class
  RAChipTheme._();

  //light theme
  static final lightChipTheme = ChipThemeData(
    backgroundColor: ColorContainer.clrBlue1,
    disabledColor: ColorContainer.clrGray3,
    selectedColor: ColorContainer.clrBlue1,
    secondarySelectedColor: ColorContainer.clrBlue1,
    labelStyle: const TextStyle(
      color: ColorContainer.clrGray2,
    ),
    secondaryLabelStyle: const TextStyle(
      color: ColorContainer.clrGray2,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    brightness: Brightness.light,
  );

  //dark theme
  static final darkChipTheme = ChipThemeData(
    backgroundColor: ColorContainer.clrGray2,
    disabledColor: ColorContainer.clrGray3,
    selectedColor: ColorContainer.clrGray2,
    secondarySelectedColor: ColorContainer.clrGray2,
    labelStyle: const TextStyle(
      color: ColorContainer.clrWhite2,
    ),
    secondaryLabelStyle: const TextStyle(
      color: ColorContainer.clrWhite2,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    brightness: Brightness.dark,
  );
}