import 'package:ui_design/local/app_db.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/model/user_table.dart';

part 'user_dao.g.dart';

@UseDao(
  tables:[Users]
)

class UserDao extends DatabaseAccessor<AppDb> with _$UserDaoMixin{
  final AppDb db;
  UserDao(this.db):super(db);

  Stream<List<User>>watchUsers()=>select(users).watch();
  Future<List<User>>getAllUsers()=>select(users).get();
  Future insertUser (Insertable<User>user)=>into(users).insert(user);
}