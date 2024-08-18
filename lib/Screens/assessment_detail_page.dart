import 'package:flutter/material.dart';

import '../colors_container.dart';


class AssessmentDetailPage extends StatefulWidget {
  const AssessmentDetailPage({super.key});

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
            children: <Widget>[
            titleContainer(1),
          Container(
            width: double.infinity,
              child: Container( ))
              
            ],
          ),
        ),
      ),
    );
  }

  Container titleContainer(int flex) {
    return Container(
          width: double.infinity,
          height: 350,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [ColorContainer.clrGreen1, ColorContainer.clrGreen2], // Colors in the gradient
                center: Alignment.bottomCenter, // Center of the radial gradient
                radius: 1, // Radius of the gradient
              ),
            ),
            child: const Text(
              'Assessment Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
  }
}
