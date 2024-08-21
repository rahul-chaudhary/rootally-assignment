import 'package:flutter/material.dart';


TextButton iconButton(Text txt, Icon icon, Color btnBgColor, VoidCallback onPressed) {
  return TextButton.icon(
      onPressed: () {},
      label: txt,
      icon: icon,
      style: ButtonStyle(
        backgroundColor:
        WidgetStateProperty.all<Color>(btnBgColor),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ));
}
