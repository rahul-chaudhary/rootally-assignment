import 'package:flutter/material.dart';
import 'Screens/assessment_detail_page.dart';
import 'Screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Hello Jane'),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(title: 'Hello Jane'),
        '/assessment': (context) => const AssessmentDetailPage(),
      },
    );
  }
}

