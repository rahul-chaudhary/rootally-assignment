import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rootally_assignment/model/workout_routine.dart';
import 'package:rootally_assignment/retrieve_data.dart';
import 'package:rootally_assignment/utils/icon_button.dart';
import '../assets/colors_container.dart';
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
  late Future<List<FitnessChallenge>> assessmentsData;
  @override
  void initState() {
    super.initState();
    assessmentsData = getAllAssessment();
  }
  void _changeTabSelected(TabSelected selectedTab) {
    setState(() {
      _tabSelected = selectedTab;

      _isAssessmentTabSelected = _tabSelected == TabSelected.assessments;
      _isAppointmentTabSelected = _tabSelected == TabSelected.appointments;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorContainer.clrWhite,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: ColorContainer.clrWhite,
        title: topAppBarContainer(context),
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
          ],
        ),
      ),
    );
  }

  Container workoutRoutineBox() {
    return Container(
      height: 150,
      margin: const EdgeInsets.only(bottom: 25),
      child: ListView.builder(
          itemCount: workoutRoutinesList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return workoutRoutineContainer(
                workoutRoutinesList[index].title,
                workoutRoutinesList[index].workoutType,
                workoutRoutinesList[index].workoutGoal,
                workoutRoutinesList[index].difficulty,
                workoutRoutinesList[index].imgAssetPath);
          }),
    );
  }

  Container workoutRoutineContainer(String workoutTitle, String workoutType,
      String workoutGoal, String difficulty, String imgAssetPath) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: BoxDecoration(
        color: ColorContainer.clrWhite,
        border: Border.all(
          color: ColorContainer.clrGray3,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                bottomLeft: Radius.circular(20.0),
              ),
              child: Container(
                height: double.infinity,
                color: ColorContainer.clrCream1,
                child: Image.asset(
                  imgAssetPath,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    workoutTitle,
                    style: GoogleFonts.poppins(
                        color: ColorContainer.clrGray2,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Text(
                    workoutType,
                    style: GoogleFonts.poppins(
                        color: ColorContainer.clrGray1,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: ColorContainer.clrWhite,
                      border: Border.all(
                        color: ColorContainer.clrGray3,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      workoutGoal,
                      style: GoogleFonts.poppins(
                          color: ColorContainer.clrBlue1,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    ),
                  ),
                  // roundTxtButton(true, workoutGoal, ColorContainer.clrBlue1, 12.0,
                  //     ColorContainer.clrWhite, () {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Difficulty : ',
                        style: GoogleFonts.poppins(
                            color: ColorContainer.clrGray1,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      Text(
                        difficulty,
                        style: GoogleFonts.poppins(
                            color: ColorContainer.clrPink1,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container todayChallengesContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
      decoration: BoxDecoration(
        color: ColorContainer.clrGreen2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 0),
                  child: Text(
                    'Today\'s Challenge!',
                    style: GoogleFonts.poppins(
                        color: ColorContainer.clrGreen1,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
                Container(
                  height: 25,
                  width: 100,
                  margin: const EdgeInsets.fromLTRB(0, 2, 0, 10),
                  decoration: BoxDecoration(
                    color: ColorContainer.clrGreen1,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Push Up 20x',
                      style: GoogleFonts.poppins(
                          color: ColorContainer.clrWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    ),
                  ),
                ),
                LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: ColorContainer.clrWhite,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                      ColorContainer.clrPink1),
                  minHeight: 12,
                  borderRadius: BorderRadius.circular(20),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                  child: Text(
                    '10/20 Complete',
                    style: GoogleFonts.poppins(
                        color: ColorContainer.clrGray2,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                ),
                iconButton(
                    Text(
                      'Continue',
                      style: GoogleFonts.poppins(
                          color: ColorContainer.clrBlue1,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    const Icon(
                      Icons.play_circle_fill_rounded,
                      color: ColorContainer.clrBlue1,
                    ),
                    ColorContainer.clrWhite,
                    () {})
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: Image.asset(
                'lib/assets/images/push_up_girl.png',
                alignment: Alignment.centerRight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container viewAllRowContainer(BuildContext context, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.poppins(
                color: ColorContainer.clrGray2,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/assessment');
            },
            child: Text(
              'View All',
              style: GoogleFonts.poppins(
                color: ColorContainer.clrGray2,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SvgPicture.asset(
            'lib/assets/icons/arrow_forward_round_filled.svg',
            height: 25,
            width: 25,
          ),
        ],
      ),
    );
  }

  Container tabContentContainer() {
    return Container(
      decoration: BoxDecoration(
        color: ColorContainer.clrPurple1,
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 340,
            child: _tabSelected == TabSelected.assessments
                ? myAssessmentListView()
                : myAppointmentsListView(),
          ),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all<Color>(ColorContainer.clrIndigo),
                padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 40)),
                // Adjust padding
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Text(
                'View All',
                style: GoogleFonts.poppins(
                    color: ColorContainer.clrWhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              )),
        ],
      ),
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
            height: 60,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: appointmentList[index].containerColor,
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(appointmentList[index].svgAssetPath),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(appointmentList[index].title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: ColorContainer.clrGray2,
                          fontWeight: FontWeight.w600,
                          fontSize: 14)),
                ),
              ],
            ),
          );
        });
  }

  FutureBuilder<List<FitnessChallenge>> myAssessmentListView() {
    return FutureBuilder<List<FitnessChallenge>>(
      future: assessmentsData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final item = snapshot.data![index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/assessment');
                },
                child: assessmentListItem(item),
              );
            },
          );
        } else {
          return Center(child: Text('No Assessments Found'));
        }
      },
    );
  }

  Widget assessmentListItem(FitnessChallenge item) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        color: ColorContainer.clrWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              child: Image.asset(
                item.imgAssetPath,
                // item.entries.elementAt(2).value[0].toString(),
                // item['imgAssetPath'],
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Text(
                     item.title,
                     // item.entries.elementAt(1).value[0].toString(),
                    // item['title'],
                    softWrap: true,
                    style: const TextStyle(
                      color: ColorContainer.clrGray2,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      item.description,
                      // item.entries.elementAt(0).value[0].toString(),
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: ColorContainer.clrGray2,
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'lib/assets/icons/play_round.svg',
                          height: 30,
                          width: 30,
                        ),
                        Container(
                          padding:
                          const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          child: Text(
                            'Start',
                            style: GoogleFonts.poppins(
                              color: ColorContainer.clrBlue1,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container tabSelectorContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 7),
      decoration: BoxDecoration(
        color: ColorContainer.clrPurple1,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: tabTxtButton(_isAssessmentTabSelected, 'My Assessments', () {
              setState(() {
                _tabSelected = TabSelected.assessments;
                _changeTabSelected(_tabSelected);
              });
            }),
          ),
          Expanded(
            flex: 1,
            child:
                tabTxtButton(_isAppointmentTabSelected, 'My Appointments', () {
              setState(() {
                _tabSelected = TabSelected.appointments;
                _changeTabSelected(_tabSelected);
              });
            }),
          ),
        ],
      ),
    );
  }

  TextButton roundTxtButton(bool isEnabled, String btnText, Color btnBgClr,
      double fSize, Color btnTxtClr, VoidCallback onPressed) {
    var btnTxtColor = isEnabled ? btnTxtClr : ColorContainer.clrGray1;
    var btnBgColor = isEnabled ? btnBgClr : ColorContainer.clrPurple1;
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(const Size(80, 20)),
        backgroundColor: WidgetStateProperty.all<Color>(btnBgColor),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      child: Text(
        btnText,
        style: TextStyle(color: btnTxtColor, fontSize: fSize),
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
        style: GoogleFonts.poppins(
            color: btnTxtColor, fontWeight: FontWeight.w500, fontSize: 14),
      ),
    );
  }

  Container topAppBarContainer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: ColorContainer.clrBlue1),
          ),
          SvgPicture.asset('lib/assets/icons/avatar.svg',
              height: 26, width: 26),
        ],
      ),
    );
  }
}
