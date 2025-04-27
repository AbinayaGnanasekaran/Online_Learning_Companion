import '../models/course.dart';

class CourseProvider {
  List<Course> _courses = [];

  List<Course> get courses => [..._courses];

  void addCourse(Course course) {
    _courses.add(course);
  }

  void updateCourse(String id, Course updatedCourse) {
    final index = _courses.indexWhere((c) => c.id == id);
    if (index != -1) _courses[index] = updatedCourse;
  }

  void deleteCourse(String id) {
    _courses.removeWhere((c) => c.id == id);
  }

  Course? getById(String id) {
    try {
      return _courses.firstWhere((c) => c.id == id);
    } catch (e) {
      return null;
    }
  }
}
