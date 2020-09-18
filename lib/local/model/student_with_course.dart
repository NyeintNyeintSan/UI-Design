import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/app_db.dart';

class StudentWithCourse {
  final Student student;
  final Course course;

  StudentWithCourse({
    @required this.student,
    @required this.course
  });
}