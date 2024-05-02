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

part of 'model_media_entry.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelMediaEntry extends _ModelMediaEntry {
  //
  //
  //

  static const CLASS = 'ModelMediaEntry';
  static const MODEL_ID = 'model_media_entry';

  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DESCRIPTION = 'description';
  static const K_FILE_NAME = 'file_name';
  static const K_ID = 'id';
  static const K_MIME_TYPE = 'mime_type';
  static const K_TITLE = 'title';
  static const K_TITLE_SEARCHABLE = 'title_searchable';
  static const K_URL = 'url';

  DateTime? createdAt;
  String? createdBy;
  String? description;
  String? fileName;
  String? mimeType;
  String? title;
  String? titleSearchable;
  Uri? url;

  //
  //
  //

  ModelMediaEntry({
    String? id,
    this.createdAt,
    this.createdBy,
    this.description,
    this.fileName,
    this.mimeType,
    this.title,
    this.titleSearchable,
    this.url,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelMediaEntry.unsafe({
    String? id,
    this.createdAt,
    this.createdBy,
    this.description,
    this.fileName,
    this.mimeType,
    this.title,
    this.titleSearchable,
    this.url,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelMediaEntry.from(
    Model? other,
  ) {
    return ModelMediaEntry.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelMediaEntry.of(
    ModelMediaEntry? other,
  ) {
    return ModelMediaEntry.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelMediaEntry.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelMediaEntry.fromJson(decoded);
      } else {
        return ModelMediaEntry.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelMediaEntry.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelMediaEntry.unsafe(
        createdAt: () {
          final a = otherData?[K_CREATED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        createdBy: otherData?[K_CREATED_BY]?.toString().trim().nullIfEmpty,
        description: otherData?[K_DESCRIPTION]?.toString().trim().nullIfEmpty,
        fileName: otherData?[K_FILE_NAME]?.toString().trim().nullIfEmpty,
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        mimeType: otherData?[K_MIME_TYPE]?.toString().trim().nullIfEmpty,
        title: otherData?[K_TITLE]?.toString().trim().nullIfEmpty,
        titleSearchable: otherData?[K_TITLE_SEARCHABLE]
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase()
            .replaceAll(r'[^\w]', ' '),
        url: () {
          final a = otherData?[K_URL];
          return a is String ? a.trim().nullIfEmpty?.toUriOrNull() : null;
        }(),
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelMediaEntry.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelMediaEntry.fromJson(uri.queryParameters);
      } else {
        return ModelMediaEntry.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  static ModelMediaEntry? convert(
    Model? other,
  ) {
    return other != null ? ModelMediaEntry.from(other) : null;
  }

  //
  //
  //

  static ModelMediaEntry? fromPool({
    required Iterable<ModelMediaEntry>? pool,
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
        K_CREATED_BY: createdBy?.toString().trim().nullIfEmpty,
        K_DESCRIPTION: description?.toString().trim().nullIfEmpty,
        K_FILE_NAME: fileName?.toString().trim().nullIfEmpty,
        K_ID: id?.toString().trim().nullIfEmpty,
        K_MIME_TYPE: mimeType?.toString().trim().nullIfEmpty,
        K_TITLE: title?.toString().trim().nullIfEmpty,
        K_TITLE_SEARCHABLE: titleSearchable
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase()
            .replaceAll(r'[^\w]', ' '),
        K_URL: url?.toString(),
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
    return ModelMediaEntry.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelMediaEntry.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelMediaEntry.fromJson(otherData);
      other.createdAt != null ? this.createdAt = other.createdAt : null;
      other.createdBy != null ? this.createdBy = other.createdBy : null;
      other.description != null ? this.description = other.description : null;
      other.fileName != null ? this.fileName = other.fileName : null;
      other.id != null ? this.id = other.id : null;
      other.mimeType != null ? this.mimeType = other.mimeType : null;
      other.title != null ? this.title = other.title : null;
      other.titleSearchable != null
          ? this.titleSearchable = other.titleSearchable
          : null;
      other.url != null ? this.url = other.url : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
