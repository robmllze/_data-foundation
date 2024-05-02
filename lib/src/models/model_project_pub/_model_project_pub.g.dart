//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY 🇽🇾🇿 GEN - DO NOT MODIFY BY HAND
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

// ignore_for_file: annotate_overrides
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: invalid_null_aware_operator
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_non_null_assertion
// ignore_for_file: unnecessary_null_comparison
// ignore_for_file: unnecessary_this

part of 'model_project_pub.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelProjectPub extends _ModelProjectPub {
  //
  //
  //

  static const CLASS = 'ModelProjectPub';
  static const MODEL_ID = 'model_project_pub';

  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DELETED_AT = 'deleted_at';
  static const K_DELETED_BY = 'deleted_by';
  static const K_DESCRIPTION = 'description';
  static const K_DISPLAY_NAME = 'display_name';
  static const K_DISPLAY_NAME_SEARCHABLE = 'display_name_searchable';
  static const K_ID = 'id';
  static const K_OTHER_ADDRESSES = 'other_addresses';
  static const K_OTHER_EMAILS = 'other_emails';
  static const K_OTHER_PHONES = 'other_phones';
  static const K_PRIMARY_ADDRESS = 'primary_address';
  static const K_PRIMARY_EMAIL = 'primary_email';
  static const K_PRIMARY_PHONE = 'primary_phone';
  static const K_UPLOADED_MEDIA_IDS = 'uploaded_media_ids';
  static const K_WHEN_CLOSED = 'when_closed';
  static const K_WHEN_OPENED = 'when_opened';

  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;
  String? description;
  String? displayName;
  String? displayNameSearchable;
  Map<DateTime?, ModelAddressEntry>? otherAddresses;
  Map<DateTime?, ModelEmailEntry>? otherEmails;
  Map<DateTime?, ModelPhoneEntry>? otherPhones;
  ModelAddressEntry? primaryAddress;
  ModelEmailEntry? primaryEmail;
  ModelPhoneEntry? primaryPhone;
  Set<String?>? uploadedMediaIds;
  Map<String, DateTime>? whenClosed;
  Map<String, DateTime>? whenOpened;

  //
  //
  //

  ModelProjectPub({
    String? id,
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.deletedBy,
    this.description,
    this.displayName,
    this.displayNameSearchable,
    this.otherAddresses,
    this.otherEmails,
    this.otherPhones,
    this.primaryAddress,
    this.primaryEmail,
    this.primaryPhone,
    this.uploadedMediaIds,
    this.whenClosed,
    this.whenOpened,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelProjectPub.unsafe({
    String? id,
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.deletedBy,
    this.description,
    this.displayName,
    this.displayNameSearchable,
    this.otherAddresses,
    this.otherEmails,
    this.otherPhones,
    this.primaryAddress,
    this.primaryEmail,
    this.primaryPhone,
    this.uploadedMediaIds,
    this.whenClosed,
    this.whenOpened,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelProjectPub.from(
    Model? other,
  ) {
    return ModelProjectPub.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelProjectPub.of(
    ModelProjectPub? other,
  ) {
    return ModelProjectPub.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelProjectPub.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelProjectPub.fromJson(decoded);
      } else {
        return ModelProjectPub.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelProjectPub.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelProjectPub.unsafe(
        createdAt: () {
          final a = otherData?[K_CREATED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        createdBy: otherData?[K_CREATED_BY]?.toString().trim().nullIfEmpty,
        deletedAt: () {
          final a = otherData?[K_DELETED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        deletedBy: otherData?[K_DELETED_BY]?.toString().trim().nullIfEmpty,
        description: otherData?[K_DESCRIPTION]?.toString().trim().nullIfEmpty,
        displayName: otherData?[K_DISPLAY_NAME]?.toString().trim().nullIfEmpty,
        displayNameSearchable: otherData?[K_DISPLAY_NAME_SEARCHABLE]
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase(),
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        otherAddresses: letMap(otherData?[K_OTHER_ADDRESSES])
            ?.map(
              (final p0, final p1) => MapEntry(
                () {
                  final a = p0;
                  return a != null ? DateTime.tryParse(a)?.toUtc() : null;
                }(),
                () {
                  final a = letMap<String, dynamic>(p1);
                  return a != null ? ModelAddressEntry.fromJson(a) : null;
                }(),
              ),
            )
            .nonNulls
            .nullIfEmpty
            ?.cast(),
        otherEmails: letMap(otherData?[K_OTHER_EMAILS])
            ?.map(
              (final p0, final p1) => MapEntry(
                () {
                  final a = p0;
                  return a != null ? DateTime.tryParse(a)?.toUtc() : null;
                }(),
                () {
                  final a = letMap<String, dynamic>(p1);
                  return a != null ? ModelEmailEntry.fromJson(a) : null;
                }(),
              ),
            )
            .nonNulls
            .nullIfEmpty
            ?.cast(),
        otherPhones: letMap(otherData?[K_OTHER_PHONES])
            ?.map(
              (final p0, final p1) => MapEntry(
                () {
                  final a = p0;
                  return a != null ? DateTime.tryParse(a)?.toUtc() : null;
                }(),
                () {
                  final a = letMap<String, dynamic>(p1);
                  return a != null ? ModelPhoneEntry.fromJson(a) : null;
                }(),
              ),
            )
            .nonNulls
            .nullIfEmpty
            ?.cast(),
        primaryAddress: () {
          final a = letMap<String, dynamic>(otherData?[K_PRIMARY_ADDRESS]);
          return a != null ? ModelAddressEntry.fromJson(a) : null;
        }(),
        primaryEmail: () {
          final a = letMap<String, dynamic>(otherData?[K_PRIMARY_EMAIL]);
          return a != null ? ModelEmailEntry.fromJson(a) : null;
        }(),
        primaryPhone: () {
          final a = letMap<String, dynamic>(otherData?[K_PRIMARY_PHONE]);
          return a != null ? ModelPhoneEntry.fromJson(a) : null;
        }(),
        uploadedMediaIds: letSet(otherData?[K_UPLOADED_MEDIA_IDS])
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
        whenClosed: letMap(otherData?[K_WHEN_CLOSED])
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                () {
                  final a = p1;
                  return a != null ? DateTime.tryParse(a)?.toUtc() : null;
                }(),
              ),
            )
            .nonNulls
            .nullIfEmpty
            ?.cast(),
        whenOpened: letMap(otherData?[K_WHEN_OPENED])
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                () {
                  final a = p1;
                  return a != null ? DateTime.tryParse(a)?.toUtc() : null;
                }(),
              ),
            )
            .nonNulls
            .nullIfEmpty
            ?.cast(),
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelProjectPub.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelProjectPub.fromJson(uri.queryParameters);
      } else {
        return ModelProjectPub.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  static ModelProjectPub? convert(
    Model? other,
  ) {
    return other != null ? ModelProjectPub.from(other) : null;
  }

  //
  //
  //

  static ModelProjectPub? fromPool({
    required Iterable<ModelProjectPub>? pool,
    required String? id,
  }) {
    return id != null ? pool?.firstWhereOrNull((e) => e.id == id) : null;
  }

  //
  //
  //

  @override
  Map<String, dynamic> toJson({
    dynamic defaultValue,
    bool includeNulls = false,
  }) {
    try {
      final withNulls = <String, dynamic>{
        K_CREATED_AT: createdAt?.toUtc()?.toIso8601String(),
        K_CREATED_BY: createdBy?.toString().trim().nullIfEmpty,
        K_DELETED_AT: deletedAt?.toUtc()?.toIso8601String(),
        K_DELETED_BY: deletedBy?.toString().trim().nullIfEmpty,
        K_DESCRIPTION: description?.toString().trim().nullIfEmpty,
        K_DISPLAY_NAME: displayName?.toString().trim().nullIfEmpty,
        K_DISPLAY_NAME_SEARCHABLE:
            displayNameSearchable?.toString().trim().nullIfEmpty?.toLowerCase(),
        K_ID: id?.toString().trim().nullIfEmpty,
        K_OTHER_ADDRESSES: otherAddresses
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toUtc()?.toIso8601String(),
                p1?.toJson(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
        K_OTHER_EMAILS: otherEmails
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toUtc()?.toIso8601String(),
                p1?.toJson(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
        K_OTHER_PHONES: otherPhones
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toUtc()?.toIso8601String(),
                p1?.toJson(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
        K_PRIMARY_ADDRESS: primaryAddress?.toJson(),
        K_PRIMARY_EMAIL: primaryEmail?.toJson(),
        K_PRIMARY_PHONE: primaryPhone?.toJson(),
        K_UPLOADED_MEDIA_IDS: uploadedMediaIds
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
        K_WHEN_CLOSED: whenClosed
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                p1?.toUtc()?.toIso8601String(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
        K_WHEN_OPENED: whenOpened
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                p1?.toUtc()?.toIso8601String(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelProjectPub.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelProjectPub.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelProjectPub.fromJson(otherData);
      other.createdAt != null ? this.createdAt = other.createdAt : null;
      other.createdBy != null ? this.createdBy = other.createdBy : null;
      other.deletedAt != null ? this.deletedAt = other.deletedAt : null;
      other.deletedBy != null ? this.deletedBy = other.deletedBy : null;
      other.description != null ? this.description = other.description : null;
      other.displayName != null ? this.displayName = other.displayName : null;
      other.displayNameSearchable != null
          ? this.displayNameSearchable = other.displayNameSearchable
          : null;
      other.id != null ? this.id = other.id : null;
      other.otherAddresses != null
          ? this.otherAddresses = other.otherAddresses
          : null;
      other.otherEmails != null ? this.otherEmails = other.otherEmails : null;
      other.otherPhones != null ? this.otherPhones = other.otherPhones : null;
      other.primaryAddress != null
          ? this.primaryAddress = other.primaryAddress
          : null;
      other.primaryEmail != null
          ? this.primaryEmail = other.primaryEmail
          : null;
      other.primaryPhone != null
          ? this.primaryPhone = other.primaryPhone
          : null;
      other.uploadedMediaIds != null
          ? this.uploadedMediaIds = other.uploadedMediaIds
          : null;
      other.whenClosed != null ? this.whenClosed = other.whenClosed : null;
      other.whenOpened != null ? this.whenOpened = other.whenOpened : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
