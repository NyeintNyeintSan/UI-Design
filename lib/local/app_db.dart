import 'package:ui_design/local/dao/author_dao.dart';
import 'package:ui_design/local/dao/book_dao.dart';
import 'package:ui_design/local/dao/categorie_dao.dart';
import 'package:ui_design/local/dao/course_dao.dart';
import 'package:ui_design/local/dao/student_dao.dart';
import 'package:ui_design/local/dao/tag_dao.dart';
import 'package:ui_design/local/dao/task_dao.dart';
import 'package:ui_design/local/dao/user_dao.dart';
import 'package:ui_design/local/model/author_table.dart';
import 'package:ui_design/local/model/book_table.dart';
import 'package:ui_design/local/model/categorie_table.dart';
import 'package:ui_design/local/model/course_table.dart';
import 'package:ui_design/local/model/student_table.dart';
import 'package:flutter/material.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/model/tag_table.dart';
import 'package:ui_design/local/model/task_table.dart';
import 'package:ui_design/local/model/user_table.dart';
import 'model/student_table.dart';

part 'app_db.g.dart';
// flutter pub run build_runner watch
@UseMoor(tables: [Students, Courses, Tasks, Tags, Authors, Categories, Users, Books], daos: [StudentDao, CourseDao, TaskDao, TagDao, AuthorDao, CategorieDao, UserDao, BookDao])
class AppDb extends _$AppDb {
  AppDb() : super(FlutterQueryExecutor.inDatabaseFolder(
      path: 'db.sqlite', logStatements: true
  ));
  @override
  int get schemaVersion => 1;


  Stream<List<Student>>watchStudents()=>select(students).watch();
  Future<List<Student>>getAllStudents()=>select(students).get();
  Future insertStudent(Insertable<Student> student)=>into(students).insert(student);
  Future updateStudent(Insertable<Student> student)=>update(students).replace(student);
  Future deleteStudent(Insertable<Student> student)=>delete(students).delete(student);

  Stream<List<Course>> watchCourses() => select(courses).watch();
  Future insertCourse(Insertable<Course> course) => into(courses).insert(course);

  Future insertBook(Insertable<Book> book) => into(books).insert(book);
  Future updateBook(Insertable<Book> book) => update(books).replace(book);
  Future deleteBook(Insertable<Book> book) => delete(books).delete(book);

  Stream<List<Author>> watchAuthors()=>select(authors).watch();
  Future insertAuthor(Insertable<Author> author)=> into(authors).insert(author);
  Future<List<Author>>getAllAuthors()=>select(authors).get();

  Stream<List<Categorie>> watchCategories()=>select(categories).watch();
  Future<List<Categorie>>getAllCategories()=>select(categories).get();
  Future insertCategorie (Insertable<Categorie> categorie)=>into(categories).insert(categorie);

  Stream<List<User>>watchUsers()=>select(users).watch();
  Future<List<User>>getAllUsers()=>select(users).get();
  Future insertUser (Insertable<User>user)=>into(users).insert(user);
}