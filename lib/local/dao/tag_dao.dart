import 'package:ui_design/local/app_db.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_design/local/model/tag_table.dart';

part 'tag_dao.g.dart';

@UseDao(
    tables:[Tags]
)

class TagDao extends DatabaseAccessor<AppDb> with _$TagDaoMixin {
  final AppDb db;
  TagDao(this.db): super(db);

  Stream<List<Tag>> watchTags() => select(tags).watch();
  Future insertTag(Insertable<Tag> tag) => into(tags).insert(tag);
}