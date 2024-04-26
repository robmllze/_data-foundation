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

part of 'model_job.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelJob extends _ModelJob {
  //
  //
  //

  static const CLASS = 'ModelJob';
  static const MODEL_ID = 'model_job';

  static const K_CREATED_AT = 'created_at';
  static const K_CREATOR_ID = 'creator_id';
  static const K_ID = 'id';
  static const K_PID = 'pid';
  static const K_PID_SEED = 'pid_seed';

  DateTime? createdAt;
  String? creatorId;
  String? pid;
  String? pidSeed;

  //
  //
  //

  ModelJob({
    String? id,
    this.createdAt,
    this.creatorId,
    this.pid,
    this.pidSeed,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelJob.unsafe({
    String? id,
    this.createdAt,
    this.creatorId,
    this.pid,
    this.pidSeed,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelJob.from(
    Model? other,
  ) {
    return ModelJob.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelJob.of(
    ModelJob? other,
  ) {
    return ModelJob.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelJob.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelJob.fromJson(decoded);
      } else {
        return ModelJob.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelJob.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelJob.unsafe(
        createdAt: () {
          final a = otherData?[K_CREATED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        creatorId: otherData?[K_CREATOR_ID]?.toString().trim().nullIfEmpty,
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        pid: otherData?[K_PID]?.toString().trim().nullIfEmpty,
        pidSeed: otherData?[K_PID_SEED]?.toString().trim().nullIfEmpty,
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelJob.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelJob.fromJson(uri.queryParameters);
      } else {
        return ModelJob.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  static ModelJob? convert(
    Model? other,
  ) {
    return other != null ? ModelJob.from(other) : null;
  }

  //
  //
  //

  static ModelJob? fromPool({
    required Iterable<ModelJob>? pool,
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
        K_CREATOR_ID: creatorId?.toString().trim().nullIfEmpty,
        K_ID: id?.toString().trim().nullIfEmpty,
        K_PID: pid?.toString().trim().nullIfEmpty,
        K_PID_SEED: pidSeed?.toString().trim().nullIfEmpty,
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
    return ModelJob.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelJob.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelJob.fromJson(otherData);
      other.createdAt != null ? this.createdAt = other.createdAt : null;
      other.creatorId != null ? this.creatorId = other.creatorId : null;
      other.id != null ? this.id = other.id : null;
      other.pid != null ? this.pid = other.pid : null;
      other.pidSeed != null ? this.pidSeed = other.pidSeed : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
