import 'package:flutter/material.dart';
import 'package:rootally_assignment/utils/routes.dart';
import 'package:rootally_assignment/utils/theme/theme.dart';
import 'Screens/assessment_detail_page.dart';
import 'Screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'data/firebase_options.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const RootallyApp());
}

class RootallyApp extends StatelessWidget {
  const RootallyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rootally AI',
      themeMode: ThemeMode.system,
      theme: RATheme.lightTheme,
      darkTheme: RATheme.darkTheme,
      home: const HomePage(title: 'Hello Jane'),
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => const HomePage(title: 'Hello Jane'),
        Routes.assessment: (context) => const AssessmentDetailPage(),
      },
    );
  }
}

