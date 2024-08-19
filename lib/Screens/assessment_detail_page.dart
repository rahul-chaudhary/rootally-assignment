import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rootally_assignment/utils/icon_button.dart';

import '../assets/colors_container.dart';
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
        backgroundColor: ColorContainer.clrGreen2,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              topContainer(),
              Container(
                decoration: const BoxDecoration(
                  color: ColorContainer.clrWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleText('What do you get ?'),
                    // featureContainer(),
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset('lib/assets/images/assessment_feature.png')),
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: titleText('How we do it?')),
                    instructionListContainer(
                        AssessmentDetailPage.howDoWeDoItInstructionList,
                    true
                    ),
                    titleText('Benefits'),
                    instructionListContainer(AssessmentDetailPage.benefitsList, false),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      height: 60,
                      child: iconButton(
                          Text(
                            'Start Assessment',
                            style: GoogleFonts.poppins(
                                color: ColorContainer.clrWhite,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          const Icon(Icons.play_arrow,
                              color: ColorContainer.clrWhite,
                          size: 40,
                          ),
                          ColorContainer.clrBlue1,
                          () {}),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container instructionListContainer(List instructions, bool isImageEnabled) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: ColorContainer.clrWhite2,
          border: Border.all(width: 1, color: ColorContainer.clrGray3),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Column(
          children: [
            if(isImageEnabled) Image.asset('lib/assets/images/img.png') ,
            ListView.builder(
              shrinkWrap: true,
              itemCount: instructions.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
                  child: instructionText(instructions[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Text instructionText(String txt) {
    return Text(
      txt,
      style: GoogleFonts.poppins(color: ColorContainer.clrGray2, fontSize: 12, fontWeight: FontWeight.w500),
    );
  }

  Container featureContainer() {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
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
      ),
    );
  }

  Text titleText(String title) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        color: ColorContainer.clrIndigo,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Container topContainer() {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [ColorContainer.clrGreen3, ColorContainer.clrGreen2],
          // Colors in the gradient
          center: Alignment.bottomCenter,
          // Center of the radial gradient
          radius: 1, // Radius of the gradient
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: ColorContainer.clrIndigo, onPressed: () { Navigator.pop(context); },
                  ),
                  Text(
                    'Health Risk Assessment',
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: ColorContainer.clrIndigo),
                  ),
                  Container(
                    height: 25,
                    width: 70,
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorContainer.clrWhite,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0, horizontal: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 15,
                              width: 15,
                              child: SvgPicture.asset(
                                  'lib/assets/icons/clock_ic.svg')),
                          Text(
                            '4 min',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: ColorContainer.clrIndigo),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Expanded(
                  flex: 2,
                  child: Image.asset(
                    'lib/assets/images/pointing_gym_boy.png',
                    height: double.infinity,
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.fill,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
