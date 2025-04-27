import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'choose_login_screen.dart'; // Your first login page
import 'student_dashboard_screen.dart'; // Your student page
import 'tutor_dashboard_screen.dart'; // Your tutor page
import 'firebase_options.dart'; // This will be generated

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Learning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChooseLoginScreen(),
      routes: {
        StudentDashboardScreen.routeName: (ctx) => StudentDashboardScreen(),
        TutorDashboardScreen.routeName: (ctx) => TutorDashboardScreen(),
      },
    );
  }
}
