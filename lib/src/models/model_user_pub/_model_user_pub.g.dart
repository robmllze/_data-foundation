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

part of 'model_user_pub.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelUserPub extends _ModelUserPub {
  //
  //
  //

  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DELETED_AT = 'deleted_at';
  static const K_DELETED_BY = 'deleted_by';
  static const K_DISPLAY_NAME = 'display_name';
  static const K_DISPLAY_NAME_SEARCHABLE = 'display_name_searchable';
  static const K_EMAIL = 'email';
  static const K_ID = 'id';
  static const K_UPLOADED_MEDIA_IDS = 'uploaded_media_ids';

  static const CLASS = 'ModelUserPub';

  @override
  String get $class => CLASS;

  DateTime? _createdAt;
  String? _createdBy;
  DateTime? _deletedAt;
  String? _deletedBy;
  String? _displayName;
  String? _displayNameSearchable;
  String? _email;
  String? _id;
  Set<String>? _uploadedMediaIds;

  //
  //
  //

  ModelUserPub.empty();

  //
  //
  //

  factory ModelUserPub({
    DateTime? createdAt,
    String? createdBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? displayName,
    String? displayNameSearchable,
    String? email,
    String? id,
    Set<String>? uploadedMediaIds,
  }) {
    return ModelUserPub.b(
      createdAt: createdAt,
      createdBy: createdBy,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      displayName: displayName,
      displayNameSearchable: displayNameSearchable,
      email: email,
      id: id,
      uploadedMediaIds: uploadedMediaIds,
    );
  }

  //
  //
  //

  ModelUserPub.b({
    DateTime? createdAt,
    String? createdBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? displayName,
    String? displayNameSearchable,
    String? email,
    String? id,
    Set<String>? uploadedMediaIds,
  }) {
    this._createdAt = createdAt;
    this._createdBy = createdBy;
    this._deletedAt = deletedAt;
    this._deletedBy = deletedBy;
    this._displayName = displayName;
    this._displayNameSearchable = displayNameSearchable;
    this._email = email;
    this._id = id;
    this._uploadedMediaIds = uploadedMediaIds;
  }

  //
  //
  //

  factory ModelUserPub.from(
    Model? other,
  ) {
    return ModelUserPub.fromJson(
      letAs<GenericModel>(other)?.data ?? other?.toJson(),
    );
  }

  //
  //
  //

  static ModelUserPub? fromOrNull(
    Model? other,
  ) {
    return other != null ? ModelUserPub.from(other) : null;
  }

  //
  //
  //

  factory ModelUserPub.of(
    ModelUserPub? other,
  ) {
    return ModelUserPub.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelUserPub.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelUserPub.fromJson(decoded);
      } else {
        return ModelUserPub.empty();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelUserPub.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelUserPub.empty()
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$displayName = otherData?[K_DISPLAY_NAME]
        ..$displayNameSearchable = otherData?[K_DISPLAY_NAME_SEARCHABLE]
        ..$email = otherData?[K_EMAIL]
        ..$id = otherData?[K_ID]
        ..$uploadedMediaIds = otherData?[K_UPLOADED_MEDIA_IDS];
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelUserPub.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelUserPub.fromJson(uri.queryParameters);
      } else {
        return ModelUserPub.b();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
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
        K_CREATED_AT: this.$createdAt,
        K_CREATED_BY: this.$createdBy,
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
        K_DISPLAY_NAME: this.$displayName,
        K_DISPLAY_NAME_SEARCHABLE: this.$displayNameSearchable,
        K_EMAIL: this.$email,
        K_ID: this.$id,
        K_UPLOADED_MEDIA_IDS: this.$uploadedMediaIds,
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
    return ModelUserPub.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelUserPub.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelUserPub.fromJson(otherData);
      if (other._createdAt != null) {
        this.createdAt = other._createdAt!;
      }
      if (other._createdBy != null) {
        this.createdBy = other._createdBy!;
      }
      if (other._deletedAt != null) {
        this.deletedAt = other._deletedAt!;
      }
      if (other._deletedBy != null) {
        this.deletedBy = other._deletedBy!;
      }
      if (other._displayName != null) {
        this.displayName = other._displayName!;
      }
      if (other._displayNameSearchable != null) {
        this.displayNameSearchable = other._displayNameSearchable!;
      }
      if (other._email != null) {
        this.email = other._email!;
      }
      if (other._id != null) {
        this.id = other._id!;
      }
      if (other._uploadedMediaIds != null) {
        this.uploadedMediaIds = other._uploadedMediaIds!;
      }
    }
  }

  //
  //
  //

  // createdAt.
  DateTime? get createdAt => this._createdAt;
  set createdAt(DateTime? v) => this._createdAt = v;
  dynamic get $createdAt => this._createdAt?.toUtc()?.toIso8601String();
  set $createdAt(v) => this._createdAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();

  // createdBy.
  String? get createdBy => this._createdBy;
  set createdBy(String? v) => this._createdBy = v;
  dynamic get $createdBy => this._createdBy?.toString().trim().nullIfEmpty;
  set $createdBy(v) => this._createdBy = v?.toString().trim().nullIfEmpty;

  // deletedAt.
  DateTime? get deletedAt => this._deletedAt;
  set deletedAt(DateTime? v) => this._deletedAt = v;
  dynamic get $deletedAt => this._deletedAt?.toUtc()?.toIso8601String();
  set $deletedAt(v) => this._deletedAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();

  // deletedBy.
  String? get deletedBy => this._deletedBy;
  set deletedBy(String? v) => this._deletedBy = v;
  dynamic get $deletedBy => this._deletedBy?.toString().trim().nullIfEmpty;
  set $deletedBy(v) => this._deletedBy = v?.toString().trim().nullIfEmpty;

  // displayName.
  String? get displayName => this._displayName;
  set displayName(String? v) => this._displayName = v;
  dynamic get $displayName => this._displayName?.toString().trim().nullIfEmpty;
  set $displayName(v) => this._displayName = v?.toString().trim().nullIfEmpty;

  // displayNameSearchable.
  String? get displayNameSearchable => this._displayNameSearchable;
  set displayNameSearchable(String? v) => this._displayNameSearchable = v;
  dynamic get $displayNameSearchable => this
      ._displayNameSearchable
      ?.toString()
      .trim()
      .nullIfEmpty
      ?.toLowerCase()
      .replaceAll(r'[^\w]', '');
  set $displayNameSearchable(v) => this._displayNameSearchable =
      v?.toString().trim().nullIfEmpty?.toLowerCase().replaceAll(r'[^\w]', '');

  // email.
  String? get email => this._email;
  set email(String? v) => this._email = v;
  dynamic get $email =>
      this._email?.toString().trim().nullIfEmpty?.toLowerCase();
  set $email(v) =>
      this._email = v?.toString().trim().nullIfEmpty?.toLowerCase();

  // id.
  String? get id => this._id;
  set id(String? v) => this._id = v;
  dynamic get $id => this._id?.toString().trim().nullIfEmpty;
  set $id(v) => this._id = v?.toString().trim().nullIfEmpty;

  // uploadedMediaIds.
  Set<String>? get uploadedMediaIds => this._uploadedMediaIds;
  set uploadedMediaIds(Set<String>? v) => this._uploadedMediaIds = v;
  dynamic get $uploadedMediaIds => this
      ._uploadedMediaIds
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  set $uploadedMediaIds(v) => this._uploadedMediaIds = letSet(v)
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();
}
