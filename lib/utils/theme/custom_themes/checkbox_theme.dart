import 'package:flutter/material.dart';

import '../../../assets/colors_container.dart';

class RACheckBoxTheme {
  //to avoid creating instances of this class
  RACheckBoxTheme._();

  static final lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return ColorContainer.clrGray3;
      }
      return Colors.blue;
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return ColorContainer.clrGray3;
      }
      return ColorContainer.clrWhite;
    }),
    overlayColor: WidgetStateProperty.all(Colors.blue),
    splashRadius: 20,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );



  static final darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return ColorContainer.clrGray3;
      }
      return Colors.blue;
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return ColorContainer.clrGray3;
      }
      return ColorContainer.clrGray2;
    }),
    overlayColor: WidgetStateProperty.all(Colors.blue),
    splashRadius: 20,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );
}