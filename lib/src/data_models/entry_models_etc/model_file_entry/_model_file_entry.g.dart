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

part of 'model_file_entry.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelFileEntry extends _ModelFileEntry {
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
  static const K_NAME = 'name';
  static const K_DOWNLOAD_URL = 'downloadUrl';
  static const K_STORAGE_PATH = 'storagePath';
  static const K_DEFINITION_PATH = 'definitionPath';
  static const K_SIZE = 'size';
  static const K_EXTENSION = 'extension';

  static const CLASS = 'ModelFileEntry';

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
  String? name;
  Uri? downloadUrl;
  String? storagePath;
  List<String>? definitionPath;
  int? size;
  String? extension;

  //
  //
  //

  ModelFileEntry.empty();

  //
  //
  //

  factory ModelFileEntry({
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
    String? name,
    Uri? downloadUrl,
    String? storagePath,
    List<String>? definitionPath,
    int? size,
    String? extension,
  }) {
    return ModelFileEntry.b(
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
      name: name,
      downloadUrl: downloadUrl,
      storagePath: storagePath,
      definitionPath: definitionPath,
      size: size,
      extension: extension,
    );
  }

  //
  //
  //

  ModelFileEntry.b({
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
    this.name,
    this.downloadUrl,
    this.storagePath,
    this.definitionPath,
    this.size,
    this.extension,
  }) {}

  //
  //
  //

  factory ModelFileEntry.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelFileEntry.from: $e');
      rethrow;
    }
  }

  static ModelFileEntry? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelFileEntry.of(
    ModelFileEntry other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelFileEntry.of: $e');
      rethrow;
    }
  }

  static ModelFileEntry? ofOrNull(
    ModelFileEntry? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelFileEntry.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelFileEntry.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelFileEntry? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelFileEntry.fromJson(decoded);
      } else {
        return ModelFileEntry.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelFileEntry.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelFileEntry.fromJson: $e');
      rethrow;
    }
  }

  static ModelFileEntry? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelFileEntry.empty()
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
        ..$name = otherData?[K_NAME]
        ..$downloadUrl = otherData?[K_DOWNLOAD_URL]
        ..$storagePath = otherData?[K_STORAGE_PATH]
        ..$definitionPath = otherData?[K_DEFINITION_PATH]
        ..$size = otherData?[K_SIZE]
        ..$extension = otherData?[K_EXTENSION];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelFileEntry.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelFileEntry.fromUri: $e');
      rethrow;
    }
  }

  static ModelFileEntry? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelFileEntry.fromJson(uri.queryParameters);
      } else {
        return ModelFileEntry.empty();
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
        K_NAME: this.$name,
        K_DOWNLOAD_URL: this.$downloadUrl,
        K_STORAGE_PATH: this.$storagePath,
        K_DEFINITION_PATH: this.$definitionPath,
        K_SIZE: this.$size,
        K_EXTENSION: this.$extension,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelFileEntry.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelFileEntry.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelFileEntry.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelFileEntry.fromJson(otherData);
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
      if (other.name != null) {
        this.name = other.name!;
      }
      if (other.downloadUrl != null) {
        this.downloadUrl = other.downloadUrl!;
      }
      if (other.storagePath != null) {
        this.storagePath = other.storagePath!;
      }
      if (other.definitionPath != null) {
        this.definitionPath = other.definitionPath!;
      }
      if (other.size != null) {
        this.size = other.size!;
      }
      if (other.extension != null) {
        this.extension = other.extension!;
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

  // name.
  String? get nameField => this.name;
  set nameField(String? v) => this.name = v;
  @protected
  dynamic get $name => this.name?.toString().trim().nullIfEmpty;
  @protected
  set $name(v) => this.name = v?.toString().trim().nullIfEmpty;

  // downloadUrl.
  Uri? get downloadUrlField => this.downloadUrl;
  set downloadUrlField(Uri? v) => this.downloadUrl = v;
  @protected
  dynamic get $downloadUrl => this.downloadUrl?.toString();
  @protected
  set $downloadUrl(v) => this.downloadUrl = () {
        final a = v;
        return a is String ? a.trim().nullIfEmpty?.toUriOrNull() : null;
      }();

  // storagePath.
  String? get storagePathField => this.storagePath;
  set storagePathField(String? v) => this.storagePath = v;
  @protected
  dynamic get $storagePath => this.storagePath?.toString().trim().nullIfEmpty;
  @protected
  set $storagePath(v) => this.storagePath = v?.toString().trim().nullIfEmpty;

  // definitionPath.
  List<String>? get definitionPathField => this.definitionPath;
  set definitionPathField(List<String>? v) => this.definitionPath = v;
  @protected
  dynamic get $definitionPath => this
      .definitionPath
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $definitionPath(v) => this.definitionPath = letList(v)
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toList()
      .cast();

  // size.
  int? get sizeField => this.size;
  set sizeField(int? v) => this.size = v;
  @protected
  dynamic get $size => this.size;
  @protected
  set $size(v) => this.size = letInt(v);

  // extension.
  String? get extensionField => this.extension;
  set extensionField(String? v) => this.extension = v;
  @protected
  dynamic get $extension =>
      this.extension?.toString().trim().nullIfEmpty?.toLowerCase();
  @protected
  set $extension(v) =>
      this.extension = v?.toString().trim().nullIfEmpty?.toLowerCase();
}
