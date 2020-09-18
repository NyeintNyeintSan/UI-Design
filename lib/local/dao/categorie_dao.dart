import 'package:ui_design/local/app_db.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/model/categorie_table.dart';

part 'categorie_dao.g.dart';

@UseDao(
    tables:[Categories]
)

class CategorieDao extends DatabaseAccessor<AppDb> with _$CategorieDaoMixin{
  final AppDb db;
  CategorieDao(this.db):super(db);

  Stream<List<Categorie>> watchCategories()=>select(categories).watch();
  Future<List<Categorie>>getAllCategories()=>select(categories).get();
  Future insertCategorie (Insertable<Categorie> categorie)=>into(categories).insert(categorie);
}