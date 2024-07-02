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

part of 'model_organization.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelOrganization extends _ModelOrganization {
  //
  //
  //

  static const K_REF = 'ref';
  static const K_ID = 'id';
  static const K_PID = 'pid';
  static const K_SEED = 'seed';
  static const K_CREATED_AT = 'createdAt';
  static const K_CREATED_BY = 'createdBy';
  static const K_DELETED_AT = 'deletedAt';
  static const K_DELETED_BY = 'deletedBy';

  static const CLASS = 'ModelOrganization';

  @override
  String get $class => CLASS;

  DataRefModel? ref;
  String? id;
  String? pid;
  String? seed;
  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;

  //
  //
  //

  ModelOrganization.empty();

  //
  //
  //

  factory ModelOrganization({
    required DataRefModel ref,
    String? id,
    String? pid,
    String? seed,
    DateTime? createdAt,
    String? createdBy,
    DateTime? deletedAt,
    String? deletedBy,
  }) {
    return ModelOrganization.b(
      ref: ref,
      id: id,
      pid: pid,
      seed: seed,
      createdAt: createdAt,
      createdBy: createdBy,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
    );
  }

  //
  //
  //

  ModelOrganization.b({
    this.ref,
    this.id,
    this.pid,
    this.seed,
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.deletedBy,
  }) {
    assert(this.id != null);
    assert(this.pid != null);
    assert(this.seed != null);
    assert(this.createdAt != null);
    assert(this.createdBy != null);
    assert(this.deletedAt != null);
    assert(this.deletedBy != null);
  }

  //
  //
  //

  factory ModelOrganization.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelOrganization.from: $e');
      rethrow;
    }
  }

  static ModelOrganization? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelOrganization.of(
    ModelOrganization other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelOrganization.of: $e');
      rethrow;
    }
  }

  static ModelOrganization? ofOrNull(
    ModelOrganization? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelOrganization.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelOrganization.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelOrganization? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelOrganization.fromJson(decoded);
      } else {
        return ModelOrganization.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelOrganization.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelOrganization.fromJson: $e');
      rethrow;
    }
  }

  static ModelOrganization? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelOrganization.empty()
        ..$ref = otherData?[K_REF]
        ..$id = otherData?[K_ID]
        ..$pid = otherData?[K_PID]
        ..$seed = otherData?[K_SEED]
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelOrganization.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelOrganization.fromUri: $e');
      rethrow;
    }
  }

  static ModelOrganization? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelOrganization.fromJson(uri.queryParameters);
      } else {
        return ModelOrganization.empty();
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
        K_REF: this.$ref,
        K_ID: this.$id,
        K_PID: this.$pid,
        K_SEED: this.$seed,
        K_CREATED_AT: this.$createdAt,
        K_CREATED_BY: this.$createdBy,
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelOrganization.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelOrganization.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelOrganization.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelOrganization.fromJson(otherData);
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.pid != null) {
        this.pid = other.pid!;
      }
      if (other.seed != null) {
        this.seed = other.seed!;
      }
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
    }
  }

  //
  //
  //

  // ref.
  DataRefModel get refField => this.ref!;
  set refField(DataRefModel v) => this.ref = v;
  @protected
  dynamic get $ref => this.ref?.toJson();
  @protected
  set $ref(v) => this.ref = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();

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

  // seed.
  String? get seedField => this.seed;
  set seedField(String? v) => this.seed = v;
  @protected
  dynamic get $seed => this.seed?.toString().trim().nullIfEmpty;
  @protected
  set $seed(v) => this.seed = v?.toString().trim().nullIfEmpty;

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
}