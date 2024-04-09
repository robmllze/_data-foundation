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

part of 'model_project.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelProject extends Model {
  //
  //
  //

  static const CLASS = 'ModelProject';
  static const MODEL_ID = 'model_project';

  static const K_CREATED_AT = 'created_at';
  static const K_ID = 'id';
  static const K_PID = 'pid';

  DateTime? createdAt;
  String? pid;

  //
  //
  //

  ModelProject({
    String? id,
    this.createdAt,
    this.pid,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelProject.unsafe({
    String? id,
    this.createdAt,
    this.pid,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelProject.from(
    Model? other,
  ) {
    return ModelProject.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelProject.of(
    ModelProject? other,
  ) {
    return ModelProject.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelProject.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelProject.fromJson(decoded);
      } else {
        return ModelProject.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelProject.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelProject.unsafe(
        createdAt: () {
          final a = otherData?[K_CREATED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        pid: otherData?[K_PID]?.toString().trim().nullIfEmpty,
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelProject.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelProject.fromJson(uri.queryParameters);
      } else {
        return ModelProject.unsafe();
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
        K_CREATED_AT: createdAt?.toUtc()?.toIso8601String(),
        K_ID: id?.toString().trim().nullIfEmpty,
        K_PID: pid?.toString().trim().nullIfEmpty,
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
    return ModelProject.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelProject.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelProject.fromJson(otherData);
      other.createdAt != null ? this.createdAt = other.createdAt : null;
      other.id != null ? this.id = other.id : null;
      other.pid != null ? this.pid = other.pid : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
