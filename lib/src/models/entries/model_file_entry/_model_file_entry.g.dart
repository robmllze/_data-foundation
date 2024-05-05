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
  static const K_DESCRIPTION = 'description';
  static const K_DOWNLOAD_URL = 'download_url';
  static const K_EXTENSION = 'extension';
  static const K_FALSE_PATH = 'false_path';
  static const K_ID = 'id';
  static const K_NAME = 'name';
  static const K_SEARCHABLE_TITLE = 'searchable_title';
  static const K_SIZE = 'size';
  static const K_STORAGE_PATH = 'storage_path';
  static const K_TITLE = 'title';

  static const CLASS = 'ModelFileEntry';

  @override
  String get $class => CLASS;

  DateTime? createdAt;
  String? createdBy;
  String? description;
  Uri? downloadUrl;
  String? extension;
  List<String>? falsePath;
  String? id;
  String? name;
  String? searchableTitle;
  int? size;
  String? storagePath;
  String? title;

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
    String? description,
    Uri? downloadUrl,
    String? extension,
    List<String>? falsePath,
    String? id,
    String? name,
    String? searchableTitle,
    int? size,
    String? storagePath,
    String? title,
  }) {
    return ModelFileEntry.b(
      createdAt: createdAt,
      createdBy: createdBy,
      description: description,
      downloadUrl: downloadUrl,
      extension: extension,
      falsePath: falsePath,
      id: id,
      name: name,
      searchableTitle: searchableTitle,
      size: size,
      storagePath: storagePath,
      title: title,
    );
  }

  //
  //
  //

  ModelFileEntry.b({
    this.createdAt,
    this.createdBy,
    this.description,
    this.downloadUrl,
    this.extension,
    this.falsePath,
    this.id,
    this.name,
    this.searchableTitle,
    this.size,
    this.storagePath,
    this.title,
  }) {}

  //
  //
  //

  factory ModelFileEntry.from(
    Model? other,
  ) {
    return ModelFileEntry.fromJson(
      letAs<GenericModel>(other)?.data ?? other?.toJson(),
    );
  }

  //
  //
  //

  static ModelFileEntry? fromOrNull(
    Model? other,
  ) {
    return other != null ? ModelFileEntry.from(other) : null;
  }

  //
  //
  //

  factory ModelFileEntry.of(
    ModelFileEntry? other,
  ) {
    return ModelFileEntry.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelFileEntry.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelFileEntry.fromJson(decoded);
      } else {
        return ModelFileEntry.empty();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelFileEntry.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelFileEntry.empty()
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$description = otherData?[K_DESCRIPTION]
        ..$downloadUrl = otherData?[K_DOWNLOAD_URL]
        ..$extension = otherData?[K_EXTENSION]
        ..$falsePath = otherData?[K_FALSE_PATH]
        ..$id = otherData?[K_ID]
        ..$name = otherData?[K_NAME]
        ..$searchableTitle = otherData?[K_SEARCHABLE_TITLE]
        ..$size = otherData?[K_SIZE]
        ..$storagePath = otherData?[K_STORAGE_PATH]
        ..$title = otherData?[K_TITLE];
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelFileEntry.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelFileEntry.fromJson(uri.queryParameters);
      } else {
        return ModelFileEntry.b();
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
        K_CREATED_AT: this.$createdAt,
        K_CREATED_BY: this.$createdBy,
        K_DESCRIPTION: this.$description,
        K_DOWNLOAD_URL: this.$downloadUrl,
        K_EXTENSION: this.$extension,
        K_FALSE_PATH: this.$falsePath,
        K_ID: this.$id,
        K_NAME: this.$name,
        K_SEARCHABLE_TITLE: this.$searchableTitle,
        K_SIZE: this.$size,
        K_STORAGE_PATH: this.$storagePath,
        K_TITLE: this.$title,
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
      if (other.description != null) {
        this.description = other.description!;
      }
      if (other.downloadUrl != null) {
        this.downloadUrl = other.downloadUrl!;
      }
      if (other.extension != null) {
        this.extension = other.extension!;
      }
      if (other.falsePath != null) {
        this.falsePath = other.falsePath!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.name != null) {
        this.name = other.name!;
      }
      if (other.searchableTitle != null) {
        this.searchableTitle = other.searchableTitle!;
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
  dynamic get $extension => this.extension?.toString().trim().nullIfEmpty;
  @protected
  set $extension(v) => this.extension = v?.toString().trim().nullIfEmpty;

  // falsePath.
  List<String>? get falsePathField => this.falsePath;
  set falsePathField(List<String>? v) => this.falsePath = v;
  @protected
  dynamic get $falsePath => this
      .falsePath
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $falsePath(v) => this.falsePath = letList(v)
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toList()
      .cast();

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

  // name.
  String? get nameField => this.name;
  set nameField(String? v) => this.name = v;
  @protected
  dynamic get $name => this.name?.toString().trim().nullIfEmpty;
  @protected
  set $name(v) => this.name = v?.toString().trim().nullIfEmpty;

  // searchableTitle.
  String? get searchableTitleField => this.searchableTitle;
  set searchableTitleField(String? v) => this.searchableTitle = v;
  @protected
  dynamic get $searchableTitle => this
      .searchableTitle
      ?.toString()
      .trim()
      .nullIfEmpty
      ?.toLowerCase()
      .replaceAll(r'[^\w]', '');
  @protected
  set $searchableTitle(v) => this.searchableTitle =
      v?.toString().trim().nullIfEmpty?.toLowerCase().replaceAll(r'[^\w]', '');

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
}
