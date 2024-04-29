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

part of 'model_organization_pub.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelOrganizationPub extends _ModelOrganizationPub {
  //
  //
  //

  static const CLASS = 'ModelOrganizationPub';
  static const MODEL_ID = 'model_organization_pub';

  static const K_CLOSED_AT = 'closed_at';
  static const K_CREATED_AT = 'created_at';
  static const K_CREATOR_PID = 'creator_pid';
  static const K_DESCRIPTION = 'description';
  static const K_DISPLAY_NAME = 'display_name';
  static const K_DISPLAY_NAME_SEARCHABLE = 'display_name_searchable';
  static const K_ID = 'id';
  static const K_OPENED_AT = 'opened_at';

  DateTime? closedAt;
  DateTime? createdAt;
  String? creatorPid;
  String? description;
  String? displayName;
  String? displayNameSearchable;
  DateTime? openedAt;

  //
  //
  //

  ModelOrganizationPub({
    String? id,
    this.closedAt,
    this.createdAt,
    this.creatorPid,
    this.description,
    this.displayName,
    this.displayNameSearchable,
    this.openedAt,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelOrganizationPub.unsafe({
    String? id,
    this.closedAt,
    this.createdAt,
    this.creatorPid,
    this.description,
    this.displayName,
    this.displayNameSearchable,
    this.openedAt,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelOrganizationPub.from(
    Model? other,
  ) {
    return ModelOrganizationPub.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelOrganizationPub.of(
    ModelOrganizationPub? other,
  ) {
    return ModelOrganizationPub.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelOrganizationPub.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelOrganizationPub.fromJson(decoded);
      } else {
        return ModelOrganizationPub.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelOrganizationPub.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelOrganizationPub.unsafe(
        closedAt: () {
          final a = otherData?[K_CLOSED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        createdAt: () {
          final a = otherData?[K_CREATED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        creatorPid: otherData?[K_CREATOR_PID]?.toString().trim().nullIfEmpty,
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
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelOrganizationPub.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelOrganizationPub.fromJson(uri.queryParameters);
      } else {
        return ModelOrganizationPub.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  static ModelOrganizationPub? convert(
    Model? other,
  ) {
    return other != null ? ModelOrganizationPub.from(other) : null;
  }

  //
  //
  //

  static ModelOrganizationPub? fromPool({
    required Iterable<ModelOrganizationPub>? pool,
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
        K_CREATED_AT: createdAt?.toUtc()?.toIso8601String(),
        K_CREATOR_PID: creatorPid?.toString().trim().nullIfEmpty,
        K_DESCRIPTION: description?.toString().trim().nullIfEmpty,
        K_DISPLAY_NAME: displayName?.toString().trim().nullIfEmpty,
        K_DISPLAY_NAME_SEARCHABLE:
            displayNameSearchable?.toString().trim().nullIfEmpty?.toLowerCase(),
        K_ID: id?.toString().trim().nullIfEmpty,
        K_OPENED_AT: openedAt?.toUtc()?.toIso8601String(),
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
    return ModelOrganizationPub.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelOrganizationPub.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelOrganizationPub.fromJson(otherData);
      other.closedAt != null ? this.closedAt = other.closedAt : null;
      other.createdAt != null ? this.createdAt = other.createdAt : null;
      other.creatorPid != null ? this.creatorPid = other.creatorPid : null;
      other.description != null ? this.description = other.description : null;
      other.displayName != null ? this.displayName = other.displayName : null;
      other.displayNameSearchable != null
          ? this.displayNameSearchable = other.displayNameSearchable
          : null;
      other.id != null ? this.id = other.id : null;
      other.openedAt != null ? this.openedAt = other.openedAt : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
