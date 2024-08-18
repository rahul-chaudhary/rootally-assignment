import 'package:flutter/material.dart';
import 'package:rootally_assignment/model/workout_routine.dart';
import '../colors_container.dart';
import '../model/appointment.dart';
import '../model/fitness_challenge.dart';
import '../model/tab_selected.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TabSelected _tabSelected = TabSelected.assessments;
  bool _isAssessmentTabSelected = true;
  bool _isAppointmentTabSelected = false;

  void _changeTabSelected() {
    setState(() {
      _tabSelected = _tabSelected;

      if (_tabSelected == TabSelected.assessments) {
        _isAssessmentTabSelected = true;
        _isAppointmentTabSelected = false;
      } else {
        _isAssessmentTabSelected = false;
        _isAppointmentTabSelected = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorContainer.clrWhite,
      appBar: AppBar(
        backgroundColor: ColorContainer.clrWhite,
        title: topAppBarRow(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            tabSelectorContainer(),
            tabContentContainer(),
            viewAllRowContainer(context, 'Challenges'),
            todayChallengesContainer(),
            viewAllRowContainer(context, 'Workout Routines'),
            workoutRoutineBox(),

            Text(
              '$_tabSelected',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }

  SizedBox workoutRoutineBox() {
    return SizedBox(
            height: 150,
            child: ListView.builder(
                itemCount: workoutRoutinesList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return workoutRoutineContainer(
                      workoutRoutinesList[index].title,
                      workoutRoutinesList[index].workoutType,
                      workoutRoutinesList[index].workoutGoal,
                      workoutRoutinesList[index].difficulty);
                }),
          );
  }

  Container workoutRoutineContainer(String workoutTitle, String workoutType, String workoutGoal, String difficulty) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: ColorContainer.clrWhite,
        border: Border.all(
          color: ColorContainer.clrGray1,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            workoutTitle,
            style: const TextStyle(color: ColorContainer.clrGray2),
          ),
          Text(
            workoutType,
            style: const TextStyle(color: ColorContainer.clrGray1),
          ),
          roundTxtButton(true, workoutGoal, ColorContainer.clrBlue1,
              ColorContainer.clrWhite, () {}),
          Text(
            'Difficulty: $difficulty',
            style: const TextStyle(color: ColorContainer.clrPink1),
          ),
        ],
      ),
    );
  }

  Container todayChallengesContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: ColorContainer.clrGreen2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Today\'s Challenge!',
              style: TextStyle(
                fontSize: 20,
                color: ColorContainer.clrGreen1,
              )),
          roundTxtButton(true, 'Push Up 20x', ColorContainer.clrGreen1,
              ColorContainer.clrWhite, () {}),
          LinearProgressIndicator(
            value: 0.5,
            backgroundColor: ColorContainer.clrWhite,
            valueColor:
                const AlwaysStoppedAnimation<Color>(ColorContainer.clrPink1),
            minHeight: 10,
            borderRadius: BorderRadius.circular(20),
          ),
          const Text('10/20 Completed',
              style: TextStyle(
                color: ColorContainer.clrGray2,
              )),
          TextButton.icon(
              onPressed: () {},
              label: const Text('Continue'),
              icon: const Icon(
                Icons.play_circle_fill_rounded,
                color: ColorContainer.clrBlue1,
              ),
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all<Color>(ColorContainer.clrWhite),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Container viewAllRowContainer(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(title),
          const Spacer(),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/assessment');
            },
            child: const Text('View All',
                style: TextStyle(color: ColorContainer.clrGray2)),
          ),
          const Icon(
            Icons.arrow_circle_right_rounded,
            color: ColorContainer.clrIndigo,
          ),
        ],
      ),
    );
  }

  Container tabContentContainer() {
    return Container(
      decoration: BoxDecoration(
        color: ColorContainer.clrPurple1,
        borderRadius: BorderRadius.circular(40),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: const EdgeInsets.all(10),
      height: 300,
      child: _tabSelected == TabSelected.assessments ? myAssessmentListView() : myAppointmentsListView(),
    );
  }

  GridView myAppointmentsListView() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemCount: appointmentList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 100,
            color: ColorContainer.clrWhite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                appointmentList[index].icon,
                Text(appointmentList[index].title),
              ],
            ),
          );
        });
  }

  ListView myAssessmentListView() {
    return ListView.builder(
        itemCount: fitnessChallengesList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
            Navigator.pushNamed(context, '/assessment');
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              decoration: BoxDecoration(
                color: ColorContainer.clrWhite,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(fitnessChallengesList[index].title, style: const TextStyle(color: ColorContainer.clrGray2, fontWeight: FontWeight.bold, fontSize: 20),),
                  Text(fitnessChallengesList[index].description, style: const TextStyle(color: ColorContainer.clrGray2, fontWeight: FontWeight.normal, fontSize: 12),),
                ],
              ),
            ),
          );
        });
  }

  Container tabSelectorContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorContainer.clrPurple1,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          tabTxtButton(_isAssessmentTabSelected, 'My Assessments', () {
            setState(() {
              _tabSelected = TabSelected.assessments;
              _changeTabSelected();
            });
          }),
          tabTxtButton(_isAppointmentTabSelected, 'My Appointments', () {
            setState(() {
              _tabSelected = TabSelected.appointments;
              _changeTabSelected();
            });
          }),
        ],
      ),
    );
  }

  TextButton roundTxtButton(bool isEnabled, String btnText, Color btnBgClr,
      Color btnTxtClr, VoidCallback onPressed) {
    var btnTxtColor = isEnabled ? btnTxtClr : ColorContainer.clrGray1;
    var btnBgColor = isEnabled ? btnBgClr : ColorContainer.clrPurple1;
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(btnBgColor),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      child: Text(
        btnText,
        style: TextStyle(
          color: btnTxtColor,
        ),
      ),
    );
  }

  TextButton tabTxtButton(
      bool isEnabled, String btnText, VoidCallback onPressed) {
    var btnTxtColor =
        isEnabled ? ColorContainer.clrBlue1 : ColorContainer.clrGray1;
    var btnBgColor =
        isEnabled ? ColorContainer.clrWhite : ColorContainer.clrPurple1;
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(btnBgColor),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      child: Text(
        btnText,
        style: TextStyle(
          color: btnTxtColor,
        ),
      ),
    );
  }

  Row topAppBarRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: ColorContainer.clrBlue1,
              ),
        ),
        const Icon(
          Icons.account_circle_rounded,
          color: ColorContainer.clrGray1,
        ),
      ],
    );
  }
}
