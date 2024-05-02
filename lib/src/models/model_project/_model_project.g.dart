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

class ModelProject extends _ModelProject {
  //
  //
  //

  static const CLASS = 'ModelProject';
  static const MODEL_ID = 'model_project';

  static const K_ID = 'id';
  static const K_PID = 'pid';
  static const K_SEED = 'seed';
  static const K_WHEN_CREATED = 'when_created';

  String? pid;
  String? seed;
  Map<String, DateTime>? whenCreated;

  //
  //
  //

  ModelProject({
    String? id,
    this.pid,
    this.seed,
    this.whenCreated,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelProject.unsafe({
    String? id,
    this.pid,
    this.seed,
    this.whenCreated,
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
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        pid: otherData?[K_PID]?.toString().trim().nullIfEmpty,
        seed: otherData?[K_SEED]?.toString().trim().nullIfEmpty,
        whenCreated: letMap(otherData?[K_WHEN_CREATED])
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

  static ModelProject? convert(
    Model? other,
  ) {
    return other != null ? ModelProject.from(other) : null;
  }

  //
  //
  //

  static ModelProject? fromPool({
    required Iterable<ModelProject>? pool,
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
        K_ID: id?.toString().trim().nullIfEmpty,
        K_PID: pid?.toString().trim().nullIfEmpty,
        K_SEED: seed?.toString().trim().nullIfEmpty,
        K_WHEN_CREATED: whenCreated
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
      other.id != null ? this.id = other.id : null;
      other.pid != null ? this.pid = other.pid : null;
      other.seed != null ? this.seed = other.seed : null;
      other.whenCreated != null ? this.whenCreated = other.whenCreated : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
