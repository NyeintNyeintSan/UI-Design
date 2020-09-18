import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/app_db.dart';

class TaskWithTag {
  final Task task;
  final Tag tag;

  TaskWithTag({
    @required this.task,
    @required this.tag
  });
}