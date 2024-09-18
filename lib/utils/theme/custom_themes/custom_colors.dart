import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color? tabSelectorContainerColor;
  final Color? tabButtonSelectedColor;
  final Color? tabButtonUnselectedColor;
  final Color? tabContentContainerColor;
  final Color? assessmentCardColor;
  final Color? workoutRoutineCardColor;


  CustomColors({
    required this.tabContentContainerColor,
    this.tabSelectorContainerColor,
    this.tabButtonSelectedColor,
    this.tabButtonUnselectedColor,
    this.assessmentCardColor,
    this.workoutRoutineCardColor,
  });

  @override
  CustomColors copyWith({Color? customBackground}) {
    return CustomColors(
        tabContentContainerColor: customBackground ?? tabContentContainerColor,
        tabSelectorContainerColor: tabSelectorContainerColor ?? tabSelectorContainerColor,
        tabButtonSelectedColor: tabButtonSelectedColor ?? tabButtonSelectedColor,
        tabButtonUnselectedColor: tabButtonUnselectedColor ?? tabButtonUnselectedColor,
        assessmentCardColor: assessmentCardColor ?? assessmentCardColor,
        workoutRoutineCardColor: workoutRoutineCardColor ?? workoutRoutineCardColor,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      tabContentContainerColor: Color.lerp(tabContentContainerColor, other.tabContentContainerColor, t,),
      tabSelectorContainerColor: Color.lerp(tabSelectorContainerColor, other.tabSelectorContainerColor, t,),
      tabButtonSelectedColor: Color.lerp(tabButtonSelectedColor, other.tabButtonSelectedColor, t,),
      tabButtonUnselectedColor: Color.lerp(tabButtonUnselectedColor, other.tabButtonUnselectedColor, t,),
      assessmentCardColor: Color.lerp(assessmentCardColor, other.assessmentCardColor, t,),
      workoutRoutineCardColor: Color.lerp(workoutRoutineCardColor, other.workoutRoutineCardColor, t,),
    );
  }
}