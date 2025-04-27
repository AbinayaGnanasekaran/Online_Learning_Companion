import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/course_provider.dart';
import 'course_detail_screen.dart';

class CourseScreen extends StatelessWidget {
  static const routeName = '/courses';

  @override
  Widget build(BuildContext context) {
    final courseData = Provider.of<CourseProvider>(context);
    final courses = courseData.courses;

    return Scaffold(
      appBar: AppBar(title: const Text("E-Learning")),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (ctx, i) => ListTile(
          leading: Image.network(courses[i].imageUrl),
          title: Text(courses[i].title),
          subtitle: Text("Tutor: ${courses[i].tutor}"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushNamed(
              context,
              CourseDetailScreen.routeName,
              arguments: courses[i],
            );
          },
        ),
      ),
    );
  }
}
