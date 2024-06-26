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

  static const K_REF = 'ref';
  static const K_ID = 'id';
  static const K_DISPLAY_NAME = 'displayName';
  static const K_DISPLAY_NAME_SEARCHABLE = 'displayNameSearchable';
  static const K_DISPLAY_COLOR = 'displayColor';
  static const K_EMAIL = 'email';
  static const K_CREATED_AT = 'createdAt';
  static const K_CREATED_BY = 'createdBy';
  static const K_DELETED_AT = 'deletedAt';
  static const K_DELETED_BY = 'deletedBy';
  static const K_DESCRIPTION = 'description';
  static const K_ADDRESS_BOOK = 'addressBook';
  static const K_EMAIL_BOOK = 'emailBook';
  static const K_FILE_BOOK = 'fileBook';
  static const K_PHONE_BOOK = 'phoneBook';
  static const K_DEVICE_REGISTRATIONS = 'deviceRegistrations';
  static const K_REGISTRATION = 'registration';
  static const K_MEMBER_PIDS = 'memberPids';
  static const K_WHEN_DISABLED = 'whenDisabled';
  static const K_WHEN_ENABLED = 'whenEnabled';
  static const K_WHEN_NOTED = 'whenNoted';
  static const K_DEF_TYPE = 'defType';
  static const K_DEF = 'def';

  static const CLASS = 'ModelRelationship';

  @override
  String get $class => CLASS;

  DataRefModel? ref;
  String? id;
  String? displayName;
  String? displayNameSearchable;
  Color? displayColor;
  String? email;
  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;
  String? description;
  Map<String, ModelAddressEntry>? addressBook;
  Map<String, ModelEmailEntry>? emailBook;
  Map<String, ModelFileEntry>? fileBook;
  Map<String, ModelPhoneEntry>? phoneBook;
  Map<String, ModelDeviceRegistration>? deviceRegistrations;
  ModelRegistration? registration;
  Set<String>? memberPids;
  Map<String, DateTime>? whenDisabled;
  Map<String, DateTime>? whenEnabled;
  Map<String, DateTime>? whenNoted;
  RelationshipDefType? defType;
  DataModel? def;

  //
  //
  //

  ModelRelationship.empty();

  //
  //
  //

  factory ModelRelationship({
    required DataRefModel ref,
    String? id,
    String? displayName,
    String? displayNameSearchable,
    Color? displayColor,
    String? email,
    DateTime? createdAt,
    String? createdBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? description,
    Map<String, ModelAddressEntry>? addressBook,
    Map<String, ModelEmailEntry>? emailBook,
    Map<String, ModelFileEntry>? fileBook,
    Map<String, ModelPhoneEntry>? phoneBook,
    Map<String, ModelDeviceRegistration>? deviceRegistrations,
    ModelRegistration? registration,
    Set<String>? memberPids,
    Map<String, DateTime>? whenDisabled,
    Map<String, DateTime>? whenEnabled,
    Map<String, DateTime>? whenNoted,
    RelationshipDefType? defType,
    DataModel? def,
  }) {
    return ModelRelationship.b(
      ref: ref,
      id: id,
      displayName: displayName,
      displayNameSearchable: displayNameSearchable,
      displayColor: displayColor,
      email: email,
      createdAt: createdAt,
      createdBy: createdBy,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      description: description,
      addressBook: addressBook,
      emailBook: emailBook,
      fileBook: fileBook,
      phoneBook: phoneBook,
      deviceRegistrations: deviceRegistrations,
      registration: registration,
      memberPids: memberPids,
      whenDisabled: whenDisabled,
      whenEnabled: whenEnabled,
      whenNoted: whenNoted,
      defType: defType,
      def: def,
    );
  }

  //
  //
  //

  ModelRelationship.b({
    this.ref,
    this.id,
    this.displayName,
    this.displayNameSearchable,
    this.displayColor,
    this.email,
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.deletedBy,
    this.description,
    this.addressBook,
    this.emailBook,
    this.fileBook,
    this.phoneBook,
    this.deviceRegistrations,
    this.registration,
    this.memberPids,
    this.whenDisabled,
    this.whenEnabled,
    this.whenNoted,
    this.defType,
    this.def,
  }) {
    assert(this.ref != null);
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
        ..$ref = otherData?[K_REF]
        ..$id = otherData?[K_ID]
        ..$displayName = otherData?[K_DISPLAY_NAME]
        ..$displayNameSearchable = otherData?[K_DISPLAY_NAME_SEARCHABLE]
        ..$displayColor = otherData?[K_DISPLAY_COLOR]
        ..$email = otherData?[K_EMAIL]
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$description = otherData?[K_DESCRIPTION]
        ..$addressBook = otherData?[K_ADDRESS_BOOK]
        ..$emailBook = otherData?[K_EMAIL_BOOK]
        ..$fileBook = otherData?[K_FILE_BOOK]
        ..$phoneBook = otherData?[K_PHONE_BOOK]
        ..$deviceRegistrations = otherData?[K_DEVICE_REGISTRATIONS]
        ..$registration = otherData?[K_REGISTRATION]
        ..$memberPids = otherData?[K_MEMBER_PIDS]
        ..$whenDisabled = otherData?[K_WHEN_DISABLED]
        ..$whenEnabled = otherData?[K_WHEN_ENABLED]
        ..$whenNoted = otherData?[K_WHEN_NOTED]
        ..$defType = otherData?[K_DEF_TYPE]
        ..$def = otherData?[K_DEF];
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
        K_REF: this.$ref,
        K_ID: this.$id,
        K_DISPLAY_NAME: this.$displayName,
        K_DISPLAY_NAME_SEARCHABLE: this.$displayNameSearchable,
        K_DISPLAY_COLOR: this.$displayColor,
        K_EMAIL: this.$email,
        K_CREATED_AT: this.$createdAt,
        K_CREATED_BY: this.$createdBy,
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
        K_DESCRIPTION: this.$description,
        K_ADDRESS_BOOK: this.$addressBook,
        K_EMAIL_BOOK: this.$emailBook,
        K_FILE_BOOK: this.$fileBook,
        K_PHONE_BOOK: this.$phoneBook,
        K_DEVICE_REGISTRATIONS: this.$deviceRegistrations,
        K_REGISTRATION: this.$registration,
        K_MEMBER_PIDS: this.$memberPids,
        K_WHEN_DISABLED: this.$whenDisabled,
        K_WHEN_ENABLED: this.$whenEnabled,
        K_WHEN_NOTED: this.$whenNoted,
        K_DEF_TYPE: this.$defType,
        K_DEF: this.$def,
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
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.displayName != null) {
        this.displayName = other.displayName!;
      }
      if (other.displayNameSearchable != null) {
        this.displayNameSearchable = other.displayNameSearchable!;
      }
      if (other.displayColor != null) {
        this.displayColor = other.displayColor!;
      }
      if (other.email != null) {
        this.email = other.email!;
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
      if (other.description != null) {
        this.description = other.description!;
      }
      if (other.addressBook != null) {
        this.addressBook = other.addressBook!;
      }
      if (other.emailBook != null) {
        this.emailBook = other.emailBook!;
      }
      if (other.fileBook != null) {
        this.fileBook = other.fileBook!;
      }
      if (other.phoneBook != null) {
        this.phoneBook = other.phoneBook!;
      }
      if (other.deviceRegistrations != null) {
        this.deviceRegistrations = other.deviceRegistrations!;
      }
      if (other.registration != null) {
        this.registration = other.registration!;
      }
      if (other.memberPids != null) {
        this.memberPids = other.memberPids!;
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
      if (other.defType != null) {
        this.defType = other.defType!;
      }
      if (other.def != null) {
        this.def = other.def!;
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

  // email.
  String? get emailField => this.email;
  set emailField(String? v) => this.email = v;
  @protected
  dynamic get $email =>
      this.email?.toString().trim().nullIfEmpty?.toLowerCase();
  @protected
  set $email(v) => this.email = v?.toString().trim().nullIfEmpty?.toLowerCase();

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

  // description.
  String? get descriptionField => this.description;
  set descriptionField(String? v) => this.description = v;
  @protected
  dynamic get $description => this.description?.toString().trim().nullIfEmpty;
  @protected
  set $description(v) => this.description = v?.toString().trim().nullIfEmpty;

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

  // deviceRegistrations.
  Map<String, ModelDeviceRegistration>? get deviceRegistrationsField =>
      this.deviceRegistrations;
  set deviceRegistrationsField(Map<String, ModelDeviceRegistration>? v) =>
      this.deviceRegistrations = v;
  @protected
  dynamic get $deviceRegistrations => this
      .deviceRegistrations
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toJson(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $deviceRegistrations(v) => this.deviceRegistrations = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          () {
            final a = letMap<String, dynamic>(p1);
            return a != null ? ModelDeviceRegistration.fromJson(a) : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

  // registration.
  ModelRegistration? get registrationField => this.registration;
  set registrationField(ModelRegistration? v) => this.registration = v;
  @protected
  dynamic get $registration => this.registration?.toJson();
  @protected
  set $registration(v) => this.registration = () {
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

  // defType.
  RelationshipDefType? get defTypeField => this.defType;
  set defTypeField(RelationshipDefType? v) => this.defType = v;
  @protected
  dynamic get $defType => this.defType?.name;
  @protected
  set $defType(v) =>
      this.defType = RelationshipDefType.values.valueOf(letAs<String>(v));

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
}
