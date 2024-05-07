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

abstract class PublicBaseModel<T extends Model> extends ThisModel<T> {
  //
  //
  //

  static const FIELDS = {
    ('id?', String),
    ('avatar?', ModelFileEntry),
    ('display_name?', String),
    ('display_name_searchable?', T_SEARCHABLE_STRING),
    ('email?', T_LOWER_CASE_STRING),
    ('created_at?', DateTime),
    ('created_by?', String),
    ('deleted_at?', DateTime),
    ('deleted_by?', String),
    ('description?', String),
    ('primary_address?', ModelAddressEntry),
    ('other_addresses?', Set<ModelAddressEntry>),
    ('primary_email?', ModelEmailEntry),
    ('other_emails?', Set<ModelEmailEntry>),
    ('primary_phone?', ModelPhoneEntry),
    ('other_phones?', Set<ModelEmailEntry>),
  };

  //
  //
  //

  String? id;
  String? displayName;
  String? displayNameSearchable;
  String? email;
  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;
}
