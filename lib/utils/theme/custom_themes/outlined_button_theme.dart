import 'package:flutter/material.dart';
import '../../../assets/colors_container.dart';


class RAOutlinedButtonTheme {
  //to avoid creating instances of this class
  RAOutlinedButtonTheme._();

  //light theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(ColorContainer.clrBlue1),
      foregroundColor: WidgetStateProperty.all<Color>(ColorContainer.clrWhite2),
      overlayColor: WidgetStateProperty.all<Color>(ColorContainer.clrBlue1),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
      shape: WidgetStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      )),
    ),
  );

  //dark theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(ColorContainer.clrGray2),
      foregroundColor: WidgetStateProperty.all<Color>(ColorContainer.clrWhite2),
      overlayColor: WidgetStateProperty.all<Color>(ColorContainer.clrGray2),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
      shape: WidgetStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      )),
    ),
  );
}