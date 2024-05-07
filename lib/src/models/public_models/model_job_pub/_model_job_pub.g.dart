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

part of 'model_job_pub.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelJobPub extends _ModelJobPub {
  //
  //
  //

  static const K_AVATAR = 'avatar';
  static const K_CHECK_INS = 'check_ins';
  static const K_CHECK_OUTS = 'check_outs';
  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DELETED_AT = 'deleted_at';
  static const K_DELETED_BY = 'deleted_by';
  static const K_DESCRIPTION = 'description';
  static const K_DISPLAY_NAME = 'display_name';
  static const K_DISPLAY_NAME_SEARCHABLE = 'display_name_searchable';
  static const K_EMAIL = 'email';
  static const K_ID = 'id';
  static const K_OTHER_ADDRESSES = 'other_addresses';
  static const K_OTHER_EMAILS = 'other_emails';
  static const K_OTHER_PHONES = 'other_phones';
  static const K_PRIMARY_ADDRESS = 'primary_address';
  static const K_PRIMARY_EMAIL = 'primary_email';
  static const K_PRIMARY_PHONE = 'primary_phone';
  static const K_TODO_ENTRIES = 'todo_entries';
  static const K_WHEN_CLOSED = 'when_closed';
  static const K_WHEN_OPENED = 'when_opened';

  static const CLASS = 'ModelJobPub';

  @override
  String get $class => CLASS;

  ModelFileEntry? avatar;
  Map<DateTime, String>? checkIns;
  Map<DateTime, String>? checkOuts;
  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;
  String? description;
  String? displayName;
  String? displayNameSearchable;
  String? email;
  String? id;
  Set<ModelAddressEntry>? otherAddresses;
  Set<ModelEmailEntry>? otherEmails;
  Set<ModelEmailEntry>? otherPhones;
  ModelAddressEntry? primaryAddress;
  ModelEmailEntry? primaryEmail;
  ModelPhoneEntry? primaryPhone;
  Map<DateTime, ModelTodoEntry>? todoEntries;
  Map<String, DateTime>? whenClosed;
  Map<String, DateTime>? whenOpened;

  //
  //
  //

  ModelJobPub.empty();

  //
  //
  //

  factory ModelJobPub({
    ModelFileEntry? avatar,
    Map<DateTime, String>? checkIns,
    Map<DateTime, String>? checkOuts,
    DateTime? createdAt,
    String? createdBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? description,
    String? displayName,
    String? displayNameSearchable,
    String? email,
    String? id,
    Set<ModelAddressEntry>? otherAddresses,
    Set<ModelEmailEntry>? otherEmails,
    Set<ModelEmailEntry>? otherPhones,
    ModelAddressEntry? primaryAddress,
    ModelEmailEntry? primaryEmail,
    ModelPhoneEntry? primaryPhone,
    Map<DateTime, ModelTodoEntry>? todoEntries,
    Map<String, DateTime>? whenClosed,
    Map<String, DateTime>? whenOpened,
  }) {
    return ModelJobPub.b(
      avatar: avatar,
      checkIns: checkIns,
      checkOuts: checkOuts,
      createdAt: createdAt,
      createdBy: createdBy,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      description: description,
      displayName: displayName,
      displayNameSearchable: displayNameSearchable,
      email: email,
      id: id,
      otherAddresses: otherAddresses,
      otherEmails: otherEmails,
      otherPhones: otherPhones,
      primaryAddress: primaryAddress,
      primaryEmail: primaryEmail,
      primaryPhone: primaryPhone,
      todoEntries: todoEntries,
      whenClosed: whenClosed,
      whenOpened: whenOpened,
    );
  }

  //
  //
  //

  ModelJobPub.b({
    this.avatar,
    this.checkIns,
    this.checkOuts,
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.deletedBy,
    this.description,
    this.displayName,
    this.displayNameSearchable,
    this.email,
    this.id,
    this.otherAddresses,
    this.otherEmails,
    this.otherPhones,
    this.primaryAddress,
    this.primaryEmail,
    this.primaryPhone,
    this.todoEntries,
    this.whenClosed,
    this.whenOpened,
  }) {}

  //
  //
  //

  factory ModelJobPub.from(
    Model? other,
  ) {
    return ModelJobPub.fromJson(
      letAs<GenericModel>(other)?.data ?? other?.toJson(),
    );
  }

  //
  //
  //

  static ModelJobPub? fromOrNull(
    Model? other,
  ) {
    return other != null ? ModelJobPub.from(other) : null;
  }

  //
  //
  //

  factory ModelJobPub.of(
    ModelJobPub? other,
  ) {
    return ModelJobPub.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelJobPub.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelJobPub.fromJson(decoded);
      } else {
        return ModelJobPub.empty();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelJobPub.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelJobPub.empty()
        ..$avatar = otherData?[K_AVATAR]
        ..$checkIns = otherData?[K_CHECK_INS]
        ..$checkOuts = otherData?[K_CHECK_OUTS]
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$description = otherData?[K_DESCRIPTION]
        ..$displayName = otherData?[K_DISPLAY_NAME]
        ..$displayNameSearchable = otherData?[K_DISPLAY_NAME_SEARCHABLE]
        ..$email = otherData?[K_EMAIL]
        ..$id = otherData?[K_ID]
        ..$otherAddresses = otherData?[K_OTHER_ADDRESSES]
        ..$otherEmails = otherData?[K_OTHER_EMAILS]
        ..$otherPhones = otherData?[K_OTHER_PHONES]
        ..$primaryAddress = otherData?[K_PRIMARY_ADDRESS]
        ..$primaryEmail = otherData?[K_PRIMARY_EMAIL]
        ..$primaryPhone = otherData?[K_PRIMARY_PHONE]
        ..$todoEntries = otherData?[K_TODO_ENTRIES]
        ..$whenClosed = otherData?[K_WHEN_CLOSED]
        ..$whenOpened = otherData?[K_WHEN_OPENED];
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelJobPub.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelJobPub.fromJson(uri.queryParameters);
      } else {
        return ModelJobPub.b();
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
        K_AVATAR: this.$avatar,
        K_CHECK_INS: this.$checkIns,
        K_CHECK_OUTS: this.$checkOuts,
        K_CREATED_AT: this.$createdAt,
        K_CREATED_BY: this.$createdBy,
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
        K_DESCRIPTION: this.$description,
        K_DISPLAY_NAME: this.$displayName,
        K_DISPLAY_NAME_SEARCHABLE: this.$displayNameSearchable,
        K_EMAIL: this.$email,
        K_ID: this.$id,
        K_OTHER_ADDRESSES: this.$otherAddresses,
        K_OTHER_EMAILS: this.$otherEmails,
        K_OTHER_PHONES: this.$otherPhones,
        K_PRIMARY_ADDRESS: this.$primaryAddress,
        K_PRIMARY_EMAIL: this.$primaryEmail,
        K_PRIMARY_PHONE: this.$primaryPhone,
        K_TODO_ENTRIES: this.$todoEntries,
        K_WHEN_CLOSED: this.$whenClosed,
        K_WHEN_OPENED: this.$whenOpened,
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
    return ModelJobPub.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelJobPub.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelJobPub.fromJson(otherData);
      if (other.avatar != null) {
        this.avatar = other.avatar!;
      }
      if (other.checkIns != null) {
        this.checkIns = other.checkIns!;
      }
      if (other.checkOuts != null) {
        this.checkOuts = other.checkOuts!;
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
      if (other.displayName != null) {
        this.displayName = other.displayName!;
      }
      if (other.displayNameSearchable != null) {
        this.displayNameSearchable = other.displayNameSearchable!;
      }
      if (other.email != null) {
        this.email = other.email!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.otherAddresses != null) {
        this.otherAddresses = other.otherAddresses!;
      }
      if (other.otherEmails != null) {
        this.otherEmails = other.otherEmails!;
      }
      if (other.otherPhones != null) {
        this.otherPhones = other.otherPhones!;
      }
      if (other.primaryAddress != null) {
        this.primaryAddress = other.primaryAddress!;
      }
      if (other.primaryEmail != null) {
        this.primaryEmail = other.primaryEmail!;
      }
      if (other.primaryPhone != null) {
        this.primaryPhone = other.primaryPhone!;
      }
      if (other.todoEntries != null) {
        this.todoEntries = other.todoEntries!;
      }
      if (other.whenClosed != null) {
        this.whenClosed = other.whenClosed!;
      }
      if (other.whenOpened != null) {
        this.whenOpened = other.whenOpened!;
      }
    }
  }

  //
  //
  //

  // avatar.
  ModelFileEntry? get avatarField => this.avatar;
  set avatarField(ModelFileEntry? v) => this.avatar = v;
  @protected
  dynamic get $avatar => this.avatar?.toJson();
  @protected
  set $avatar(v) => this.avatar = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelFileEntry.fromJson(a) : null;
      }();

  // checkIns.
  Map<DateTime, String>? get checkInsField => this.checkIns;
  set checkInsField(Map<DateTime, String>? v) => this.checkIns = v;
  @protected
  dynamic get $checkIns => this
      .checkIns
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toUtc()?.toIso8601String(),
          p1?.toString().trim().nullIfEmpty,
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $checkIns(v) => this.checkIns = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          () {
            final a = p0;
            return a != null ? DateTime.tryParse(a)?.toUtc() : null;
          }(),
          p1?.toString().trim().nullIfEmpty,
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

  // checkOuts.
  Map<DateTime, String>? get checkOutsField => this.checkOuts;
  set checkOutsField(Map<DateTime, String>? v) => this.checkOuts = v;
  @protected
  dynamic get $checkOuts => this
      .checkOuts
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toUtc()?.toIso8601String(),
          p1?.toString().trim().nullIfEmpty,
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $checkOuts(v) => this.checkOuts = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          () {
            final a = p0;
            return a != null ? DateTime.tryParse(a)?.toUtc() : null;
          }(),
          p1?.toString().trim().nullIfEmpty,
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

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

  // otherAddresses.
  Set<ModelAddressEntry>? get otherAddressesField => this.otherAddresses;
  set otherAddressesField(Set<ModelAddressEntry>? v) => this.otherAddresses = v;
  @protected
  dynamic get $otherAddresses => this
      .otherAddresses
      ?.map(
        (p0) => p0?.toJson(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $otherAddresses(v) => this.otherAddresses = letSet(v)
      ?.map(
        (p0) => () {
          final a = letMap<String, dynamic>(p0);
          return a != null ? ModelAddressEntry.fromJson(a) : null;
        }(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();

  // otherEmails.
  Set<ModelEmailEntry>? get otherEmailsField => this.otherEmails;
  set otherEmailsField(Set<ModelEmailEntry>? v) => this.otherEmails = v;
  @protected
  dynamic get $otherEmails => this
      .otherEmails
      ?.map(
        (p0) => p0?.toJson(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $otherEmails(v) => this.otherEmails = letSet(v)
      ?.map(
        (p0) => () {
          final a = letMap<String, dynamic>(p0);
          return a != null ? ModelEmailEntry.fromJson(a) : null;
        }(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();

  // otherPhones.
  Set<ModelEmailEntry>? get otherPhonesField => this.otherPhones;
  set otherPhonesField(Set<ModelEmailEntry>? v) => this.otherPhones = v;
  @protected
  dynamic get $otherPhones => this
      .otherPhones
      ?.map(
        (p0) => p0?.toJson(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $otherPhones(v) => this.otherPhones = letSet(v)
      ?.map(
        (p0) => () {
          final a = letMap<String, dynamic>(p0);
          return a != null ? ModelEmailEntry.fromJson(a) : null;
        }(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();

  // primaryAddress.
  ModelAddressEntry? get primaryAddressField => this.primaryAddress;
  set primaryAddressField(ModelAddressEntry? v) => this.primaryAddress = v;
  @protected
  dynamic get $primaryAddress => this.primaryAddress?.toJson();
  @protected
  set $primaryAddress(v) => this.primaryAddress = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelAddressEntry.fromJson(a) : null;
      }();

  // primaryEmail.
  ModelEmailEntry? get primaryEmailField => this.primaryEmail;
  set primaryEmailField(ModelEmailEntry? v) => this.primaryEmail = v;
  @protected
  dynamic get $primaryEmail => this.primaryEmail?.toJson();
  @protected
  set $primaryEmail(v) => this.primaryEmail = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelEmailEntry.fromJson(a) : null;
      }();

  // primaryPhone.
  ModelPhoneEntry? get primaryPhoneField => this.primaryPhone;
  set primaryPhoneField(ModelPhoneEntry? v) => this.primaryPhone = v;
  @protected
  dynamic get $primaryPhone => this.primaryPhone?.toJson();
  @protected
  set $primaryPhone(v) => this.primaryPhone = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelPhoneEntry.fromJson(a) : null;
      }();

  // todoEntries.
  Map<DateTime, ModelTodoEntry>? get todoEntriesField => this.todoEntries;
  set todoEntriesField(Map<DateTime, ModelTodoEntry>? v) =>
      this.todoEntries = v;
  @protected
  dynamic get $todoEntries => this
      .todoEntries
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toUtc()?.toIso8601String(),
          p1?.toJson(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $todoEntries(v) => this.todoEntries = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          () {
            final a = p0;
            return a != null ? DateTime.tryParse(a)?.toUtc() : null;
          }(),
          () {
            final a = letMap<String, dynamic>(p1);
            return a != null ? ModelTodoEntry.fromJson(a) : null;
          }(),
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

  // whenClosed.
  Map<String, DateTime>? get whenClosedField => this.whenClosed;
  set whenClosedField(Map<String, DateTime>? v) => this.whenClosed = v;
  @protected
  dynamic get $whenClosed => this
      .whenClosed
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toUtc()?.toIso8601String(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $whenClosed(v) => this.whenClosed = letMap(v)
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

  // whenOpened.
  Map<String, DateTime>? get whenOpenedField => this.whenOpened;
  set whenOpenedField(Map<String, DateTime>? v) => this.whenOpened = v;
  @protected
  dynamic get $whenOpened => this
      .whenOpened
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toUtc()?.toIso8601String(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $whenOpened(v) => this.whenOpened = letMap(v)
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
