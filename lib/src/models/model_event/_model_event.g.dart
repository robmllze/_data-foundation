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

part of 'model_event.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelEvent extends _ModelEvent {
  //
  //
  //

  static const CLASS = 'ModelEvent';
  static const MODEL_ID = 'model_event';

  static const K_DEF = 'def';
  static const K_DEF_TYPE = 'def_type';
  static const K_ID = 'id';
  static const K_PUB_IDS = 'pub_ids';
  static const K_TIMEOUT = 'timeout';
  static const K_WHEN_ARCHIVED = 'when_archived';
  static const K_WHEN_HIDDEN = 'when_hidden';
  static const K_WHEN_LIKED = 'when_liked';
  static const K_WHEN_READ = 'when_read';
  static const K_WHEN_RECEIVED = 'when_received';
  static const K_WHEN_SENT = 'when_sent';

  GenericModel? def;
  EventDefType? defType;
  Set<String>? pubIds;
  int? timeout;
  Map<String, DateTime>? whenArchived;
  Map<String, DateTime>? whenHidden;
  Map<String, DateTime>? whenLiked;
  Map<String, DateTime>? whenRead;
  Map<String, DateTime>? whenReceived;
  Map<String, DateTime>? whenSent;

  //
  //
  //

  ModelEvent({
    String? id,
    this.def,
    this.defType,
    this.pubIds,
    this.timeout,
    this.whenArchived,
    this.whenHidden,
    this.whenLiked,
    this.whenRead,
    this.whenReceived,
    this.whenSent,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelEvent.unsafe({
    String? id,
    this.def,
    this.defType,
    this.pubIds,
    this.timeout,
    this.whenArchived,
    this.whenHidden,
    this.whenLiked,
    this.whenRead,
    this.whenReceived,
    this.whenSent,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelEvent.from(
    Model? other,
  ) {
    return ModelEvent.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelEvent.of(
    ModelEvent? other,
  ) {
    return ModelEvent.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelEvent.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelEvent.fromJson(decoded);
      } else {
        return ModelEvent.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelEvent.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelEvent.unsafe(
        def: () {
          final a = letMap<String, dynamic>(otherData?[K_DEF]);
          return a != null ? GenericModel.fromJson(a) : null;
        }(),
        defType:
            EventDefType.values.valueOf(letAs<String>(otherData?[K_DEF_TYPE])),
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        pubIds: letSet(otherData?[K_PUB_IDS])
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
        timeout: letInt(otherData?[K_TIMEOUT]),
        whenArchived: letMap(otherData?[K_WHEN_ARCHIVED])
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
        whenHidden: letMap(otherData?[K_WHEN_HIDDEN])
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
        whenLiked: letMap(otherData?[K_WHEN_LIKED])
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
        whenRead: letMap(otherData?[K_WHEN_READ])
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
        whenReceived: letMap(otherData?[K_WHEN_RECEIVED])
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
        whenSent: letMap(otherData?[K_WHEN_SENT])
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

  factory ModelEvent.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelEvent.fromJson(uri.queryParameters);
      } else {
        return ModelEvent.unsafe();
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
        K_DEF: def?.toJson(),
        K_DEF_TYPE: defType?.name,
        K_ID: id?.toString().trim().nullIfEmpty,
        K_PUB_IDS: pubIds
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
        K_TIMEOUT: timeout,
        K_WHEN_ARCHIVED: whenArchived
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                p1?.toUtc()?.toIso8601String(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
        K_WHEN_HIDDEN: whenHidden
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                p1?.toUtc()?.toIso8601String(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
        K_WHEN_LIKED: whenLiked
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                p1?.toUtc()?.toIso8601String(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
        K_WHEN_READ: whenRead
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                p1?.toUtc()?.toIso8601String(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
        K_WHEN_RECEIVED: whenReceived
            ?.map(
              (final p0, final p1) => MapEntry(
                p0?.toString().trim().nullIfEmpty,
                p1?.toUtc()?.toIso8601String(),
              ),
            )
            .nonNulls
            .nullIfEmpty,
        K_WHEN_SENT: whenSent
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
    return ModelEvent.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelEvent.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelEvent.fromJson(otherData);
      other.def != null ? this.def = other.def : null;
      other.defType != null ? this.defType = other.defType : null;
      other.id != null ? this.id = other.id : null;
      other.pubIds != null ? this.pubIds = other.pubIds : null;
      other.timeout != null ? this.timeout = other.timeout : null;
      other.whenArchived != null
          ? this.whenArchived = other.whenArchived
          : null;
      other.whenHidden != null ? this.whenHidden = other.whenHidden : null;
      other.whenLiked != null ? this.whenLiked = other.whenLiked : null;
      other.whenRead != null ? this.whenRead = other.whenRead : null;
      other.whenReceived != null
          ? this.whenReceived = other.whenReceived
          : null;
      other.whenSent != null ? this.whenSent = other.whenSent : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
