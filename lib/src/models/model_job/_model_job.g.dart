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

  static const K_CHECK_INS = 'check_ins';
  static const K_CHECK_OUTS = 'check_outs';
  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DELETED_AT = 'deleted_at';
  static const K_DELETED_BY = 'deleted_by';
  static const K_ID = 'id';
  static const K_PID = 'pid';
  static const K_SEED = 'seed';
  static const K_TODO_ENTRIES = 'todo_entries';

  static const CLASS = 'ModelJob';

  @override
  String get $class => CLASS;

  Map<DateTime, String>? checkIns;
  Map<DateTime, String>? checkOuts;
  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;
  String? id;
  String? pid;
  String? seed;
  Map<DateTime, ModelTodoEntry>? todoEntries;

  //
  //
  //

  ModelJob.empty();

  //
  //
  //

  factory ModelJob({
    Map<DateTime, String>? checkIns,
    Map<DateTime, String>? checkOuts,
    DateTime? createdAt,
    String? createdBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? id,
    String? pid,
    String? seed,
    required Map<DateTime, ModelTodoEntry> todoEntries,
  }) {
    return ModelJob.b(
      checkIns: checkIns,
      checkOuts: checkOuts,
      createdAt: createdAt,
      createdBy: createdBy,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      id: id,
      pid: pid,
      seed: seed,
      todoEntries: todoEntries,
    );
  }

  //
  //
  //

  ModelJob.b({
    this.checkIns,
    this.checkOuts,
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.deletedBy,
    this.id,
    this.pid,
    this.seed,
    this.todoEntries,
  }) {
    assert(todoEntries != null);
  }

  //
  //
  //

  factory ModelJob.from(
    Model? other,
  ) {
    return ModelJob.fromJson(
      letAs<GenericModel>(other)?.data ?? other?.toJson(),
    );
  }

  //
  //
  //

  static ModelJob? fromOrNull(
    Model? other,
  ) {
    return other != null ? ModelJob.from(other) : null;
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
        return ModelJob.empty();
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
      return ModelJob.empty()
        ..$checkIns = otherData?[K_CHECK_INS]
        ..$checkOuts = otherData?[K_CHECK_OUTS]
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$id = otherData?[K_ID]
        ..$pid = otherData?[K_PID]
        ..$seed = otherData?[K_SEED]
        ..$todoEntries = otherData?[K_TODO_ENTRIES];
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
      if (uri != null && uri.path == CLASS) {
        return ModelJob.fromJson(uri.queryParameters);
      } else {
        return ModelJob.b();
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
        K_CHECK_INS: this.$checkIns,
        K_CHECK_OUTS: this.$checkOuts,
        K_CREATED_AT: this.$createdAt,
        K_CREATED_BY: this.$createdBy,
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
        K_ID: this.$id,
        K_PID: this.$pid,
        K_SEED: this.$seed,
        K_TODO_ENTRIES: this.$todoEntries,
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
      if (other.checkIns != null) {
        this.checkIns = other.checkIns!;
      }
      if (other.checkOuts != null) {
        this.checkOuts = other.checkOuts!;
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
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.pid != null) {
        this.pid = other.pid!;
      }
      if (other.seed != null) {
        this.seed = other.seed!;
      }
      if (other.todoEntries != null) {
        this.todoEntries = other.todoEntries!;
      }
    }
  }

  //
  //
  //

  // checkIns.
  Map<DateTime, String>? get checkInsField => this.checkIns;
  set checkInsField(Map<DateTime, String>? v) => this.checkIns = v;
  @protected
  dynamic get $checkIns => this
      .checkIns
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toUtc()?.toIso8601String(),
          p1?.toString().trim().nullIfEmpty,
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $checkIns(v) => this.checkIns = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          () {
            final a = p0;
            return a != null ? DateTime.tryParse(a)?.toUtc() : null;
          }(),
          p1?.toString().trim().nullIfEmpty,
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

  // checkOuts.
  Map<DateTime, String>? get checkOutsField => this.checkOuts;
  set checkOutsField(Map<DateTime, String>? v) => this.checkOuts = v;
  @protected
  dynamic get $checkOuts => this
      .checkOuts
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toUtc()?.toIso8601String(),
          p1?.toString().trim().nullIfEmpty,
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $checkOuts(v) => this.checkOuts = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          () {
            final a = p0;
            return a != null ? DateTime.tryParse(a)?.toUtc() : null;
          }(),
          p1?.toString().trim().nullIfEmpty,
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

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

  // seed.
  String? get seedField => this.seed;
  set seedField(String? v) => this.seed = v;
  @protected
  dynamic get $seed => this.seed?.toString().trim().nullIfEmpty;
  @protected
  set $seed(v) => this.seed = v?.toString().trim().nullIfEmpty;

  // todoEntries.
  Map<DateTime, ModelTodoEntry> get todoEntriesField => this.todoEntries!;
  set todoEntriesField(Map<DateTime, ModelTodoEntry> v) => this.todoEntries = v;
  @protected
  dynamic get $todoEntries => (this
      .todoEntries
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toUtc()?.toIso8601String(),
          p1?.toJson(),
        ),
      )
      .nonNulls
      .nullIfEmpty)!;
  @protected
  set $todoEntries(v) => this.todoEntries = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          () {
            final a = p0;
            return a != null ? DateTime.tryParse(a)?.toUtc() : null;
          }(),
          () {
            final a = letMap<String, dynamic>(p1);
            return a != null ? ModelTodoEntry.fromJson(a) : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();
}
