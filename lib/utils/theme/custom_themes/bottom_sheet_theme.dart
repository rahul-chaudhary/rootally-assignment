import 'package:flutter/material.dart';

import '../../../assets/colors_container.dart';

class RABottomSheetTheme {
  RABottomSheetTheme._();

  static const lightBottomSheetTheme = BottomSheetThemeData(
    elevation: 0,
    showDragHandle: true,
    backgroundColor: ColorContainer.clrWhite2,
    modalBackgroundColor: ColorContainer.clrWhite2,
    constraints: BoxConstraints(
      minHeight: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
  );
  static const darkBottomSheetTheme = BottomSheetThemeData(
    elevation: 0,
    showDragHandle: true,
    backgroundColor: ColorContainer.clrGray2,
    modalBackgroundColor: ColorContainer.clrGray2,
    constraints: BoxConstraints(
      minHeight: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
  );
}