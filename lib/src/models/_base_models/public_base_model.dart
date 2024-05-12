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

export 'dart:ui' show Color;

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

abstract class PublicBaseModel<T extends Model> extends ThisModel<T> {
  //
  //
  //

  static const FIELDS = {
    ('id?', String),
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
    ('other_phones?', Set<ModelPhoneEntry>),
    ('files?', Map<String, ModelFileEntry>),
    ('distinctive_color?', Color),
  };

  //
  //
  //

  //String? id;
  String? displayName;
  String? displayNameSearchable;
  String? email;
  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;
  String? description;
  ModelAddressEntry? primaryAddress;
  Set<ModelAddressEntry>? otherAddresses;
  ModelEmailEntry? primaryEmail;
  Set<ModelEmailEntry>? otherEmails;
  ModelPhoneEntry? primaryPhone;
  Set<ModelPhoneEntry>? otherPhones;
  Map<String, ModelFileEntry>? files;
  Color? distinctiveColor;

  //
  //
  //

  Iterable<String>? get fileDownloadUrls {
    final a = this.sortedFilesByCreatedAt(ascending: false);
    final b = a?.map((e) => e.downloadUrl.toString());
    return b;
  }

  String? get avatarImageDownloadUrl {
    return this.avatarImage?.downloadUrl.toString();
  }

  ModelFileEntry? get avatarImage {
    final a = this.sortedFilesByCreatedAt(ascending: false);
    final b = a?.firstWhereOrNull((e) => e.isAvatarImage());
    return b;
  }

  bool isUploadingFile(String fileId) {
    final a = this.files?[fileId];
    final b = a != null && a.downloadUrl == null;
    return b;
  }

  bool isUploadingAvatarImage() {
    final a = this.avatarImage;
    final b = a != null && a.downloadUrl == null;
    return b;
  }

  Iterable<ModelFileEntry>? sortedFilesByCreatedAt({bool ascending = true}) {
    return this.files?.values.toList()
      ?..sort((a, b) {
        final now = DateTime.now();
        return (ascending ? 1 : -1) * (a.createdAt ?? now).compareTo((b.createdAt ?? now));
      });
  }

  Iterable<ModelFileEntry>? get profileFiles {
    return this.sortedFilesByCreatedAt(ascending: false)?.where((e) => e.isProfileFile());
  }
}
