import 'package:flutter/material.dart';
import 'package:rootally_assignment/utils/icon_button.dart';

import '../colors_container.dart';
import '../model/assessment_feature.dart';

class AssessmentDetailPage extends StatefulWidget {
  const AssessmentDetailPage({super.key});

  static const List howDoWeDoItInstructionList = [
    '1. Ensure that you are in a well-lit space',
    '2. Allow camera access and place your device against a stable object or wall',
    '3. Avoiding wearing baggy clothes',
    '4. Make sure you exercise as per the instruction provided by the trainer',
    '5. Watch the short preview before each exercise',
  ];
  static const List benefitsList = [
    '• Holistic Insight into Physical Health Across Multiple Key Areas',
    '• Enables Early Interventions, Improving Preventive Care and Health Outcomes',
    '• Tailored Lifestyle and Health Recommendations Based on Detailed Assessment Results'
  ];

  @override
  State<StatefulWidget> createState() => _AssessmentDetailPageState();
}

class _AssessmentDetailPageState extends State<AssessmentDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              topContainer(),
              titleText('What do you get ?'),
              featureContainer(),
              titleText('How we do it?'),
              instructionListContainer(
                  AssessmentDetailPage.howDoWeDoItInstructionList),
              titleText('Benefits'),
              instructionListContainer(AssessmentDetailPage.benefitsList),
              iconButton(
                  'Start Assessment',
                  const Icon(Icons.play_arrow, color: ColorContainer.clrWhite),
                  ColorContainer.clrWhite,
                  ColorContainer.clrBlue1,
                  () {}
              )

            ],
          ),
        ),
      ),
    );
  }

  Container instructionListContainer(List instructions) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: ColorContainer.clrWhite2,
          border: Border.all(width: 1, color: ColorContainer.clrGray3),
          borderRadius: BorderRadius.circular(20)),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: instructions.length,
        itemBuilder: (context, index) {
          return instructionText(instructions[index]);
        },
      ),
    );
  }

  Text instructionText(String txt) {
    return Text(
      txt,
      style: const TextStyle(color: ColorContainer.clrGray2, fontSize: 16),
    );
  }

  Container featureContainer() {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: assessmentFeatureList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                assessmentFeatureList[index].icon,
                Text(assessmentFeatureList[index].title),
              ],
            );
          }),
    );
  }

  Text titleText(String title) {
    return Text(
      title,
      style: const TextStyle(color: ColorContainer.clrGray2, fontSize: 20),
    );
  }

  Container topContainer() {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [ColorContainer.clrGreen3, ColorContainer.clrGreen2],
          // Colors in the gradient
          center: Alignment.bottomCenter,
          // Center of the radial gradient
          radius: 1, // Radius of the gradient
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Health Risk\nAssessment',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(ColorContainer.clrWhite)),
                label: const Text(
                  '4 min',
                  style: TextStyle(color: ColorContainer.clrGray2),
                ),
                icon: const Icon(
                  Icons.watch_later,
                  color: ColorContainer.clrGray2,
                )),
          ],
        ),
      ),
    );
  }
}
