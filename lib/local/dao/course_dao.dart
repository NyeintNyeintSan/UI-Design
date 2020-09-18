import 'package:ui_design/local/model/course_table.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/app_db.dart';

part 'course_dao.g.dart';

@UseDao(
    tables: [Courses]
)
class CourseDao extends DatabaseAccessor<AppDb> with _$CourseDaoMixin {
  final AppDb db;
  CourseDao(this.db): super(db);

  Stream<List<Course>> watchCourses() => select(courses).watch();
  Future insertCourse(Insertable<Course> course) => into(courses).insert(course);
}