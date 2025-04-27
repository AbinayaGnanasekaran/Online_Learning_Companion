import 'package:flutter/material.dart';
import '../models/course.dart';

class CourseDetailScreen extends StatelessWidget {
  static const routeName = '/course-detail';

  @override
  Widget build(BuildContext context) {
    final Course course = ModalRoute.of(context)!.settings.arguments as Course;

    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(course.imageUrl),
            const SizedBox(height: 20),
            Text(course.title, style: const TextStyle(fontSize: 24)),
            Text("By ${course.tutor}", style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
