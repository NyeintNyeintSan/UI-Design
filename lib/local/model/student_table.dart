import 'package:moor/moor.dart';

class Students extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 4,max: 100)();
  TextColumn get address => text().nullable()();
//  DateTimeColumn get registeredDate => dateTime().nullable()();
//  BoolColumn get isValid => boolean().withDefault(Constant(true))();

  @override
  Set<Column>get primaryKey=>{id};
}