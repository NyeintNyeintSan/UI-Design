import 'package:moor_flutter/moor_flutter.dart';

class Tasks extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1,max: 100)();
  DateTimeColumn get dueDate => dateTime().withDefault(Constant(DateTime.now()))();
  BoolColumn get completed => boolean().withDefault(Constant(false))();
  TextColumn get foo => text().withDefault(const Constant(""))();
  RealColumn get bar => real().nullable()();
//  BlobColumn get blob => blob().
  TextColumn get tagName => text().nullable().customConstraint("NULL REFERENCE tags (name)")();

}