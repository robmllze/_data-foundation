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

  static const K_ID = 'id';
  static const K_REF = 'ref';
  static const K_DISPLAY_NAME = 'displayName';
  static const K_DISPLAY_COLOR = 'displayColor';
  static const K_DESCRIPTION = 'description';
  static const K_ARCHIVED_G_REG = 'archivedGReg';
  static const K_CREATED_G_REG = 'createdGReg';
  static const K_DELETED_G_REG = 'deletedGReg';
  static const K_UPDATED_G_REG = 'updatedGReg';
  static const K_EXPIRES_AT = 'expiresAt';
  static const K_MEMBER_PIDS = 'memberPids';
  static const K_TAGS = 'tags';
  static const K_CONTENT_TYPE = 'contentType';
  static const K_CONTENT = 'content';
  static const K_READ_REGS = 'readRegs';
  static const K_ARCHIVED_REGS = 'archivedRegs';
  static const K_HIDDEN_REGS = 'hiddenRegs';
  static const K_LIKED_REGS = 'likedRegs';
  static const K_RECEIVED_REGS = 'receivedRegs';
  static const K_TYPE = 'type';

  static const CLASS = 'ModelRelationship';

  @override
  String get $class => CLASS;

  String? id;
  DataRefModel? ref;
  ModelQueryable? displayName;
  Color? displayColor;
  String? description;
  ModelRegistration? archivedGReg;
  ModelRegistration? createdGReg;
  ModelRegistration? deletedGReg;
  ModelRegistration? updatedGReg;
  DateTime? expiresAt;
  Set<String>? memberPids;
  Set<String>? tags;
  ModelEnum? contentType;
  DataModel? content;
  List<ModelRegistration>? readRegs;
  List<ModelRegistration>? archivedRegs;
  List<ModelRegistration>? hiddenRegs;
  List<ModelRegistration>? likedRegs;
  List<ModelRegistration>? receivedRegs;
  RelationshipType? type;

  //
  //
  //

  ModelRelationship.empty();

  //
  //
  //

  factory ModelRelationship({
    String? id,
    DataRefModel? ref,
    ModelQueryable? displayName,
    Color? displayColor,
    String? description,
    ModelRegistration? archivedGReg,
    ModelRegistration? createdGReg,
    ModelRegistration? deletedGReg,
    ModelRegistration? updatedGReg,
    DateTime? expiresAt,
    Set<String>? memberPids,
    Set<String>? tags,
    ModelEnum? contentType,
    DataModel? content,
    List<ModelRegistration>? readRegs,
    List<ModelRegistration>? archivedRegs,
    List<ModelRegistration>? hiddenRegs,
    List<ModelRegistration>? likedRegs,
    List<ModelRegistration>? receivedRegs,
    RelationshipType? type,
  }) {
    return ModelRelationship.b(
      id: id,
      ref: ref,
      displayName: displayName,
      displayColor: displayColor,
      description: description,
      archivedGReg: archivedGReg,
      createdGReg: createdGReg,
      deletedGReg: deletedGReg,
      updatedGReg: updatedGReg,
      expiresAt: expiresAt,
      memberPids: memberPids,
      tags: tags,
      contentType: contentType,
      content: content,
      readRegs: readRegs,
      archivedRegs: archivedRegs,
      hiddenRegs: hiddenRegs,
      likedRegs: likedRegs,
      receivedRegs: receivedRegs,
      type: type,
    );
  }

  //
  //
  //

  ModelRelationship.b({
    this.id,
    this.ref,
    this.displayName,
    this.displayColor,
    this.description,
    this.archivedGReg,
    this.createdGReg,
    this.deletedGReg,
    this.updatedGReg,
    this.expiresAt,
    this.memberPids,
    this.tags,
    this.contentType,
    this.content,
    this.readRegs,
    this.archivedRegs,
    this.hiddenRegs,
    this.likedRegs,
    this.receivedRegs,
    this.type,
  }) {}

  //
  //
  //

  factory ModelRelationship.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelRelationship.from: $e');
      rethrow;
    }
  }

  static ModelRelationship? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelRelationship.of(
    ModelRelationship other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelRelationship.of: $e');
      rethrow;
    }
  }

  static ModelRelationship? ofOrNull(
    ModelRelationship? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelRelationship.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelRelationship.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelRelationship? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelRelationship.fromJson(decoded);
      } else {
        return ModelRelationship.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelRelationship.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelRelationship.fromJson: $e');
      rethrow;
    }
  }

  static ModelRelationship? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelRelationship.empty()
        ..$id = otherData?[K_ID]
        ..$ref = otherData?[K_REF]
        ..$displayName = otherData?[K_DISPLAY_NAME]
        ..$displayColor = otherData?[K_DISPLAY_COLOR]
        ..$description = otherData?[K_DESCRIPTION]
        ..$archivedGReg = otherData?[K_ARCHIVED_G_REG]
        ..$createdGReg = otherData?[K_CREATED_G_REG]
        ..$deletedGReg = otherData?[K_DELETED_G_REG]
        ..$updatedGReg = otherData?[K_UPDATED_G_REG]
        ..$expiresAt = otherData?[K_EXPIRES_AT]
        ..$memberPids = otherData?[K_MEMBER_PIDS]
        ..$tags = otherData?[K_TAGS]
        ..$contentType = otherData?[K_CONTENT_TYPE]
        ..$content = otherData?[K_CONTENT]
        ..$readRegs = otherData?[K_READ_REGS]
        ..$archivedRegs = otherData?[K_ARCHIVED_REGS]
        ..$hiddenRegs = otherData?[K_HIDDEN_REGS]
        ..$likedRegs = otherData?[K_LIKED_REGS]
        ..$receivedRegs = otherData?[K_RECEIVED_REGS]
        ..$type = otherData?[K_TYPE];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelRelationship.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelRelationship.fromUri: $e');
      rethrow;
    }
  }

  static ModelRelationship? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelRelationship.fromJson(uri.queryParameters);
      } else {
        return ModelRelationship.empty();
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
        K_ID: this.$id,
        K_REF: this.$ref,
        K_DISPLAY_NAME: this.$displayName,
        K_DISPLAY_COLOR: this.$displayColor,
        K_DESCRIPTION: this.$description,
        K_ARCHIVED_G_REG: this.$archivedGReg,
        K_CREATED_G_REG: this.$createdGReg,
        K_DELETED_G_REG: this.$deletedGReg,
        K_UPDATED_G_REG: this.$updatedGReg,
        K_EXPIRES_AT: this.$expiresAt,
        K_MEMBER_PIDS: this.$memberPids,
        K_TAGS: this.$tags,
        K_CONTENT_TYPE: this.$contentType,
        K_CONTENT: this.$content,
        K_READ_REGS: this.$readRegs,
        K_ARCHIVED_REGS: this.$archivedRegs,
        K_HIDDEN_REGS: this.$hiddenRegs,
        K_LIKED_REGS: this.$likedRegs,
        K_RECEIVED_REGS: this.$receivedRegs,
        K_TYPE: this.$type,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelRelationship.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelRelationship.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelRelationship.b()..updateWith(this)) as T;
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
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.displayName != null) {
        this.displayName = other.displayName!;
      }
      if (other.displayColor != null) {
        this.displayColor = other.displayColor!;
      }
      if (other.description != null) {
        this.description = other.description!;
      }
      if (other.archivedGReg != null) {
        this.archivedGReg = other.archivedGReg!;
      }
      if (other.createdGReg != null) {
        this.createdGReg = other.createdGReg!;
      }
      if (other.deletedGReg != null) {
        this.deletedGReg = other.deletedGReg!;
      }
      if (other.updatedGReg != null) {
        this.updatedGReg = other.updatedGReg!;
      }
      if (other.expiresAt != null) {
        this.expiresAt = other.expiresAt!;
      }
      if (other.memberPids != null) {
        this.memberPids = other.memberPids!;
      }
      if (other.tags != null) {
        this.tags = other.tags!;
      }
      if (other.contentType != null) {
        this.contentType = other.contentType!;
      }
      if (other.content != null) {
        this.content = other.content!;
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
      if (other.type != null) {
        this.type = other.type!;
      }
    }
  }

  //
  //
  //

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

  // ref.
  DataRefModel? get refField => this.ref;
  set refField(DataRefModel? v) => this.ref = v;
  @protected
  dynamic get $ref => this.ref?.toJson();
  @protected
  set $ref(v) => this.ref = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();

  // displayName.
  ModelQueryable? get displayNameField => this.displayName;
  set displayNameField(ModelQueryable? v) => this.displayName = v;
  @protected
  dynamic get $displayName => this.displayName?.toJson();
  @protected
  set $displayName(v) => this.displayName = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();

  // displayColor.
  Color? get displayColorField => this.displayColor;
  set displayColorField(Color? v) => this.displayColor = v;
  @protected
  dynamic get $displayColor => this.displayColor?.value;
  @protected
  set $displayColor(v) => this.displayColor = () {
        final a = letAs<int>(v);
        return a is int ? Color(a) : null;
      }();

  // description.
  String? get descriptionField => this.description;
  set descriptionField(String? v) => this.description = v;
  @protected
  dynamic get $description => this.description?.toString().trim().nullIfEmpty;
  @protected
  set $description(v) => this.description = v?.toString().trim().nullIfEmpty;

  // archivedGReg.
  ModelRegistration? get archivedGRegField => this.archivedGReg;
  set archivedGRegField(ModelRegistration? v) => this.archivedGReg = v;
  @protected
  dynamic get $archivedGReg => this.archivedGReg?.toJson();
  @protected
  set $archivedGReg(v) => this.archivedGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // createdGReg.
  ModelRegistration? get createdGRegField => this.createdGReg;
  set createdGRegField(ModelRegistration? v) => this.createdGReg = v;
  @protected
  dynamic get $createdGReg => this.createdGReg?.toJson();
  @protected
  set $createdGReg(v) => this.createdGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // deletedGReg.
  ModelRegistration? get deletedGRegField => this.deletedGReg;
  set deletedGRegField(ModelRegistration? v) => this.deletedGReg = v;
  @protected
  dynamic get $deletedGReg => this.deletedGReg?.toJson();
  @protected
  set $deletedGReg(v) => this.deletedGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // updatedGReg.
  ModelRegistration? get updatedGRegField => this.updatedGReg;
  set updatedGRegField(ModelRegistration? v) => this.updatedGReg = v;
  @protected
  dynamic get $updatedGReg => this.updatedGReg?.toJson();
  @protected
  set $updatedGReg(v) => this.updatedGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // expiresAt.
  DateTime? get expiresAtField => this.expiresAt;
  set expiresAtField(DateTime? v) => this.expiresAt = v;
  @protected
  dynamic get $expiresAt => this.expiresAt?.toUtc()?.toIso8601String();
  @protected
  set $expiresAt(v) => this.expiresAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
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

  // tags.
  Set<String>? get tagsField => this.tags;
  set tagsField(Set<String>? v) => this.tags = v;
  @protected
  dynamic get $tags => this
      .tags
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $tags(v) => this.tags = letSet(v)
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();

  // contentType.
  ModelEnum? get contentTypeField => this.contentType;
  set contentTypeField(ModelEnum? v) => this.contentType = v;
  @protected
  dynamic get $contentType => this.contentType?.toJson();
  @protected
  set $contentType(v) => this.contentType = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelEnum.fromJson(a) : null;
      }();

  // content.
  DataModel? get contentField => this.content;
  set contentField(DataModel? v) => this.content = v;
  @protected
  dynamic get $content => this.content?.data;
  @protected
  set $content(v) => this.content = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? DataModel(data: a) : null;
      }();

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

  // type.
  RelationshipType? get typeField => this.type;
  set typeField(RelationshipType? v) => this.type = v;
  @protected
  dynamic get $type => this.type?.name;
  @protected
  set $type(v) => this.type = RelationshipType.values.valueOf(letAs<String>(v));
}
