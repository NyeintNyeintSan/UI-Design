import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/app_db.dart';

class BookWith {
  final Book book;
  final Categorie categorie;
  final Author author;

  BookWith({
    @required this.book,
    @required this.categorie,
    @required this.author
  });
}