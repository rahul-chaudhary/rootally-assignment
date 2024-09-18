import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color? customBackground;

  CustomColors({required this.customBackground});

  @override
  CustomColors copyWith({Color? customBackground}) {
    return CustomColors(customBackground: customBackground ?? this.customBackground);
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      customBackground: Color.lerp(customBackground, other.customBackground, t),
    );
  }
}