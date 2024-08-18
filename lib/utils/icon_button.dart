import 'package:flutter/material.dart';


TextButton iconButton(String label, Icon icon, Color btnTxtColor, Color btnBgColor, VoidCallback onPressed) {
  return TextButton.icon(
      onPressed: () {},
      label: Text(label, style: TextStyle(color: btnTxtColor)),
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
