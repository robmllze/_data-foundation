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

  static const K_ID = 'id';
  static const K_REF = 'ref';
  static const K_DISPLAY_NAME = 'displayName';
  static const K_DISPLAY_NAME_SEARCHABLE = 'displayNameSearchable';
  static const K_DISPLAY_COLOR = 'displayColor';
  static const K_DESCRIPTION = 'description';
  static const K_ARCHIVED_G_REG = 'archivedGReg';
  static const K_CREATED_G_REG = 'createdGReg';
  static const K_DELETED_G_REG = 'deletedGReg';
  static const K_UPDATED_G_REG = 'updatedGReg';
  static const K_PID = 'pid';
  static const K_SEED = 'seed';

  static const CLASS = 'ModelJob';

  @override
  String get $class => CLASS;

  String? id;
  DataRefModel? ref;
  String? displayName;
  String? displayNameSearchable;
  Color? displayColor;
  String? description;
  ModelRegistration? archivedGReg;
  ModelRegistration? createdGReg;
  ModelRegistration? deletedGReg;
  ModelRegistration? updatedGReg;
  String? pid;
  String? seed;

  //
  //
  //

  ModelJob.empty();

  //
  //
  //

  factory ModelJob({
    String? id,
    DataRefModel? ref,
    String? displayName,
    String? displayNameSearchable,
    Color? displayColor,
    String? description,
    ModelRegistration? archivedGReg,
    ModelRegistration? createdGReg,
    ModelRegistration? deletedGReg,
    ModelRegistration? updatedGReg,
    String? pid,
    String? seed,
  }) {
    return ModelJob.b(
      id: id,
      ref: ref,
      displayName: displayName,
      displayNameSearchable: displayNameSearchable,
      displayColor: displayColor,
      description: description,
      archivedGReg: archivedGReg,
      createdGReg: createdGReg,
      deletedGReg: deletedGReg,
      updatedGReg: updatedGReg,
      pid: pid,
      seed: seed,
    );
  }

  //
  //
  //

  ModelJob.b({
    this.id,
    this.ref,
    this.displayName,
    this.displayNameSearchable,
    this.displayColor,
    this.description,
    this.archivedGReg,
    this.createdGReg,
    this.deletedGReg,
    this.updatedGReg,
    this.pid,
    this.seed,
  }) {}

  //
  //
  //

  factory ModelJob.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelJob.from: $e');
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
      assert(false, 'ModelJob.of: $e');
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
      assert(false, 'ModelJob.fromJsonString: $e');
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
      assert(false, 'ModelJob.fromJson: $e');
      rethrow;
    }
  }

  static ModelJob? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelJob.empty()
        ..$id = otherData?[K_ID]
        ..$ref = otherData?[K_REF]
        ..$displayName = otherData?[K_DISPLAY_NAME]
        ..$displayNameSearchable = otherData?[K_DISPLAY_NAME_SEARCHABLE]
        ..$displayColor = otherData?[K_DISPLAY_COLOR]
        ..$description = otherData?[K_DESCRIPTION]
        ..$archivedGReg = otherData?[K_ARCHIVED_G_REG]
        ..$createdGReg = otherData?[K_CREATED_G_REG]
        ..$deletedGReg = otherData?[K_DELETED_G_REG]
        ..$updatedGReg = otherData?[K_UPDATED_G_REG]
        ..$pid = otherData?[K_PID]
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
      assert(false, 'ModelJob.fromUri: $e');
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
        return ModelJob.empty();
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
        K_ID: this.$id,
        K_REF: this.$ref,
        K_DISPLAY_NAME: this.$displayName,
        K_DISPLAY_NAME_SEARCHABLE: this.$displayNameSearchable,
        K_DISPLAY_COLOR: this.$displayColor,
        K_DESCRIPTION: this.$description,
        K_ARCHIVED_G_REG: this.$archivedGReg,
        K_CREATED_G_REG: this.$createdGReg,
        K_DELETED_G_REG: this.$deletedGReg,
        K_UPDATED_G_REG: this.$updatedGReg,
        K_PID: this.$pid,
        K_SEED: this.$seed,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelJob.toJson: $e');
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
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.displayName != null) {
        this.displayName = other.displayName!;
      }
      if (other.displayNameSearchable != null) {
        this.displayNameSearchable = other.displayNameSearchable!;
      }
      if (other.displayColor != null) {
        this.displayColor = other.displayColor!;
      }
      if (other.description != null) {
        this.description = other.description!;
      }
      if (other.archivedGReg != null) {
        this.archivedGReg = other.archivedGReg!;
      }
      if (other.createdGReg != null) {
        this.createdGReg = other.createdGReg!;
      }
      if (other.deletedGReg != null) {
        this.deletedGReg = other.deletedGReg!;
      }
      if (other.updatedGReg != null) {
        this.updatedGReg = other.updatedGReg!;
      }
      if (other.pid != null) {
        this.pid = other.pid!;
      }
      if (other.seed != null) {
        this.seed = other.seed!;
      }
    }
  }

  //
  //
  //

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

  // ref.
  DataRefModel? get refField => this.ref;
  set refField(DataRefModel? v) => this.ref = v;
  @protected
  dynamic get $ref => this.ref?.toJson();
  @protected
  set $ref(v) => this.ref = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();

  // displayName.
  String? get displayNameField => this.displayName;
  set displayNameField(String? v) => this.displayName = v;
  @protected
  dynamic get $displayName => this.displayName?.toString().trim().nullIfEmpty;
  @protected
  set $displayName(v) => this.displayName = v?.toString().trim().nullIfEmpty;

  // displayNameSearchable.
  String? get displayNameSearchableField => this.displayNameSearchable;
  set displayNameSearchableField(String? v) => this.displayNameSearchable = v;
  @protected
  dynamic get $displayNameSearchable => this
      .displayNameSearchable
      ?.toString()
      .trim()
      .nullIfEmpty
      ?.toLowerCase()
      .replaceAll(r'[^\w]', '');
  @protected
  set $displayNameSearchable(v) => this.displayNameSearchable =
      v?.toString().trim().nullIfEmpty?.toLowerCase().replaceAll(r'[^\w]', '');

  // displayColor.
  Color? get displayColorField => this.displayColor;
  set displayColorField(Color? v) => this.displayColor = v;
  @protected
  dynamic get $displayColor => this.displayColor?.value;
  @protected
  set $displayColor(v) => this.displayColor = () {
        final a = letAs<int>(v);
        return a is int ? Color(a) : null;
      }();

  // description.
  String? get descriptionField => this.description;
  set descriptionField(String? v) => this.description = v;
  @protected
  dynamic get $description => this.description?.toString().trim().nullIfEmpty;
  @protected
  set $description(v) => this.description = v?.toString().trim().nullIfEmpty;

  // archivedGReg.
  ModelRegistration? get archivedGRegField => this.archivedGReg;
  set archivedGRegField(ModelRegistration? v) => this.archivedGReg = v;
  @protected
  dynamic get $archivedGReg => this.archivedGReg?.toJson();
  @protected
  set $archivedGReg(v) => this.archivedGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // createdGReg.
  ModelRegistration? get createdGRegField => this.createdGReg;
  set createdGRegField(ModelRegistration? v) => this.createdGReg = v;
  @protected
  dynamic get $createdGReg => this.createdGReg?.toJson();
  @protected
  set $createdGReg(v) => this.createdGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // deletedGReg.
  ModelRegistration? get deletedGRegField => this.deletedGReg;
  set deletedGRegField(ModelRegistration? v) => this.deletedGReg = v;
  @protected
  dynamic get $deletedGReg => this.deletedGReg?.toJson();
  @protected
  set $deletedGReg(v) => this.deletedGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // updatedGReg.
  ModelRegistration? get updatedGRegField => this.updatedGReg;
  set updatedGRegField(ModelRegistration? v) => this.updatedGReg = v;
  @protected
  dynamic get $updatedGReg => this.updatedGReg?.toJson();
  @protected
  set $updatedGReg(v) => this.updatedGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

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
}
