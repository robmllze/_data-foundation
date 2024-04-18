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

part of 'model_relationship.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelRelationship extends _ModelRelationship {
  //
  //
  //

  static const CLASS = 'ModelRelationship';
  static const MODEL_ID = 'model_relationship';

  static const K_CREATED_AT = 'created_at';
  static const K_DEF = 'def';
  static const K_DEF_TYPE = 'def_type';
  static const K_ID = 'id';
  static const K_MEMBER_PIDS = 'member_pids';
  static const K_WHEN_DISABLED = 'when_disabled';
  static const K_WHEN_ENABLED = 'when_enabled';
  static const K_WHEN_NOTED = 'when_noted';

  DateTime? createdAt;
  GenericModel? def;
  RelationshipDefType? defType;
  Set<String>? memberPids;
  Map<String, DateTime>? whenDisabled;
  Map<String, DateTime>? whenEnabled;
  Map<String, DateTime>? whenNoted;

  //
  //
  //

  ModelRelationship({
    String? id,
    this.createdAt,
    this.def,
    this.defType,
    this.memberPids,
    this.whenDisabled,
    this.whenEnabled,
    this.whenNoted,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelRelationship.unsafe({
    String? id,
    this.createdAt,
    this.def,
    this.defType,
    this.memberPids,
    this.whenDisabled,
    this.whenEnabled,
    this.whenNoted,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelRelationship.from(
    Model? other,
  ) {
    return ModelRelationship.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelRelationship.of(
    ModelRelationship? other,
  ) {
    return ModelRelationship.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelRelationship.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelRelationship.fromJson(decoded);
      } else {
        return ModelRelationship.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelRelationship.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelRelationship.unsafe(
        createdAt: () {
          final a = otherData?[K_CREATED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        def: () {
          final a = letMap<String, dynamic>(otherData?[K_DEF]);
          return a != null ? GenericModel.fromJson(a) : null;
        }(),
        defType: RelationshipDefType.values
            .valueOf(letAs<String>(otherData?[K_DEF_TYPE])),
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        memberPids: letSet(otherData?[K_MEMBER_PIDS])
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
        whenDisabled: letMap(otherData?[K_WHEN_DISABLED])
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                () {
                  final a = p1;
                  return a != null ? DateTime.tryParse(a)?.toUtc() : null;
                }(),
              ),
            )
            .nonNulls
            .nullIfEmpty
            ?.cast(),
        whenEnabled: letMap(otherData?[K_WHEN_ENABLED])
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                () {
                  final a = p1;
                  return a != null ? DateTime.tryParse(a)?.toUtc() : null;
                }(),
              ),
            )
            .nonNulls
            .nullIfEmpty
            ?.cast(),
        whenNoted: letMap(otherData?[K_WHEN_NOTED])
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                () {
                  final a = p1;
                  return a != null ? DateTime.tryParse(a)?.toUtc() : null;
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

  factory ModelRelationship.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelRelationship.fromJson(uri.queryParameters);
      } else {
        return ModelRelationship.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  static ModelRelationship? fromPool({
    required Iterable<ModelRelationship>? pool,
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
        K_DEF: def?.toJson(),
        K_DEF_TYPE: defType?.name,
        K_ID: id?.toString().trim().nullIfEmpty,
        K_MEMBER_PIDS: memberPids
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
        K_WHEN_DISABLED: whenDisabled
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                p1?.toUtc()?.toIso8601String(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
        K_WHEN_ENABLED: whenEnabled
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                p1?.toUtc()?.toIso8601String(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
        K_WHEN_NOTED: whenNoted
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                p1?.toUtc()?.toIso8601String(),
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
    return ModelRelationship.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelRelationship.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelRelationship.fromJson(otherData);
      other.createdAt != null ? this.createdAt = other.createdAt : null;
      other.def != null ? this.def = other.def : null;
      other.defType != null ? this.defType = other.defType : null;
      other.id != null ? this.id = other.id : null;
      other.memberPids != null ? this.memberPids = other.memberPids : null;
      other.whenDisabled != null
          ? this.whenDisabled = other.whenDisabled
          : null;
      other.whenEnabled != null ? this.whenEnabled = other.whenEnabled : null;
      other.whenNoted != null ? this.whenNoted = other.whenNoted : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
