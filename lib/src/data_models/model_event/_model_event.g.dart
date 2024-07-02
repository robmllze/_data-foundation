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

  static const K_REF = 'ref';
  static const K_ID = 'id';
  static const K_TITLE = 'title';
  static const K_TITLE_SEARCHABLE = 'titleSearchable';
  static const K_DESCRIPTION = 'description';
  static const K_CREATED_AT = 'createdAt';
  static const K_CREATED_BY = 'createdBy';
  static const K_DELETED_AT = 'deletedAt';
  static const K_DELETED_BY = 'deletedBy';
  static const K_MODIFIED_AT = 'modifiedAt';
  static const K_MODIFIED_BY = 'modifiedBy';
  static const K_RELATIONSHIP_ID = 'relationshipId';
  static const K_MEMBER_PIDS = 'memberPids';
  static const K_DEF_TYPE = 'defType';
  static const K_DEF = 'def';
  static const K_TIMEOUT = 'timeout';
  static const K_WHEN_READ = 'whenRead';
  static const K_WHEN_ARCHIVED = 'whenArchived';
  static const K_WHEN_HIDDEN = 'whenHidden';
  static const K_WHEN_LIKED = 'whenLiked';
  static const K_WHEN_RECEIVED = 'whenReceived';

  static const CLASS = 'ModelEvent';

  @override
  String get $class => CLASS;

  DataRefModel? ref;
  String? id;
  String? title;
  String? titleSearchable;
  String? description;
  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;
  DateTime? modifiedAt;
  String? modifiedBy;
  String? relationshipId;
  Set<String>? memberPids;
  EventTopicType? defType;
  DataModel? def;
  int? timeout;
  Map<String, DateTime>? whenRead;
  Map<String, DateTime>? whenArchived;
  Map<String, DateTime>? whenHidden;
  Map<String, DateTime>? whenLiked;
  Map<String, DateTime>? whenReceived;

  //
  //
  //

  ModelEvent.empty();

  //
  //
  //

  factory ModelEvent({
    required DataRefModel ref,
    String? id,
    String? title,
    String? titleSearchable,
    String? description,
    DateTime? createdAt,
    String? createdBy,
    DateTime? deletedAt,
    String? deletedBy,
    DateTime? modifiedAt,
    String? modifiedBy,
    String? relationshipId,
    Set<String>? memberPids,
    EventTopicType? defType,
    DataModel? def,
    int? timeout,
    Map<String, DateTime>? whenRead,
    Map<String, DateTime>? whenArchived,
    Map<String, DateTime>? whenHidden,
    Map<String, DateTime>? whenLiked,
    Map<String, DateTime>? whenReceived,
  }) {
    return ModelEvent.b(
      ref: ref,
      id: id,
      title: title,
      titleSearchable: titleSearchable,
      description: description,
      createdAt: createdAt,
      createdBy: createdBy,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      modifiedAt: modifiedAt,
      modifiedBy: modifiedBy,
      relationshipId: relationshipId,
      memberPids: memberPids,
      defType: defType,
      def: def,
      timeout: timeout,
      whenRead: whenRead,
      whenArchived: whenArchived,
      whenHidden: whenHidden,
      whenLiked: whenLiked,
      whenReceived: whenReceived,
    );
  }

  //
  //
  //

  ModelEvent.b({
    this.ref,
    this.id,
    this.title,
    this.titleSearchable,
    this.description,
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.deletedBy,
    this.modifiedAt,
    this.modifiedBy,
    this.relationshipId,
    this.memberPids,
    this.defType,
    this.def,
    this.timeout,
    this.whenRead,
    this.whenArchived,
    this.whenHidden,
    this.whenLiked,
    this.whenReceived,
  }) {
    assert(this.ref != null);
  }

  //
  //
  //

  factory ModelEvent.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelEvent.from: $e');
      rethrow;
    }
  }

  static ModelEvent? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelEvent.of(
    ModelEvent other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelEvent.of: $e');
      rethrow;
    }
  }

  static ModelEvent? ofOrNull(
    ModelEvent? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelEvent.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelEvent.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelEvent? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelEvent.fromJson(decoded);
      } else {
        return ModelEvent.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelEvent.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelEvent.fromJson: $e');
      rethrow;
    }
  }

  static ModelEvent? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelEvent.empty()
        ..$ref = otherData?[K_REF]
        ..$id = otherData?[K_ID]
        ..$title = otherData?[K_TITLE]
        ..$titleSearchable = otherData?[K_TITLE_SEARCHABLE]
        ..$description = otherData?[K_DESCRIPTION]
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$modifiedAt = otherData?[K_MODIFIED_AT]
        ..$modifiedBy = otherData?[K_MODIFIED_BY]
        ..$relationshipId = otherData?[K_RELATIONSHIP_ID]
        ..$memberPids = otherData?[K_MEMBER_PIDS]
        ..$defType = otherData?[K_DEF_TYPE]
        ..$def = otherData?[K_DEF]
        ..$timeout = otherData?[K_TIMEOUT]
        ..$whenRead = otherData?[K_WHEN_READ]
        ..$whenArchived = otherData?[K_WHEN_ARCHIVED]
        ..$whenHidden = otherData?[K_WHEN_HIDDEN]
        ..$whenLiked = otherData?[K_WHEN_LIKED]
        ..$whenReceived = otherData?[K_WHEN_RECEIVED];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelEvent.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelEvent.fromUri: $e');
      rethrow;
    }
  }

  static ModelEvent? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelEvent.fromJson(uri.queryParameters);
      } else {
        return ModelEvent.empty();
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
        K_REF: this.$ref,
        K_ID: this.$id,
        K_TITLE: this.$title,
        K_TITLE_SEARCHABLE: this.$titleSearchable,
        K_DESCRIPTION: this.$description,
        K_CREATED_AT: this.$createdAt,
        K_CREATED_BY: this.$createdBy,
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
        K_MODIFIED_AT: this.$modifiedAt,
        K_MODIFIED_BY: this.$modifiedBy,
        K_RELATIONSHIP_ID: this.$relationshipId,
        K_MEMBER_PIDS: this.$memberPids,
        K_DEF_TYPE: this.$defType,
        K_DEF: this.$def,
        K_TIMEOUT: this.$timeout,
        K_WHEN_READ: this.$whenRead,
        K_WHEN_ARCHIVED: this.$whenArchived,
        K_WHEN_HIDDEN: this.$whenHidden,
        K_WHEN_LIKED: this.$whenLiked,
        K_WHEN_RECEIVED: this.$whenReceived,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelEvent.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelEvent.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelEvent.b()..updateWith(this)) as T;
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
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.title != null) {
        this.title = other.title!;
      }
      if (other.titleSearchable != null) {
        this.titleSearchable = other.titleSearchable!;
      }
      if (other.description != null) {
        this.description = other.description!;
      }
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
      if (other.modifiedAt != null) {
        this.modifiedAt = other.modifiedAt!;
      }
      if (other.modifiedBy != null) {
        this.modifiedBy = other.modifiedBy!;
      }
      if (other.relationshipId != null) {
        this.relationshipId = other.relationshipId!;
      }
      if (other.memberPids != null) {
        this.memberPids = other.memberPids!;
      }
      if (other.defType != null) {
        this.defType = other.defType!;
      }
      if (other.def != null) {
        this.def = other.def!;
      }
      if (other.timeout != null) {
        this.timeout = other.timeout!;
      }
      if (other.whenRead != null) {
        this.whenRead = other.whenRead!;
      }
      if (other.whenArchived != null) {
        this.whenArchived = other.whenArchived!;
      }
      if (other.whenHidden != null) {
        this.whenHidden = other.whenHidden!;
      }
      if (other.whenLiked != null) {
        this.whenLiked = other.whenLiked!;
      }
      if (other.whenReceived != null) {
        this.whenReceived = other.whenReceived!;
      }
    }
  }

  //
  //
  //

  // ref.
  DataRefModel get refField => this.ref!;
  set refField(DataRefModel v) => this.ref = v;
  @protected
  dynamic get $ref => this.ref?.toJson();
  @protected
  set $ref(v) => this.ref = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

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
  dynamic get $titleSearchable =>
      this.titleSearchable?.toString().trim().nullIfEmpty?.toLowerCase().replaceAll(r'[^\w]', '');
  @protected
  set $titleSearchable(v) => this.titleSearchable =
      v?.toString().trim().nullIfEmpty?.toLowerCase().replaceAll(r'[^\w]', '');

  // description.
  String? get descriptionField => this.description;
  set descriptionField(String? v) => this.description = v;
  @protected
  dynamic get $description => this.description?.toString().trim().nullIfEmpty;
  @protected
  set $description(v) => this.description = v?.toString().trim().nullIfEmpty;

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

  // relationshipId.
  String? get relationshipIdField => this.relationshipId;
  set relationshipIdField(String? v) => this.relationshipId = v;
  @protected
  dynamic get $relationshipId => this.relationshipId?.toString().trim().nullIfEmpty;
  @protected
  set $relationshipId(v) => this.relationshipId = v?.toString().trim().nullIfEmpty;

  // memberPids.
  Set<String>? get memberPidsField => this.memberPids;
  set memberPidsField(Set<String>? v) => this.memberPids = v;
  @protected
  dynamic get $memberPids => this
      .memberPids
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $memberPids(v) => this.memberPids = letSet(v)
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();

  // defType.
  EventTopicType? get defTypeField => this.defType;
  set defTypeField(EventTopicType? v) => this.defType = v;
  @protected
  dynamic get $defType => this.defType?.name;
  @protected
  set $defType(v) => this.defType = EventTopicType.values.valueOf(letAs<String>(v));

  // def.
  DataModel? get defField => this.def;
  set defField(DataModel? v) => this.def = v;
  @protected
  dynamic get $def => this.def?.data;
  @protected
  set $def(v) => this.def = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? DataModel(data: a) : null;
      }();

  // timeout.
  int? get timeoutField => this.timeout;
  set timeoutField(int? v) => this.timeout = v;
  @protected
  dynamic get $timeout => this.timeout;
  @protected
  set $timeout(v) => this.timeout = letInt(v);

  // whenRead.
  Map<String, DateTime>? get whenReadField => this.whenRead;
  set whenReadField(Map<String, DateTime>? v) => this.whenRead = v;
  @protected
  dynamic get $whenRead => this
      .whenRead
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toUtc()?.toIso8601String(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $whenRead(v) => this.whenRead = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          () {
            final a = p1;
            return a != null ? DateTime.tryParse(a)?.toUtc() : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

  // whenArchived.
  Map<String, DateTime>? get whenArchivedField => this.whenArchived;
  set whenArchivedField(Map<String, DateTime>? v) => this.whenArchived = v;
  @protected
  dynamic get $whenArchived => this
      .whenArchived
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toUtc()?.toIso8601String(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $whenArchived(v) => this.whenArchived = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          () {
            final a = p1;
            return a != null ? DateTime.tryParse(a)?.toUtc() : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

  // whenHidden.
  Map<String, DateTime>? get whenHiddenField => this.whenHidden;
  set whenHiddenField(Map<String, DateTime>? v) => this.whenHidden = v;
  @protected
  dynamic get $whenHidden => this
      .whenHidden
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toUtc()?.toIso8601String(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $whenHidden(v) => this.whenHidden = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          () {
            final a = p1;
            return a != null ? DateTime.tryParse(a)?.toUtc() : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

  // whenLiked.
  Map<String, DateTime>? get whenLikedField => this.whenLiked;
  set whenLikedField(Map<String, DateTime>? v) => this.whenLiked = v;
  @protected
  dynamic get $whenLiked => this
      .whenLiked
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toUtc()?.toIso8601String(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $whenLiked(v) => this.whenLiked = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          () {
            final a = p1;
            return a != null ? DateTime.tryParse(a)?.toUtc() : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

  // whenReceived.
  Map<String, DateTime>? get whenReceivedField => this.whenReceived;
  set whenReceivedField(Map<String, DateTime>? v) => this.whenReceived = v;
  @protected
  dynamic get $whenReceived => this
      .whenReceived
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toUtc()?.toIso8601String(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $whenReceived(v) => this.whenReceived = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          () {
            final a = p1;
            return a != null ? DateTime.tryParse(a)?.toUtc() : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();
}
