import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/app_db.dart';
import 'package:ui_design/local/model/student_table.dart';
import 'package:ui_design/local/model/student_with_course.dart';

part 'student_dao.g.dart';

@UseDao(
  tables: [Students]
)

class StudentDao extends DatabaseAccessor<AppDb> with _$StudentDaoMixin{
  final AppDb db;
  StudentDao(this.db):super(db);

  Stream<List<Student>>watchStudents()=>select(students).watch();
  Future<List<Student>>getAllStudents()=>select(students).get();
  Future insertStudent(Insertable<Student> student)=>into(students).insert(student);
  Future updateStudent(Insertable<Student> student)=>update(students).replace(student);
  Future deleteStudent(Insertable<Student> student)=>delete(students).delete(student);

}