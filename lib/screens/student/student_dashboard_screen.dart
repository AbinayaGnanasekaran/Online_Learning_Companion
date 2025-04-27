import 'package:flutter/material.dart';

class StudentDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Search Courses"),
              onPressed: () {
                // Navigate to course search screen
              },
            ),
            ElevatedButton(
              child: Text("My Enrollments"),
              onPressed: () {
                // Show enrolled courses
              },
            ),
          ],
        ),
      ),
    );
  }
}
