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

  static const K_DEF = 'def';
  static const K_DEF_TYPE = 'def_type';
  static const K_ID = 'id';
  static const K_MEMBER_IDS = 'member_ids';
  static const K_WHEN_DISABLED = 'when_disabled';
  static const K_WHEN_ENABLED = 'when_enabled';
  static const K_WHEN_NOTED = 'when_noted';

  GenericModel? def;
  RelationshipDefType? defType;
  Set<String>? memberIds;
  Map<String, DateTime>? whenDisabled;
  Map<String, DateTime>? whenEnabled;
  Map<String, DateTime>? whenNoted;

  //
  //
  //

  ModelRelationship({
    String? id,
    this.def,
    this.defType,
    this.memberIds,
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
    this.def,
    this.defType,
    this.memberIds,
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
    if (other is GenericModel) {
      return ModelRelationship.fromGenericModel(other);
    } else {
      return ModelRelationship.unsafe()..updateWith(other);
    }
  }

  //
  //
  //

  factory ModelRelationship.of(
    ModelRelationship? other,
  ) {
    return ModelRelationship.unsafe()..updateWith(other);
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
        def: () {
          final a = letMap<String, dynamic>(otherData?[K_DEF]);
          return a != null ? GenericModel.fromJson(a) : null;
        }(),
        defType: RelationshipDefType.values
            .valueOf(letAs<String>(otherData?[K_DEF_TYPE])),
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        memberIds: letSet(otherData?[K_MEMBER_IDS])
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

  factory ModelRelationship.fromGenericModel(
    GenericModel? other,
  ) {
    return ModelRelationship.fromJson(other?.data ?? {});
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
        K_DEF: def?.toJson(),
        K_DEF_TYPE: defType?.name,
        K_ID: id?.toString().trim().nullIfEmpty,
        K_MEMBER_IDS: memberIds
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
      other.def != null ? this.def = other.def : null;
      other.defType != null ? this.defType = other.defType : null;
      other.id != null ? this.id = other.id : null;
      other.memberIds != null ? this.memberIds = other.memberIds : null;
      other.whenDisabled != null
          ? this.whenDisabled = other.whenDisabled
          : null;
      other.whenEnabled != null ? this.whenEnabled = other.whenEnabled : null;
      other.whenNoted != null ? this.whenNoted = other.whenNoted : null;
    }
  }
}
