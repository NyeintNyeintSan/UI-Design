import 'package:moor_flutter/moor_flutter.dart';

class Books extends Table{
  IntColumn get id=>integer().autoIncrement()();
  TextColumn get name=>text().withLength(min: 3,max: 100)();
  IntColumn get author_id=>integer()();
  IntColumn get category_id=>integer()();

  @override
  Set <Column>get primaryKey=>{id};
}