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
  static const K_CREATED_REG = 'createdReg';
  static const K_DELETED_REG = 'deletedReg';
  static const K_MODIFIED_REG = 'modifiedReg';
  static const K_MEMBER_PIDS = 'memberPids';
  static const K_TOPIC = 'topic';
  static const K_BODY = 'body';
  static const K_TIMEOUT = 'timeout';
  static const K_READ_REGS = 'readRegs';
  static const K_ARCHIVED_REGS = 'archivedRegs';
  static const K_HIDDEN_REGS = 'hiddenRegs';
  static const K_LIKED_REGS = 'likedRegs';
  static const K_RECEIVED_REGS = 'receivedRegs';

  static const CLASS = 'ModelEvent';

  @override
  String get $class => CLASS;

  DataRefModel? ref;
  String? id;
  String? title;
  String? titleSearchable;
  String? description;
  ModelRegistration? createdReg;
  ModelRegistration? deletedReg;
  ModelRegistration? modifiedReg;
  Set<String>? memberPids;
  TopicType? topic;
  DataModel? body;
  int? timeout;
  List<ModelRegistration>? readRegs;
  List<ModelRegistration>? archivedRegs;
  List<ModelRegistration>? hiddenRegs;
  List<ModelRegistration>? likedRegs;
  List<ModelRegistration>? receivedRegs;

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
    ModelRegistration? createdReg,
    ModelRegistration? deletedReg,
    ModelRegistration? modifiedReg,
    Set<String>? memberPids,
    TopicType? topic,
    DataModel? body,
    int? timeout,
    List<ModelRegistration>? readRegs,
    List<ModelRegistration>? archivedRegs,
    List<ModelRegistration>? hiddenRegs,
    List<ModelRegistration>? likedRegs,
    List<ModelRegistration>? receivedRegs,
  }) {
    return ModelEvent.b(
      ref: ref,
      id: id,
      title: title,
      titleSearchable: titleSearchable,
      description: description,
      createdReg: createdReg,
      deletedReg: deletedReg,
      modifiedReg: modifiedReg,
      memberPids: memberPids,
      topic: topic,
      body: body,
      timeout: timeout,
      readRegs: readRegs,
      archivedRegs: archivedRegs,
      hiddenRegs: hiddenRegs,
      likedRegs: likedRegs,
      receivedRegs: receivedRegs,
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
    this.createdReg,
    this.deletedReg,
    this.modifiedReg,
    this.memberPids,
    this.topic,
    this.body,
    this.timeout,
    this.readRegs,
    this.archivedRegs,
    this.hiddenRegs,
    this.likedRegs,
    this.receivedRegs,
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
        ..$createdReg = otherData?[K_CREATED_REG]
        ..$deletedReg = otherData?[K_DELETED_REG]
        ..$modifiedReg = otherData?[K_MODIFIED_REG]
        ..$memberPids = otherData?[K_MEMBER_PIDS]
        ..$topic = otherData?[K_TOPIC]
        ..$body = otherData?[K_BODY]
        ..$timeout = otherData?[K_TIMEOUT]
        ..$readRegs = otherData?[K_READ_REGS]
        ..$archivedRegs = otherData?[K_ARCHIVED_REGS]
        ..$hiddenRegs = otherData?[K_HIDDEN_REGS]
        ..$likedRegs = otherData?[K_LIKED_REGS]
        ..$receivedRegs = otherData?[K_RECEIVED_REGS];
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
        K_CREATED_REG: this.$createdReg,
        K_DELETED_REG: this.$deletedReg,
        K_MODIFIED_REG: this.$modifiedReg,
        K_MEMBER_PIDS: this.$memberPids,
        K_TOPIC: this.$topic,
        K_BODY: this.$body,
        K_TIMEOUT: this.$timeout,
        K_READ_REGS: this.$readRegs,
        K_ARCHIVED_REGS: this.$archivedRegs,
        K_HIDDEN_REGS: this.$hiddenRegs,
        K_LIKED_REGS: this.$likedRegs,
        K_RECEIVED_REGS: this.$receivedRegs,
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
      if (other.createdReg != null) {
        this.createdReg = other.createdReg!;
      }
      if (other.deletedReg != null) {
        this.deletedReg = other.deletedReg!;
      }
      if (other.modifiedReg != null) {
        this.modifiedReg = other.modifiedReg!;
      }
      if (other.memberPids != null) {
        this.memberPids = other.memberPids!;
      }
      if (other.topic != null) {
        this.topic = other.topic!;
      }
      if (other.body != null) {
        this.body = other.body!;
      }
      if (other.timeout != null) {
        this.timeout = other.timeout!;
      }
      if (other.readRegs != null) {
        this.readRegs = other.readRegs!;
      }
      if (other.archivedRegs != null) {
        this.archivedRegs = other.archivedRegs!;
      }
      if (other.hiddenRegs != null) {
        this.hiddenRegs = other.hiddenRegs!;
      }
      if (other.likedRegs != null) {
        this.likedRegs = other.likedRegs!;
      }
      if (other.receivedRegs != null) {
        this.receivedRegs = other.receivedRegs!;
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

  // description.
  String? get descriptionField => this.description;
  set descriptionField(String? v) => this.description = v;
  @protected
  dynamic get $description => this.description?.toString().trim().nullIfEmpty;
  @protected
  set $description(v) => this.description = v?.toString().trim().nullIfEmpty;

  // createdReg.
  ModelRegistration? get createdRegField => this.createdReg;
  set createdRegField(ModelRegistration? v) => this.createdReg = v;
  @protected
  dynamic get $createdReg => this.createdReg?.toJson();
  @protected
  set $createdReg(v) => this.createdReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // deletedReg.
  ModelRegistration? get deletedRegField => this.deletedReg;
  set deletedRegField(ModelRegistration? v) => this.deletedReg = v;
  @protected
  dynamic get $deletedReg => this.deletedReg?.toJson();
  @protected
  set $deletedReg(v) => this.deletedReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // modifiedReg.
  ModelRegistration? get modifiedRegField => this.modifiedReg;
  set modifiedRegField(ModelRegistration? v) => this.modifiedReg = v;
  @protected
  dynamic get $modifiedReg => this.modifiedReg?.toJson();
  @protected
  set $modifiedReg(v) => this.modifiedReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

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

  // topic.
  TopicType? get topicField => this.topic;
  set topicField(TopicType? v) => this.topic = v;
  @protected
  dynamic get $topic => this.topic?.name;
  @protected
  set $topic(v) => this.topic = TopicType.values.valueOf(letAs<String>(v));

  // body.
  DataModel? get bodyField => this.body;
  set bodyField(DataModel? v) => this.body = v;
  @protected
  dynamic get $body => this.body?.data;
  @protected
  set $body(v) => this.body = () {
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

  // readRegs.
  List<ModelRegistration>? get readRegsField => this.readRegs;
  set readRegsField(List<ModelRegistration>? v) => this.readRegs = v;
  @protected
  dynamic get $readRegs => this
      .readRegs
      ?.map(
        (p0) => p0?.toJson(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $readRegs(v) => this.readRegs = letList(v)
      ?.map(
        (p0) => () {
          final a = letMap<String, dynamic>(p0);
          return a != null ? ModelRegistration.fromJson(a) : null;
        }(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList()
      .cast();

  // archivedRegs.
  List<ModelRegistration>? get archivedRegsField => this.archivedRegs;
  set archivedRegsField(List<ModelRegistration>? v) => this.archivedRegs = v;
  @protected
  dynamic get $archivedRegs => this
      .archivedRegs
      ?.map(
        (p0) => p0?.toJson(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $archivedRegs(v) => this.archivedRegs = letList(v)
      ?.map(
        (p0) => () {
          final a = letMap<String, dynamic>(p0);
          return a != null ? ModelRegistration.fromJson(a) : null;
        }(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList()
      .cast();

  // hiddenRegs.
  List<ModelRegistration>? get hiddenRegsField => this.hiddenRegs;
  set hiddenRegsField(List<ModelRegistration>? v) => this.hiddenRegs = v;
  @protected
  dynamic get $hiddenRegs => this
      .hiddenRegs
      ?.map(
        (p0) => p0?.toJson(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $hiddenRegs(v) => this.hiddenRegs = letList(v)
      ?.map(
        (p0) => () {
          final a = letMap<String, dynamic>(p0);
          return a != null ? ModelRegistration.fromJson(a) : null;
        }(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList()
      .cast();

  // likedRegs.
  List<ModelRegistration>? get likedRegsField => this.likedRegs;
  set likedRegsField(List<ModelRegistration>? v) => this.likedRegs = v;
  @protected
  dynamic get $likedRegs => this
      .likedRegs
      ?.map(
        (p0) => p0?.toJson(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $likedRegs(v) => this.likedRegs = letList(v)
      ?.map(
        (p0) => () {
          final a = letMap<String, dynamic>(p0);
          return a != null ? ModelRegistration.fromJson(a) : null;
        }(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList()
      .cast();

  // receivedRegs.
  List<ModelRegistration>? get receivedRegsField => this.receivedRegs;
  set receivedRegsField(List<ModelRegistration>? v) => this.receivedRegs = v;
  @protected
  dynamic get $receivedRegs => this
      .receivedRegs
      ?.map(
        (p0) => p0?.toJson(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $receivedRegs(v) => this.receivedRegs = letList(v)
      ?.map(
        (p0) => () {
          final a = letMap<String, dynamic>(p0);
          return a != null ? ModelRegistration.fromJson(a) : null;
        }(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList()
      .cast();
}
