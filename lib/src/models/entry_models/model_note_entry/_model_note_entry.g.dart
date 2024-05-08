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

part of 'model_note_entry.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelNoteEntry extends _ModelNoteEntry {
  //
  //
  //

  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DELETED_AT = 'deleted_at';
  static const K_DELETED_BY = 'deleted_by';
  static const K_DESCRIPTION = 'description';
  static const K_ID = 'id';
  static const K_LAST_MODIFIED_AT = 'last_modified_at';
  static const K_LAST_MODIFIED_BY = 'last_modified_by';
  static const K_NOTE = 'note';
  static const K_TITLE = 'title';
  static const K_TITLE_SEARCHABLE = 'title_searchable';

  static const CLASS = 'ModelNoteEntry';

  @override
  String get $class => CLASS;

  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;
  String? description;
  String? id;
  DateTime? lastModifiedAt;
  String? lastModifiedBy;
  String? note;
  String? title;
  String? titleSearchable;

  //
  //
  //

  ModelNoteEntry.empty();

  //
  //
  //

  factory ModelNoteEntry({
    DateTime? createdAt,
    String? createdBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? description,
    String? id,
    DateTime? lastModifiedAt,
    String? lastModifiedBy,
    String? note,
    String? title,
    String? titleSearchable,
  }) {
    return ModelNoteEntry.b(
      createdAt: createdAt,
      createdBy: createdBy,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      description: description,
      id: id,
      lastModifiedAt: lastModifiedAt,
      lastModifiedBy: lastModifiedBy,
      note: note,
      title: title,
      titleSearchable: titleSearchable,
    );
  }

  //
  //
  //

  ModelNoteEntry.b({
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.deletedBy,
    this.description,
    this.id,
    this.lastModifiedAt,
    this.lastModifiedBy,
    this.note,
    this.title,
    this.titleSearchable,
  }) {}

  //
  //
  //

  factory ModelNoteEntry.from(
    Model? other,
  ) {
    return ModelNoteEntry.fromJson(
      letAs<GenericModel>(other)?.data ?? other?.toJson(),
    );
  }

  //
  //
  //

  static ModelNoteEntry? fromOrNull(
    Model? other,
  ) {
    return other != null ? ModelNoteEntry.from(other) : null;
  }

  //
  //
  //

  factory ModelNoteEntry.of(
    ModelNoteEntry? other,
  ) {
    return ModelNoteEntry.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelNoteEntry.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelNoteEntry.fromJson(decoded);
      } else {
        return ModelNoteEntry.empty();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelNoteEntry.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelNoteEntry.empty()
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$description = otherData?[K_DESCRIPTION]
        ..$id = otherData?[K_ID]
        ..$lastModifiedAt = otherData?[K_LAST_MODIFIED_AT]
        ..$lastModifiedBy = otherData?[K_LAST_MODIFIED_BY]
        ..$note = otherData?[K_NOTE]
        ..$title = otherData?[K_TITLE]
        ..$titleSearchable = otherData?[K_TITLE_SEARCHABLE];
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelNoteEntry.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelNoteEntry.fromJson(uri.queryParameters);
      } else {
        return ModelNoteEntry.b();
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
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
        K_DESCRIPTION: this.$description,
        K_ID: this.$id,
        K_LAST_MODIFIED_AT: this.$lastModifiedAt,
        K_LAST_MODIFIED_BY: this.$lastModifiedBy,
        K_NOTE: this.$note,
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
    return ModelNoteEntry.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelNoteEntry.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelNoteEntry.fromJson(otherData);
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
      if (other.description != null) {
        this.description = other.description!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.lastModifiedAt != null) {
        this.lastModifiedAt = other.lastModifiedAt!;
      }
      if (other.lastModifiedBy != null) {
        this.lastModifiedBy = other.lastModifiedBy!;
      }
      if (other.note != null) {
        this.note = other.note!;
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

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

  // lastModifiedAt.
  DateTime? get lastModifiedAtField => this.lastModifiedAt;
  set lastModifiedAtField(DateTime? v) => this.lastModifiedAt = v;
  @protected
  dynamic get $lastModifiedAt =>
      this.lastModifiedAt?.toUtc()?.toIso8601String();
  @protected
  set $lastModifiedAt(v) => this.lastModifiedAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();

  // lastModifiedBy.
  String? get lastModifiedByField => this.lastModifiedBy;
  set lastModifiedByField(String? v) => this.lastModifiedBy = v;
  @protected
  dynamic get $lastModifiedBy =>
      this.lastModifiedBy?.toString().trim().nullIfEmpty;
  @protected
  set $lastModifiedBy(v) =>
      this.lastModifiedBy = v?.toString().trim().nullIfEmpty;

  // note.
  String? get noteField => this.note;
  set noteField(String? v) => this.note = v;
  @protected
  dynamic get $note => this.note?.toString().trim().nullIfEmpty;
  @protected
  set $note(v) => this.note = v?.toString().trim().nullIfEmpty;

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