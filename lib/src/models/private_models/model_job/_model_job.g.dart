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

  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DELETED_AT = 'deleted_at';
  static const K_DELETED_BY = 'deleted_by';
  static const K_ID = 'id';
  static const K_PID = 'pid';
  static const K_REF = 'ref';
  static const K_SEED = 'seed';

  static const CLASS = 'ModelJob';

  @override
  String get $class => CLASS;

  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;
  String? id;
  String? pid;
  DataRefModel? ref;
  String? seed;

  //
  //
  //

  ModelJob.empty();

  //
  //
  //

  factory ModelJob({
    DateTime? createdAt,
    String? createdBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? id,
    String? pid,
    required DataRefModel ref,
    String? seed,
  }) {
    return ModelJob.b(
      createdAt: createdAt,
      createdBy: createdBy,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      id: id,
      pid: pid,
      ref: ref,
      seed: seed,
    );
  }

  //
  //
  //

  ModelJob.b({
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.deletedBy,
    this.id,
    this.pid,
    this.ref,
    this.seed,
  }) {
    assert(ref != null);
  }

  //
  //
  //

  factory ModelJob.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelJob? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelJob.of(
    ModelJob other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelJob? ofOrNull(
    ModelJob? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelJob.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelJob? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelJob.fromJson(decoded);
      } else {
        return ModelJob.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelJob.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelJob? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelJob.empty()
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$id = otherData?[K_ID]
        ..$pid = otherData?[K_PID]
        ..$ref = otherData?[K_REF]
        ..$seed = otherData?[K_SEED];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelJob.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelJob? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelJob.fromJson(uri.queryParameters);
      } else {
        return ModelJob.b();
      }
    } catch (_) {
      return null;
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
        K_ID: this.$id,
        K_PID: this.$pid,
        K_REF: this.$ref,
        K_SEED: this.$seed,
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
    return ModelJob.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelJob.b()..updateWith(this)) as T;
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
      if (other.createdAt != null) {
        this.createdAt = other.createdAt!;
      }
      if (other.createdBy != null) {
        this.createdBy = other.createdBy!;
      }
      if (other.deletedAt != null) {
        this.deletedAt = other.deletedAt!;
      }
      if (other.deletedBy != null) {
        this.deletedBy = other.deletedBy!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.pid != null) {
        this.pid = other.pid!;
      }
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.seed != null) {
        this.seed = other.seed!;
      }
    }
  }

  //
  //
  //

  // createdAt.
  DateTime? get createdAtField => this.createdAt;
  set createdAtField(DateTime? v) => this.createdAt = v;
  @protected
  dynamic get $createdAt => this.createdAt?.toUtc()?.toIso8601String();
  @protected
  set $createdAt(v) => this.createdAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();

  // createdBy.
  String? get createdByField => this.createdBy;
  set createdByField(String? v) => this.createdBy = v;
  @protected
  dynamic get $createdBy => this.createdBy?.toString().trim().nullIfEmpty;
  @protected
  set $createdBy(v) => this.createdBy = v?.toString().trim().nullIfEmpty;

  // deletedAt.
  DateTime? get deletedAtField => this.deletedAt;
  set deletedAtField(DateTime? v) => this.deletedAt = v;
  @protected
  dynamic get $deletedAt => this.deletedAt?.toUtc()?.toIso8601String();
  @protected
  set $deletedAt(v) => this.deletedAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();

  // deletedBy.
  String? get deletedByField => this.deletedBy;
  set deletedByField(String? v) => this.deletedBy = v;
  @protected
  dynamic get $deletedBy => this.deletedBy?.toString().trim().nullIfEmpty;
  @protected
  set $deletedBy(v) => this.deletedBy = v?.toString().trim().nullIfEmpty;

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

  // pid.
  String? get pidField => this.pid;
  set pidField(String? v) => this.pid = v;
  @protected
  dynamic get $pid => this.pid?.toString().trim().nullIfEmpty;
  @protected
  set $pid(v) => this.pid = v?.toString().trim().nullIfEmpty;

  // ref.
  DataRefModel get refField => this.ref!;
  set refField(DataRefModel v) => this.ref = v;
  @protected
  dynamic get $ref => (this.ref?.toJson())!;
  @protected
  set $ref(v) => this.ref = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();

  // seed.
  String? get seedField => this.seed;
  set seedField(String? v) => this.seed = v;
  @protected
  dynamic get $seed => this.seed?.toString().trim().nullIfEmpty;
  @protected
  set $seed(v) => this.seed = v?.toString().trim().nullIfEmpty;
}
