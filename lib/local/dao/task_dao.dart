import 'package:ui_design/local/app_db.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/model/task_table.dart';
import 'package:ui_design/local/model/tag_table.dart';
import 'package:ui_design/local/model/task_with_tag.dart';

part 'task_dao.g.dart';

@UseDao(
    tables: [Tasks, Tags]
)
class TaskDao extends DatabaseAccessor<AppDb> with _$TaskDaoMixin {
  final AppDb db;
  TaskDao(this.db): super(db);

  Stream<List<TaskWithTag>> watchAllTasks() {
    return (select(tasks)
      ..orderBy(
          [
                (t) => OrderingTerm(expression: t.dueDate, mode: OrderingMode.desc),
                (t) => OrderingTerm(expression: t.name)
          ]
      )
    ).join(
        [
          leftOuterJoin(tags, tags.name.equalsExp(tasks.tagName))
        ]
    ).watch()
        .map((rows) => rows.map(
            (row) {
          return TaskWithTag(
              task: row.readTable(tasks),
              tag:  row.readTable(tags)
          );
        }
    ).toList());
  }

  Future insertTask(Insertable<Task> task) => into(tasks).insert(task);
  Future updateTask(Insertable<Task> task) => update(tasks).replace(task);
  Future deleteTask(Insertable<Task> task) => delete(tasks).delete(task);

}