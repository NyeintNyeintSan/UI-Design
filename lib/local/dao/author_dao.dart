import 'package:ui_design/local/app_db.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/model/author_table.dart';

part 'author_dao.g.dart';

@UseDao(
    tables:[Authors]
)

class AuthorDao extends DatabaseAccessor<AppDb> with _$AuthorDaoMixin{
final AppDb db;
AuthorDao(this.db):super(db);

Stream<List<Author>> watchAuthors()=>select(authors).watch();
Future insertAuthor(Insertable<Author> author)=> into(authors).insert(author);
Future<List<Author>>getAllAuthors()=>select(authors).get();

}