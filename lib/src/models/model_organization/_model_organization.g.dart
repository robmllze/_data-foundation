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

  static const CLASS = 'ModelOrganization';
  static const MODEL_ID = 'model_organization';

  static const K_CREATED_AT = 'created_at';
  static const K_CREATOR_ID = 'creator_id';
  static const K_ID = 'id';
  static const K_PID = 'pid';
  static const K_SEED = 'seed';
  static const K_UPLOADED_MEDIA = 'uploaded_media';

  DateTime? createdAt;
  String? creatorId;
  String? pid;
  String? seed;
  Map<DateTime, ModelMedia>? uploadedMedia;

  //
  //
  //

  ModelOrganization({
    String? id,
    this.createdAt,
    this.creatorId,
    this.pid,
    this.seed,
    this.uploadedMedia,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelOrganization.unsafe({
    String? id,
    this.createdAt,
    this.creatorId,
    this.pid,
    this.seed,
    this.uploadedMedia,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelOrganization.from(
    Model? other,
  ) {
    return ModelOrganization.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelOrganization.of(
    ModelOrganization? other,
  ) {
    return ModelOrganization.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelOrganization.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelOrganization.fromJson(decoded);
      } else {
        return ModelOrganization.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelOrganization.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelOrganization.unsafe(
        createdAt: () {
          final a = otherData?[K_CREATED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        creatorId: otherData?[K_CREATOR_ID]?.toString().trim().nullIfEmpty,
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        pid: otherData?[K_PID]?.toString().trim().nullIfEmpty,
        seed: otherData?[K_SEED]?.toString().trim().nullIfEmpty,
        uploadedMedia: letMap(otherData?[K_UPLOADED_MEDIA])
            ?.map(
              (final p0, final p1) => MapEntry(
                () {
                  final a = p0;
                  return a != null ? DateTime.tryParse(a)?.toUtc() : null;
                }(),
                () {
                  final a = letMap<String, dynamic>(p1);
                  return a != null ? ModelMedia.fromJson(a) : null;
                }(),
              ),
            )
            .nonNulls
            .nullIfEmpty
            ?.cast(),
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelOrganization.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelOrganization.fromJson(uri.queryParameters);
      } else {
        return ModelOrganization.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  static ModelOrganization? convert(
    Model? other,
  ) {
    return other != null ? ModelOrganization.from(other) : null;
  }

  //
  //
  //

  static ModelOrganization? fromPool({
    required Iterable<ModelOrganization>? pool,
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
        K_SEED: seed?.toString().trim().nullIfEmpty,
        K_UPLOADED_MEDIA: uploadedMedia
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toUtc()?.toIso8601String(),
                p1?.toJson(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
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
    return ModelOrganization.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelOrganization.unsafe()..updateWith(this)) as T;
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
      other.createdAt != null ? this.createdAt = other.createdAt : null;
      other.creatorId != null ? this.creatorId = other.creatorId : null;
      other.id != null ? this.id = other.id : null;
      other.pid != null ? this.pid = other.pid : null;
      other.seed != null ? this.seed = other.seed : null;
      other.uploadedMedia != null
          ? this.uploadedMedia = other.uploadedMedia
          : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
