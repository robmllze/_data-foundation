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

part of 'model_organization_pub.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelOrganizationPub extends _ModelOrganizationPub {
  //
  //
  //

  static const K_AVATAR = 'avatar';
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

  static const CLASS = 'ModelOrganizationPub';

  @override
  String get $class => CLASS;

  ModelFileEntry? avatar;
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

  //
  //
  //

  ModelOrganizationPub.empty();

  //
  //
  //

  factory ModelOrganizationPub({
    ModelFileEntry? avatar,
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
  }) {
    return ModelOrganizationPub.b(
      avatar: avatar,
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
    );
  }

  //
  //
  //

  ModelOrganizationPub.b({
    this.avatar,
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
  }) {}

  //
  //
  //

  factory ModelOrganizationPub.from(
    Model? other,
  ) {
    return ModelOrganizationPub.fromJson(
      letAs<GenericModel>(other)?.data ?? other?.toJson(),
    );
  }

  //
  //
  //

  static ModelOrganizationPub? fromOrNull(
    Model? other,
  ) {
    return other != null ? ModelOrganizationPub.from(other) : null;
  }

  //
  //
  //

  factory ModelOrganizationPub.of(
    ModelOrganizationPub? other,
  ) {
    return ModelOrganizationPub.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelOrganizationPub.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelOrganizationPub.fromJson(decoded);
      } else {
        return ModelOrganizationPub.empty();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelOrganizationPub.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelOrganizationPub.empty()
        ..$avatar = otherData?[K_AVATAR]
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
        ..$primaryPhone = otherData?[K_PRIMARY_PHONE];
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelOrganizationPub.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelOrganizationPub.fromJson(uri.queryParameters);
      } else {
        return ModelOrganizationPub.b();
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
    return ModelOrganizationPub.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelOrganizationPub.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelOrganizationPub.fromJson(otherData);
      if (other.avatar != null) {
        this.avatar = other.avatar!;
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
}
