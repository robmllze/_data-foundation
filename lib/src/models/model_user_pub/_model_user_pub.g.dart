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

  static const CLASS = 'ModelUserPub';
  static const MODEL_ID = 'model_user_pub';

  static const K_DISPLAY_NAME = 'display_name';
  static const K_DISPLAY_NAME_SEARCHABLE = 'display_name_searchable';
  static const K_EMAIL_SEARCHABLE = 'email_searchable';
  static const K_ID = 'id';
  static const K_USER_ID = 'user_id';
  static const K_WHEN_DELETED = 'when_deleted';

  String? displayName;
  String? displayNameSearchable;
  String? emailSearchable;
  String? userId;
  int? whenDeleted;

  //
  //
  //

  ModelUserPub({
    String? id,
    this.displayName,
    this.displayNameSearchable,
    this.emailSearchable,
    this.userId,
    this.whenDeleted,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelUserPub.unsafe({
    String? id,
    this.displayName,
    this.displayNameSearchable,
    this.emailSearchable,
    this.userId,
    this.whenDeleted,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelUserPub.from(
    Model? other,
  ) {
    return ModelUserPub.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
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
        return ModelUserPub.unsafe();
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
      return ModelUserPub.unsafe(
        displayName: otherData?[K_DISPLAY_NAME]?.toString().trim().nullIfEmpty,
        displayNameSearchable: otherData?[K_DISPLAY_NAME_SEARCHABLE]
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase(),
        emailSearchable: otherData?[K_EMAIL_SEARCHABLE]
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase(),
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        userId: otherData?[K_USER_ID]?.toString().trim().nullIfEmpty,
        whenDeleted: letInt(otherData?[K_WHEN_DELETED]),
      );
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
      if (uri != null && uri.path == MODEL_ID) {
        return ModelUserPub.fromJson(uri.queryParameters);
      } else {
        return ModelUserPub.unsafe();
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
        K_DISPLAY_NAME: displayName?.toString().trim().nullIfEmpty,
        K_DISPLAY_NAME_SEARCHABLE:
            displayNameSearchable?.toString().trim().nullIfEmpty?.toLowerCase(),
        K_EMAIL_SEARCHABLE:
            emailSearchable?.toString().trim().nullIfEmpty?.toLowerCase(),
        K_ID: id?.toString().trim().nullIfEmpty,
        K_USER_ID: userId?.toString().trim().nullIfEmpty,
        K_WHEN_DELETED: whenDeleted,
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
    return ModelUserPub.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelUserPub.unsafe()..updateWith(this)) as T;
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
      other.displayName != null ? this.displayName = other.displayName : null;
      other.displayNameSearchable != null
          ? this.displayNameSearchable = other.displayNameSearchable
          : null;
      other.emailSearchable != null
          ? this.emailSearchable = other.emailSearchable
          : null;
      other.id != null ? this.id = other.id : null;
      other.userId != null ? this.userId = other.userId : null;
      other.whenDeleted != null ? this.whenDeleted = other.whenDeleted : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
