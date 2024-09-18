import 'package:flutter/material.dart';
import 'package:rootally_assignment/utils/theme/custom_themes/appbar_theme.dart';
import 'package:rootally_assignment/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:rootally_assignment/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:rootally_assignment/utils/theme/custom_themes/text_field_theme.dart';
import 'package:rootally_assignment/utils/theme/custom_themes/text_theme.dart';
import '../../assets/colors_container.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/custom_colors.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';

class RATheme {
  RATheme._();

  static ThemeData lightTheme = ThemeData(
    extensions: <ThemeExtension<dynamic>>[
      CustomColors(customBackground: ColorContainer.clrWhite),
    ],
    colorScheme: const ColorScheme.light(),
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: ColorContainer.clrBlue1,
    scaffoldBackgroundColor: ColorContainer.clrWhite,
    textTheme:RATextTheme.lightTextTheme,
    elevatedButtonTheme: RAElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: RAOutlinedButtonTheme.lightOutlinedButtonTheme,
    chipTheme: RAChipTheme.lightChipTheme,
    checkboxTheme: RACheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: RABottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: RATextFormFieldTheme.lightTextFieldTheme,
    appBarTheme: RAAppBarTheme.lightAppBarTheme,

  );
  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: ColorContainer.clrGray2,
    scaffoldBackgroundColor: ColorContainer.clrGray2,
    textTheme:RATextTheme.darkTextTheme,
    elevatedButtonTheme: RAElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: RAOutlinedButtonTheme.darkOutlinedButtonTheme,
    chipTheme: RAChipTheme.darkChipTheme,
    checkboxTheme: RACheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: RABottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: RATextFormFieldTheme.darkTextFieldTheme,
    appBarTheme: RAAppBarTheme.darkAppBarTheme,
  );
}
