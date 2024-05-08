//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

abstract class EntryBaseModel<T extends Model> extends ThisModel<T> {
  //
  //
  //

  static const FIELDS = {
    ('id?', String),
    ('title?', String),
    ('title_searchable?', T_SEARCHABLE_STRING),
    ('description?', String),
    ('created_at?', DateTime),
    ('created_by?', String),
    ('deleted_at?', DateTime),
    ('deleted_by?', String),
    ('last_modified_at?', DateTime),
    ('last_modified_by?', String),
  };

  //
  //
  //

  String? id;
  String? title;
  String? titleSearchable;
  DateTime? createdAt;
  String? createdBy;
  String? description;
}
