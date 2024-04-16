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

class ModelProjectPub extends Model {
  //
  //
  //

  static const CLASS = 'ModelProjectPub';
  static const MODEL_ID = 'model_project_pub';

  static const K_CLOSED_AT = 'closed_at';
  static const K_DESCRIPTION = 'description';
  static const K_DISPLAY_NAME = 'display_name';
  static const K_DISPLAY_NAME_SEARCHABLE = 'display_name_searchable';
  static const K_ID = 'id';
  static const K_OPENED_AT = 'opened_at';
  static const K_PROJECT_ID = 'project_id';

  DateTime? closedAt;
  String? description;
  String? displayName;
  String? displayNameSearchable;
  DateTime? openedAt;
  String? projectId;

  //
  //
  //

  ModelProjectPub({
    String? id,
    this.closedAt,
    this.description,
    this.displayName,
    this.displayNameSearchable,
    this.openedAt,
    this.projectId,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelProjectPub.unsafe({
    String? id,
    this.closedAt,
    this.description,
    this.displayName,
    this.displayNameSearchable,
    this.openedAt,
    this.projectId,
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
        closedAt: () {
          final a = otherData?[K_CLOSED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        description: otherData?[K_DESCRIPTION]?.toString().trim().nullIfEmpty,
        displayName: otherData?[K_DISPLAY_NAME]?.toString().trim().nullIfEmpty,
        displayNameSearchable: otherData?[K_DISPLAY_NAME_SEARCHABLE]
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase(),
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        openedAt: () {
          final a = otherData?[K_OPENED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        projectId: otherData?[K_PROJECT_ID]?.toString().trim().nullIfEmpty,
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
        K_CLOSED_AT: closedAt?.toUtc()?.toIso8601String(),
        K_DESCRIPTION: description?.toString().trim().nullIfEmpty,
        K_DISPLAY_NAME: displayName?.toString().trim().nullIfEmpty,
        K_DISPLAY_NAME_SEARCHABLE:
            displayNameSearchable?.toString().trim().nullIfEmpty?.toLowerCase(),
        K_ID: id?.toString().trim().nullIfEmpty,
        K_OPENED_AT: openedAt?.toUtc()?.toIso8601String(),
        K_PROJECT_ID: projectId?.toString().trim().nullIfEmpty,
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
      other.closedAt != null ? this.closedAt = other.closedAt : null;
      other.description != null ? this.description = other.description : null;
      other.displayName != null ? this.displayName = other.displayName : null;
      other.displayNameSearchable != null
          ? this.displayNameSearchable = other.displayNameSearchable
          : null;
      other.id != null ? this.id = other.id : null;
      other.openedAt != null ? this.openedAt = other.openedAt : null;
      other.projectId != null ? this.projectId = other.projectId : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
