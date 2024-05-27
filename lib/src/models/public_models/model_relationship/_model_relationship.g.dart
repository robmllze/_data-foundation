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

  static const K_ADDRESS_BOOK = 'address_book';
  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DEF = 'def';
  static const K_DEF_TYPE = 'def_type';
  static const K_DELETED_AT = 'deleted_at';
  static const K_DELETED_BY = 'deleted_by';
  static const K_DESCRIPTION = 'description';
  static const K_DISPLAY_COLOR = 'display_color';
  static const K_DISPLAY_NAME = 'display_name';
  static const K_DISPLAY_NAME_SEARCHABLE = 'display_name_searchable';
  static const K_EMAIL = 'email';
  static const K_EMAIL_BOOK = 'email_book';
  static const K_FILE_BOOK = 'file_book';
  static const K_ID = 'id';
  static const K_MEMBER_PIDS = 'member_pids';
  static const K_PHONE_BOOK = 'phone_book';
  static const K_REF = 'ref';
  static const K_WHEN_DISABLED = 'when_disabled';
  static const K_WHEN_ENABLED = 'when_enabled';
  static const K_WHEN_NOTED = 'when_noted';

  static const CLASS = 'ModelRelationship';

  @override
  String get $class => CLASS;

  Map<String, ModelAddressEntry>? addressBook;
  DateTime? createdAt;
  String? createdBy;
  DataModel? def;
  RelationshipDefType? defType;
  DateTime? deletedAt;
  String? deletedBy;
  String? description;
  Color? displayColor;
  String? displayName;
  String? displayNameSearchable;
  String? email;
  Map<String, ModelEmailEntry>? emailBook;
  Map<String, ModelFileEntry>? fileBook;
  String? id;
  Set<String>? memberPids;
  Map<String, ModelPhoneEntry>? phoneBook;
  DataRefModel? ref;
  Map<String, DateTime>? whenDisabled;
  Map<String, DateTime>? whenEnabled;
  Map<String, DateTime>? whenNoted;

  //
  //
  //

  ModelRelationship.empty();

  //
  //
  //

  factory ModelRelationship({
    Map<String, ModelAddressEntry>? addressBook,
    DateTime? createdAt,
    String? createdBy,
    DataModel? def,
    RelationshipDefType? defType,
    DateTime? deletedAt,
    String? deletedBy,
    String? description,
    Color? displayColor,
    String? displayName,
    String? displayNameSearchable,
    String? email,
    Map<String, ModelEmailEntry>? emailBook,
    Map<String, ModelFileEntry>? fileBook,
    String? id,
    Set<String>? memberPids,
    Map<String, ModelPhoneEntry>? phoneBook,
    required DataRefModel ref,
    Map<String, DateTime>? whenDisabled,
    Map<String, DateTime>? whenEnabled,
    Map<String, DateTime>? whenNoted,
  }) {
    return ModelRelationship.b(
      addressBook: addressBook,
      createdAt: createdAt,
      createdBy: createdBy,
      def: def,
      defType: defType,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      description: description,
      displayColor: displayColor,
      displayName: displayName,
      displayNameSearchable: displayNameSearchable,
      email: email,
      emailBook: emailBook,
      fileBook: fileBook,
      id: id,
      memberPids: memberPids,
      phoneBook: phoneBook,
      ref: ref,
      whenDisabled: whenDisabled,
      whenEnabled: whenEnabled,
      whenNoted: whenNoted,
    );
  }

  //
  //
  //

  ModelRelationship.b({
    this.addressBook,
    this.createdAt,
    this.createdBy,
    this.def,
    this.defType,
    this.deletedAt,
    this.deletedBy,
    this.description,
    this.displayColor,
    this.displayName,
    this.displayNameSearchable,
    this.email,
    this.emailBook,
    this.fileBook,
    this.id,
    this.memberPids,
    this.phoneBook,
    this.ref,
    this.whenDisabled,
    this.whenEnabled,
    this.whenNoted,
  }) {
    assert(ref != null);
  }

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
        ..$addressBook = otherData?[K_ADDRESS_BOOK]
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$def = otherData?[K_DEF]
        ..$defType = otherData?[K_DEF_TYPE]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$description = otherData?[K_DESCRIPTION]
        ..$displayColor = otherData?[K_DISPLAY_COLOR]
        ..$displayName = otherData?[K_DISPLAY_NAME]
        ..$displayNameSearchable = otherData?[K_DISPLAY_NAME_SEARCHABLE]
        ..$email = otherData?[K_EMAIL]
        ..$emailBook = otherData?[K_EMAIL_BOOK]
        ..$fileBook = otherData?[K_FILE_BOOK]
        ..$id = otherData?[K_ID]
        ..$memberPids = otherData?[K_MEMBER_PIDS]
        ..$phoneBook = otherData?[K_PHONE_BOOK]
        ..$ref = otherData?[K_REF]
        ..$whenDisabled = otherData?[K_WHEN_DISABLED]
        ..$whenEnabled = otherData?[K_WHEN_ENABLED]
        ..$whenNoted = otherData?[K_WHEN_NOTED];
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
        K_ADDRESS_BOOK: this.$addressBook,
        K_CREATED_AT: this.$createdAt,
        K_CREATED_BY: this.$createdBy,
        K_DEF: this.$def,
        K_DEF_TYPE: this.$defType,
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
        K_DESCRIPTION: this.$description,
        K_DISPLAY_COLOR: this.$displayColor,
        K_DISPLAY_NAME: this.$displayName,
        K_DISPLAY_NAME_SEARCHABLE: this.$displayNameSearchable,
        K_EMAIL: this.$email,
        K_EMAIL_BOOK: this.$emailBook,
        K_FILE_BOOK: this.$fileBook,
        K_ID: this.$id,
        K_MEMBER_PIDS: this.$memberPids,
        K_PHONE_BOOK: this.$phoneBook,
        K_REF: this.$ref,
        K_WHEN_DISABLED: this.$whenDisabled,
        K_WHEN_ENABLED: this.$whenEnabled,
        K_WHEN_NOTED: this.$whenNoted,
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
      if (other.addressBook != null) {
        this.addressBook = other.addressBook!;
      }
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
      if (other.displayColor != null) {
        this.displayColor = other.displayColor!;
      }
      if (other.displayName != null) {
        this.displayName = other.displayName!;
      }
      if (other.displayNameSearchable != null) {
        this.displayNameSearchable = other.displayNameSearchable!;
      }
      if (other.email != null) {
        this.email = other.email!;
      }
      if (other.emailBook != null) {
        this.emailBook = other.emailBook!;
      }
      if (other.fileBook != null) {
        this.fileBook = other.fileBook!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.memberPids != null) {
        this.memberPids = other.memberPids!;
      }
      if (other.phoneBook != null) {
        this.phoneBook = other.phoneBook!;
      }
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.whenDisabled != null) {
        this.whenDisabled = other.whenDisabled!;
      }
      if (other.whenEnabled != null) {
        this.whenEnabled = other.whenEnabled!;
      }
      if (other.whenNoted != null) {
        this.whenNoted = other.whenNoted!;
      }
    }
  }

  //
  //
  //

  // addressBook.
  Map<String, ModelAddressEntry>? get addressBookField => this.addressBook;
  set addressBookField(Map<String, ModelAddressEntry>? v) =>
      this.addressBook = v;
  @protected
  dynamic get $addressBook => this
      .addressBook
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toJson(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $addressBook(v) => this.addressBook = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          () {
            final a = letMap<String, dynamic>(p1);
            return a != null ? ModelAddressEntry.fromJson(a) : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

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
  DataModel? get defField => this.def;
  set defField(DataModel? v) => this.def = v;
  @protected
  dynamic get $def => this.def?.data;
  @protected
  set $def(v) => this.def = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? DataModel(data: a) : null;
      }();

  // defType.
  RelationshipDefType? get defTypeField => this.defType;
  set defTypeField(RelationshipDefType? v) => this.defType = v;
  @protected
  dynamic get $defType => this.defType?.name;
  @protected
  set $defType(v) =>
      this.defType = RelationshipDefType.values.valueOf(letAs<String>(v));

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

  // displayName.
  String? get displayNameField => this.displayName;
  set displayNameField(String? v) => this.displayName = v;
  @protected
  dynamic get $displayName => this.displayName?.toString().trim().nullIfEmpty;
  @protected
  set $displayName(v) => this.displayName = v?.toString().trim().nullIfEmpty;

  // displayNameSearchable.
  String? get displayNameSearchableField => this.displayNameSearchable;
  set displayNameSearchableField(String? v) => this.displayNameSearchable = v;
  @protected
  dynamic get $displayNameSearchable => this
      .displayNameSearchable
      ?.toString()
      .trim()
      .nullIfEmpty
      ?.toLowerCase()
      .replaceAll(r'[^\w]', '');
  @protected
  set $displayNameSearchable(v) => this.displayNameSearchable =
      v?.toString().trim().nullIfEmpty?.toLowerCase().replaceAll(r'[^\w]', '');

  // email.
  String? get emailField => this.email;
  set emailField(String? v) => this.email = v;
  @protected
  dynamic get $email =>
      this.email?.toString().trim().nullIfEmpty?.toLowerCase();
  @protected
  set $email(v) => this.email = v?.toString().trim().nullIfEmpty?.toLowerCase();

  // emailBook.
  Map<String, ModelEmailEntry>? get emailBookField => this.emailBook;
  set emailBookField(Map<String, ModelEmailEntry>? v) => this.emailBook = v;
  @protected
  dynamic get $emailBook => this
      .emailBook
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toJson(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $emailBook(v) => this.emailBook = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          () {
            final a = letMap<String, dynamic>(p1);
            return a != null ? ModelEmailEntry.fromJson(a) : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

  // fileBook.
  Map<String, ModelFileEntry>? get fileBookField => this.fileBook;
  set fileBookField(Map<String, ModelFileEntry>? v) => this.fileBook = v;
  @protected
  dynamic get $fileBook => this
      .fileBook
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toJson(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $fileBook(v) => this.fileBook = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          () {
            final a = letMap<String, dynamic>(p1);
            return a != null ? ModelFileEntry.fromJson(a) : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

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

  // phoneBook.
  Map<String, ModelPhoneEntry>? get phoneBookField => this.phoneBook;
  set phoneBookField(Map<String, ModelPhoneEntry>? v) => this.phoneBook = v;
  @protected
  dynamic get $phoneBook => this
      .phoneBook
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toJson(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $phoneBook(v) => this.phoneBook = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          () {
            final a = letMap<String, dynamic>(p1);
            return a != null ? ModelPhoneEntry.fromJson(a) : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

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

  // whenDisabled.
  Map<String, DateTime>? get whenDisabledField => this.whenDisabled;
  set whenDisabledField(Map<String, DateTime>? v) => this.whenDisabled = v;
  @protected
  dynamic get $whenDisabled => this
      .whenDisabled
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toUtc()?.toIso8601String(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $whenDisabled(v) => this.whenDisabled = letMap(v)
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

  // whenEnabled.
  Map<String, DateTime>? get whenEnabledField => this.whenEnabled;
  set whenEnabledField(Map<String, DateTime>? v) => this.whenEnabled = v;
  @protected
  dynamic get $whenEnabled => this
      .whenEnabled
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toUtc()?.toIso8601String(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $whenEnabled(v) => this.whenEnabled = letMap(v)
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

  // whenNoted.
  Map<String, DateTime>? get whenNotedField => this.whenNoted;
  set whenNotedField(Map<String, DateTime>? v) => this.whenNoted = v;
  @protected
  dynamic get $whenNoted => this
      .whenNoted
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toUtc()?.toIso8601String(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $whenNoted(v) => this.whenNoted = letMap(v)
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
