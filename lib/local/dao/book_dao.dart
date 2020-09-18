import 'package:ui_design/local/app_db.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/model/author_table.dart';
import 'package:ui_design/local/model/book_table.dart';
import 'package:ui_design/local/model/categorie_table.dart';
import 'package:ui_design/local/model/book_with.dart';

part 'book_dao.g.dart';

@UseDao(
  tables: [Books, Authors, Categories]
)
class BookDao extends DatabaseAccessor<AppDb> with _$BookDaoMixin{
  final AppDb db;
  BookDao(this.db):super(db);

  Stream<List<BookWith>> watchAllBooks(){
    return(select(books)
        ..orderBy(
          [
            (t) => OrderingTerm(expression: t.name, mode: OrderingMode.desc)
          ]
        )
    )
        .join(
          [
            leftOuterJoin(authors, authors.id.equalsExp(books.author_id)),
            leftOuterJoin(categories, categories.id.equalsExp(books.category_id))
          ]
        ).watch()
        .map((rows) => rows.map(
        (row){
          return BookWith(
            book: row.readTable(books),
            author: row.readTable(authors),
            categorie: row.readTable(categories)
          );
        }
    ).toList());
  }

  Future insertBook(Insertable<Book> book) => into(books).insert(book);
  Future updateBook(Insertable<Book> book) => update(books).replace(book);
  Future deleteBook(Insertable<Book> book) => delete(books).delete(book);
}