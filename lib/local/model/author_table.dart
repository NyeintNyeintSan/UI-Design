import 'package:moor_flutter/moor_flutter.dart';

class Authors extends Table{
  IntColumn get id=> integer().autoIncrement()();
  TextColumn get name=> text().withLength(min: 3,max: 100)();

  @override
  Set <Column> get primary=>{id};
}