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

  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DEFINITION_PATH = 'definition_path';
  static const K_DELETED_AT = 'deleted_at';
  static const K_DELETED_BY = 'deleted_by';
  static const K_DESCRIPTION = 'description';
  static const K_DOWNLOAD_URL = 'download_url';
  static const K_EXTENSION = 'extension';
  static const K_ID = 'id';
  static const K_MODIFIED_AT = 'modified_at';
  static const K_MODIFIED_BY = 'modified_by';
  static const K_NAME = 'name';
  static const K_REF = 'ref';
  static const K_SIZE = 'size';
  static const K_STORAGE_PATH = 'storage_path';
  static const K_TITLE = 'title';
  static const K_TITLE_SEARCHABLE = 'title_searchable';

  static const CLASS = 'ModelFileEntry';

  @override
  String get $class => CLASS;

  DateTime? createdAt;
  String? createdBy;
  List<String>? definitionPath;
  DateTime? deletedAt;
  String? deletedBy;
  String? description;
  Uri? downloadUrl;
  String? extension;
  String? id;
  DateTime? modifiedAt;
  String? modifiedBy;
  String? name;
  DataRefModel? ref;
  int? size;
  String? storagePath;
  String? title;
  String? titleSearchable;

  //
  //
  //

  ModelFileEntry.empty();

  //
  //
  //

  factory ModelFileEntry({
    DateTime? createdAt,
    String? createdBy,
    List<String>? definitionPath,
    DateTime? deletedAt,
    String? deletedBy,
    String? description,
    Uri? downloadUrl,
    String? extension,
    String? id,
    DateTime? modifiedAt,
    String? modifiedBy,
    String? name,
    required DataRefModel ref,
    int? size,
    String? storagePath,
    String? title,
    String? titleSearchable,
  }) {
    return ModelFileEntry.b(
      createdAt: createdAt,
      createdBy: createdBy,
      definitionPath: definitionPath,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      description: description,
      downloadUrl: downloadUrl,
      extension: extension,
      id: id,
      modifiedAt: modifiedAt,
      modifiedBy: modifiedBy,
      name: name,
      ref: ref,
      size: size,
      storagePath: storagePath,
      title: title,
      titleSearchable: titleSearchable,
    );
  }

  //
  //
  //

  ModelFileEntry.b({
    this.createdAt,
    this.createdBy,
    this.definitionPath,
    this.deletedAt,
    this.deletedBy,
    this.description,
    this.downloadUrl,
    this.extension,
    this.id,
    this.modifiedAt,
    this.modifiedBy,
    this.name,
    this.ref,
    this.size,
    this.storagePath,
    this.title,
    this.titleSearchable,
  }) {
    assert(ref != null);
  }

  //
  //
  //

  factory ModelFileEntry.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelFileEntry? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(
      letAs<DataModel>(other)?.data ?? other?.toJson(),
    )!;
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
      assert(false, e);
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
      assert(false, e);
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
      assert(false, e);
      rethrow;
    }
  }

  static ModelFileEntry? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelFileEntry.empty()
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$definitionPath = otherData?[K_DEFINITION_PATH]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$description = otherData?[K_DESCRIPTION]
        ..$downloadUrl = otherData?[K_DOWNLOAD_URL]
        ..$extension = otherData?[K_EXTENSION]
        ..$id = otherData?[K_ID]
        ..$modifiedAt = otherData?[K_MODIFIED_AT]
        ..$modifiedBy = otherData?[K_MODIFIED_BY]
        ..$name = otherData?[K_NAME]
        ..$ref = otherData?[K_REF]
        ..$size = otherData?[K_SIZE]
        ..$storagePath = otherData?[K_STORAGE_PATH]
        ..$title = otherData?[K_TITLE]
        ..$titleSearchable = otherData?[K_TITLE_SEARCHABLE];
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
      assert(false, e);
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
        return ModelFileEntry.b();
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
        K_DEFINITION_PATH: this.$definitionPath,
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
        K_DESCRIPTION: this.$description,
        K_DOWNLOAD_URL: this.$downloadUrl,
        K_EXTENSION: this.$extension,
        K_ID: this.$id,
        K_MODIFIED_AT: this.$modifiedAt,
        K_MODIFIED_BY: this.$modifiedBy,
        K_NAME: this.$name,
        K_REF: this.$ref,
        K_SIZE: this.$size,
        K_STORAGE_PATH: this.$storagePath,
        K_TITLE: this.$title,
        K_TITLE_SEARCHABLE: this.$titleSearchable,
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
      if (other.createdAt != null) {
        this.createdAt = other.createdAt!;
      }
      if (other.createdBy != null) {
        this.createdBy = other.createdBy!;
      }
      if (other.definitionPath != null) {
        this.definitionPath = other.definitionPath!;
      }
      if (other.deletedAt != null) {
        this.deletedAt = other.deletedAt!;
      }
      if (other.deletedBy != null) {
        this.deletedBy = other.deletedBy!;
      }
      if (other.description != null) {
        this.description = other.description!;
      }
      if (other.downloadUrl != null) {
        this.downloadUrl = other.downloadUrl!;
      }
      if (other.extension != null) {
        this.extension = other.extension!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.modifiedAt != null) {
        this.modifiedAt = other.modifiedAt!;
      }
      if (other.modifiedBy != null) {
        this.modifiedBy = other.modifiedBy!;
      }
      if (other.name != null) {
        this.name = other.name!;
      }
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.size != null) {
        this.size = other.size!;
      }
      if (other.storagePath != null) {
        this.storagePath = other.storagePath!;
      }
      if (other.title != null) {
        this.title = other.title!;
      }
      if (other.titleSearchable != null) {
        this.titleSearchable = other.titleSearchable!;
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

  // description.
  String? get descriptionField => this.description;
  set descriptionField(String? v) => this.description = v;
  @protected
  dynamic get $description => this.description?.toString().trim().nullIfEmpty;
  @protected
  set $description(v) => this.description = v?.toString().trim().nullIfEmpty;

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

  // extension.
  String? get extensionField => this.extension;
  set extensionField(String? v) => this.extension = v;
  @protected
  dynamic get $extension =>
      this.extension?.toString().trim().nullIfEmpty?.toLowerCase();
  @protected
  set $extension(v) =>
      this.extension = v?.toString().trim().nullIfEmpty?.toLowerCase();

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

  // modifiedAt.
  DateTime? get modifiedAtField => this.modifiedAt;
  set modifiedAtField(DateTime? v) => this.modifiedAt = v;
  @protected
  dynamic get $modifiedAt => this.modifiedAt?.toUtc()?.toIso8601String();
  @protected
  set $modifiedAt(v) => this.modifiedAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();

  // modifiedBy.
  String? get modifiedByField => this.modifiedBy;
  set modifiedByField(String? v) => this.modifiedBy = v;
  @protected
  dynamic get $modifiedBy => this.modifiedBy?.toString().trim().nullIfEmpty;
  @protected
  set $modifiedBy(v) => this.modifiedBy = v?.toString().trim().nullIfEmpty;

  // name.
  String? get nameField => this.name;
  set nameField(String? v) => this.name = v;
  @protected
  dynamic get $name => this.name?.toString().trim().nullIfEmpty;
  @protected
  set $name(v) => this.name = v?.toString().trim().nullIfEmpty;

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

  // size.
  int? get sizeField => this.size;
  set sizeField(int? v) => this.size = v;
  @protected
  dynamic get $size => this.size;
  @protected
  set $size(v) => this.size = letInt(v);

  // storagePath.
  String? get storagePathField => this.storagePath;
  set storagePathField(String? v) => this.storagePath = v;
  @protected
  dynamic get $storagePath => this.storagePath?.toString().trim().nullIfEmpty;
  @protected
  set $storagePath(v) => this.storagePath = v?.toString().trim().nullIfEmpty;

  // title.
  String? get titleField => this.title;
  set titleField(String? v) => this.title = v;
  @protected
  dynamic get $title => this.title?.toString().trim().nullIfEmpty;
  @protected
  set $title(v) => this.title = v?.toString().trim().nullIfEmpty;

  // titleSearchable.
  String? get titleSearchableField => this.titleSearchable;
  set titleSearchableField(String? v) => this.titleSearchable = v;
  @protected
  dynamic get $titleSearchable => this
      .titleSearchable
      ?.toString()
      .trim()
      .nullIfEmpty
      ?.toLowerCase()
      .replaceAll(r'[^\w]', '');
  @protected
  set $titleSearchable(v) => this.titleSearchable =
      v?.toString().trim().nullIfEmpty?.toLowerCase().replaceAll(r'[^\w]', '');
}
