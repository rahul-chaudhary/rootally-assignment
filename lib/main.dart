import 'package:flutter/material.dart';
import 'Screens/assessment_detail_page.dart';
import 'Screens/home_page.dart';

void main() {
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

