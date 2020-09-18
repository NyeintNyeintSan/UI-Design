import 'package:moor/moor.dart';

class Courses extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1,max: 200)();

  @override
  Set<Column>get primaryKey=>{id};

}