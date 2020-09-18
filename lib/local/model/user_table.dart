import 'package:moor_flutter/moor_flutter.dart';

class Users extends Table{
  IntColumn get id=> integer().autoIncrement()();
  TextColumn get name=> text().withLength(min: 3,max: 100)();
  TextColumn get address=> text().withLength(min: 5,max: 200)();

  @override
  Set <Column> get PrimaryKey=>{id};
}