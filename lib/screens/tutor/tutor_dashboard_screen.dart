import 'package:flutter/material.dart';

class TutorDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tutor Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Add Course"),
              onPressed: () {
                // Navigate to add course form
              },
            ),
            ElevatedButton(
              child: Text("Manage Courses"),
              onPressed: () {
                // List of all courses with edit/delete
              },
            ),
          ],
        ),
      ),
    );
  }
}
