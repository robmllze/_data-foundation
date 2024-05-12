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

  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DEF = 'def';
  static const K_DEF_TYPE = 'def_type';
  static const K_DELETED_AT = 'deleted_at';
  static const K_DELETED_BY = 'deleted_by';
  static const K_DESCRIPTION = 'description';
  static const K_ID = 'id';
  static const K_LAST_MODIFIED_AT = 'last_modified_at';
  static const K_LAST_MODIFIED_BY = 'last_modified_by';
  static const K_MEMBER_PIDS = 'member_pids';
  static const K_RELATIONSHIP_ID = 'relationship_id';
  static const K_TIMEOUT = 'timeout';
  static const K_TITLE = 'title';
  static const K_TITLE_SEARCHABLE = 'title_searchable';
  static const K_WHEN_ARCHIVED = 'when_archived';
  static const K_WHEN_HIDDEN = 'when_hidden';
  static const K_WHEN_LIKED = 'when_liked';
  static const K_WHEN_READ = 'when_read';
  static const K_WHEN_RECEIVED = 'when_received';

  static const CLASS = 'ModelEvent';

  @override
  String get $class => CLASS;

  DateTime? createdAt;
  String? createdBy;
  GenericModel? def;
  EventDefType? defType;
  DateTime? deletedAt;
  String? deletedBy;
  String? description;
  String? id;
  DateTime? lastModifiedAt;
  String? lastModifiedBy;
  Set<String>? memberPids;
  String? relationshipId;
  int? timeout;
  String? title;
  String? titleSearchable;
  Map<String, DateTime>? whenArchived;
  Map<String, DateTime>? whenHidden;
  Map<String, DateTime>? whenLiked;
  Map<String, DateTime>? whenRead;
  Map<String, DateTime>? whenReceived;

  //
  //
  //

  ModelEvent.empty();

  //
  //
  //

  factory ModelEvent({
    DateTime? createdAt,
    String? createdBy,
    GenericModel? def,
    EventDefType? defType,
    DateTime? deletedAt,
    String? deletedBy,
    String? description,
    String? id,
    DateTime? lastModifiedAt,
    String? lastModifiedBy,
    required Set<String> memberPids,
    String? relationshipId,
    int? timeout,
    String? title,
    String? titleSearchable,
    Map<String, DateTime>? whenArchived,
    Map<String, DateTime>? whenHidden,
    Map<String, DateTime>? whenLiked,
    Map<String, DateTime>? whenRead,
    Map<String, DateTime>? whenReceived,
  }) {
    return ModelEvent.b(
      createdAt: createdAt,
      createdBy: createdBy,
      def: def,
      defType: defType,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      description: description,
      id: id,
      lastModifiedAt: lastModifiedAt,
      lastModifiedBy: lastModifiedBy,
      memberPids: memberPids,
      relationshipId: relationshipId,
      timeout: timeout,
      title: title,
      titleSearchable: titleSearchable,
      whenArchived: whenArchived,
      whenHidden: whenHidden,
      whenLiked: whenLiked,
      whenRead: whenRead,
      whenReceived: whenReceived,
    );
  }

  //
  //
  //

  ModelEvent.b({
    this.createdAt,
    this.createdBy,
    this.def,
    this.defType,
    this.deletedAt,
    this.deletedBy,
    this.description,
    this.id,
    this.lastModifiedAt,
    this.lastModifiedBy,
    this.memberPids,
    this.relationshipId,
    this.timeout,
    this.title,
    this.titleSearchable,
    this.whenArchived,
    this.whenHidden,
    this.whenLiked,
    this.whenRead,
    this.whenReceived,
  }) {
    assert(memberPids != null);
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
      assert(false, e);
      rethrow;
    }
  }

  static ModelEvent? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(
      letAs<GenericModel>(other)?.data ?? other?.toJson(),
    )!;
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
      assert(false, e);
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
      assert(false, e);
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
      assert(false, e);
      rethrow;
    }
  }

  static ModelEvent? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelEvent.empty()
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$def = otherData?[K_DEF]
        ..$defType = otherData?[K_DEF_TYPE]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$description = otherData?[K_DESCRIPTION]
        ..$id = otherData?[K_ID]
        ..$lastModifiedAt = otherData?[K_LAST_MODIFIED_AT]
        ..$lastModifiedBy = otherData?[K_LAST_MODIFIED_BY]
        ..$memberPids = otherData?[K_MEMBER_PIDS]
        ..$relationshipId = otherData?[K_RELATIONSHIP_ID]
        ..$timeout = otherData?[K_TIMEOUT]
        ..$title = otherData?[K_TITLE]
        ..$titleSearchable = otherData?[K_TITLE_SEARCHABLE]
        ..$whenArchived = otherData?[K_WHEN_ARCHIVED]
        ..$whenHidden = otherData?[K_WHEN_HIDDEN]
        ..$whenLiked = otherData?[K_WHEN_LIKED]
        ..$whenRead = otherData?[K_WHEN_READ]
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
      assert(false, e);
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
        return ModelEvent.b();
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
        K_DEF: this.$def,
        K_DEF_TYPE: this.$defType,
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
        K_DESCRIPTION: this.$description,
        K_ID: this.$id,
        K_LAST_MODIFIED_AT: this.$lastModifiedAt,
        K_LAST_MODIFIED_BY: this.$lastModifiedBy,
        K_MEMBER_PIDS: this.$memberPids,
        K_RELATIONSHIP_ID: this.$relationshipId,
        K_TIMEOUT: this.$timeout,
        K_TITLE: this.$title,
        K_TITLE_SEARCHABLE: this.$titleSearchable,
        K_WHEN_ARCHIVED: this.$whenArchived,
        K_WHEN_HIDDEN: this.$whenHidden,
        K_WHEN_LIKED: this.$whenLiked,
        K_WHEN_READ: this.$whenRead,
        K_WHEN_RECEIVED: this.$whenReceived,
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
      if (other.createdAt != null) {
        this.createdAt = other.createdAt!;
      }
      if (other.createdBy != null) {
        this.createdBy = other.createdBy!;
      }
      if (other.def != null) {
        this.def = other.def!;
      }
      if (other.defType != null) {
        this.defType = other.defType!;
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
      if (other.memberPids != null) {
        this.memberPids = other.memberPids!;
      }
      if (other.relationshipId != null) {
        this.relationshipId = other.relationshipId!;
      }
      if (other.timeout != null) {
        this.timeout = other.timeout!;
      }
      if (other.title != null) {
        this.title = other.title!;
      }
      if (other.titleSearchable != null) {
        this.titleSearchable = other.titleSearchable!;
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
      if (other.whenRead != null) {
        this.whenRead = other.whenRead!;
      }
      if (other.whenReceived != null) {
        this.whenReceived = other.whenReceived!;
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

  // def.
  GenericModel? get defField => this.def;
  set defField(GenericModel? v) => this.def = v;
  @protected
  dynamic get $def => this.def?.toJson();
  @protected
  set $def(v) => this.def = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? GenericModel.fromJson(a) : null;
      }();

  // defType.
  EventDefType? get defTypeField => this.defType;
  set defTypeField(EventDefType? v) => this.defType = v;
  @protected
  dynamic get $defType => this.defType?.name;
  @protected
  set $defType(v) =>
      this.defType = EventDefType.values.valueOf(letAs<String>(v));

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

  // memberPids.
  Set<String> get memberPidsField => this.memberPids!;
  set memberPidsField(Set<String> v) => this.memberPids = v;
  @protected
  dynamic get $memberPids => (this
      .memberPids
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toList())!;
  @protected
  set $memberPids(v) => this.memberPids = letSet(v)
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();

  // relationshipId.
  String? get relationshipIdField => this.relationshipId;
  set relationshipIdField(String? v) => this.relationshipId = v;
  @protected
  dynamic get $relationshipId =>
      this.relationshipId?.toString().trim().nullIfEmpty;
  @protected
  set $relationshipId(v) =>
      this.relationshipId = v?.toString().trim().nullIfEmpty;

  // timeout.
  int? get timeoutField => this.timeout;
  set timeoutField(int? v) => this.timeout = v;
  @protected
  dynamic get $timeout => this.timeout;
  @protected
  set $timeout(v) => this.timeout = letInt(v);

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
