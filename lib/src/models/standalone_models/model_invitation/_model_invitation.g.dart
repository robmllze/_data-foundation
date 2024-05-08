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

part of 'model_invitation.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelInvitation extends _ModelInvitation {
  //
  //
  //

  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DEF = 'def';
  static const K_DEF_TYPE = 'def_type';
  static const K_EXPIRES_AT = 'expires_at';
  static const K_ID = 'id';
  static const K_INVITATION_LINK = 'invitation_link';
  static const K_INVITEE_ACCEPTED_EMAILS = 'invitee_accepted_emails';
  static const K_INVITEE_EMAILS = 'invitee_emails';
  static const K_INVITEE_REJECTED_EMAILS = 'invitee_rejected_emails';

  static const CLASS = 'ModelInvitation';

  @override
  String get $class => CLASS;

  DateTime? createdAt;
  String? createdBy;
  GenericModel? def;
  InvitationDefType? defType;
  DateTime? expiresAt;
  String? id;
  Uri? invitationLink;
  Set<String>? inviteeAcceptedEmails;
  Set<String>? inviteeEmails;
  Set<String>? inviteeRejectedEmails;

  //
  //
  //

  ModelInvitation.empty();

  //
  //
  //

  factory ModelInvitation({
    required DateTime createdAt,
    required String createdBy,
    GenericModel? def,
    InvitationDefType? defType,
    DateTime? expiresAt,
    String? id,
    Uri? invitationLink,
    Set<String>? inviteeAcceptedEmails,
    Set<String>? inviteeEmails,
    Set<String>? inviteeRejectedEmails,
  }) {
    return ModelInvitation.b(
      createdAt: createdAt,
      createdBy: createdBy,
      def: def,
      defType: defType,
      expiresAt: expiresAt,
      id: id,
      invitationLink: invitationLink,
      inviteeAcceptedEmails: inviteeAcceptedEmails,
      inviteeEmails: inviteeEmails,
      inviteeRejectedEmails: inviteeRejectedEmails,
    );
  }

  //
  //
  //

  ModelInvitation.b({
    this.createdAt,
    this.createdBy,
    this.def,
    this.defType,
    this.expiresAt,
    this.id,
    this.invitationLink,
    this.inviteeAcceptedEmails,
    this.inviteeEmails,
    this.inviteeRejectedEmails,
  }) {
    assert(createdAt != null);
    assert(createdBy != null);
  }

  //
  //
  //

  factory ModelInvitation.from(
    Model? other,
  ) {
    return ModelInvitation.fromJson(
      letAs<GenericModel>(other)?.data ?? other?.toJson(),
    );
  }

  //
  //
  //

  static ModelInvitation? fromOrNull(
    Model? other,
  ) {
    return other != null ? ModelInvitation.from(other) : null;
  }

  //
  //
  //

  factory ModelInvitation.of(
    ModelInvitation? other,
  ) {
    return ModelInvitation.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelInvitation.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelInvitation.fromJson(decoded);
      } else {
        return ModelInvitation.empty();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelInvitation.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelInvitation.empty()
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$def = otherData?[K_DEF]
        ..$defType = otherData?[K_DEF_TYPE]
        ..$expiresAt = otherData?[K_EXPIRES_AT]
        ..$id = otherData?[K_ID]
        ..$invitationLink = otherData?[K_INVITATION_LINK]
        ..$inviteeAcceptedEmails = otherData?[K_INVITEE_ACCEPTED_EMAILS]
        ..$inviteeEmails = otherData?[K_INVITEE_EMAILS]
        ..$inviteeRejectedEmails = otherData?[K_INVITEE_REJECTED_EMAILS];
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelInvitation.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelInvitation.fromJson(uri.queryParameters);
      } else {
        return ModelInvitation.b();
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
        K_CREATED_AT: this.$createdAt,
        K_CREATED_BY: this.$createdBy,
        K_DEF: this.$def,
        K_DEF_TYPE: this.$defType,
        K_EXPIRES_AT: this.$expiresAt,
        K_ID: this.$id,
        K_INVITATION_LINK: this.$invitationLink,
        K_INVITEE_ACCEPTED_EMAILS: this.$inviteeAcceptedEmails,
        K_INVITEE_EMAILS: this.$inviteeEmails,
        K_INVITEE_REJECTED_EMAILS: this.$inviteeRejectedEmails,
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
    return ModelInvitation.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelInvitation.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelInvitation.fromJson(otherData);
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
      if (other.expiresAt != null) {
        this.expiresAt = other.expiresAt!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.invitationLink != null) {
        this.invitationLink = other.invitationLink!;
      }
      if (other.inviteeAcceptedEmails != null) {
        this.inviteeAcceptedEmails = other.inviteeAcceptedEmails!;
      }
      if (other.inviteeEmails != null) {
        this.inviteeEmails = other.inviteeEmails!;
      }
      if (other.inviteeRejectedEmails != null) {
        this.inviteeRejectedEmails = other.inviteeRejectedEmails!;
      }
    }
  }

  //
  //
  //

  // createdAt.
  DateTime get createdAtField => this.createdAt!;
  set createdAtField(DateTime v) => this.createdAt = v;
  @protected
  dynamic get $createdAt => (this.createdAt?.toUtc()?.toIso8601String())!;
  @protected
  set $createdAt(v) => this.createdAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();

  // createdBy.
  String get createdByField => this.createdBy!;
  set createdByField(String v) => this.createdBy = v;
  @protected
  dynamic get $createdBy => (this.createdBy?.toString().trim().nullIfEmpty)!;
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
  InvitationDefType? get defTypeField => this.defType;
  set defTypeField(InvitationDefType? v) => this.defType = v;
  @protected
  dynamic get $defType => this.defType?.name;
  @protected
  set $defType(v) =>
      this.defType = InvitationDefType.values.valueOf(letAs<String>(v));

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

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

  // invitationLink.
  Uri? get invitationLinkField => this.invitationLink;
  set invitationLinkField(Uri? v) => this.invitationLink = v;
  @protected
  dynamic get $invitationLink => this.invitationLink?.toString();
  @protected
  set $invitationLink(v) => this.invitationLink = () {
        final a = v;
        return a is String ? a.trim().nullIfEmpty?.toUriOrNull() : null;
      }();

  // inviteeAcceptedEmails.
  Set<String>? get inviteeAcceptedEmailsField => this.inviteeAcceptedEmails;
  set inviteeAcceptedEmailsField(Set<String>? v) =>
      this.inviteeAcceptedEmails = v;
  @protected
  dynamic get $inviteeAcceptedEmails => this
      .inviteeAcceptedEmails
      ?.map(
        (p0) => p0
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase()
            .replaceAll(r'[^\w]', ''),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $inviteeAcceptedEmails(v) => this.inviteeAcceptedEmails = letSet(v)
      ?.map(
        (p0) => p0
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase()
            .replaceAll(r'[^\w]', ''),
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();

  // inviteeEmails.
  Set<String>? get inviteeEmailsField => this.inviteeEmails;
  set inviteeEmailsField(Set<String>? v) => this.inviteeEmails = v;
  @protected
  dynamic get $inviteeEmails => this
      .inviteeEmails
      ?.map(
        (p0) => p0
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase()
            .replaceAll(r'[^\w]', ''),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $inviteeEmails(v) => this.inviteeEmails = letSet(v)
      ?.map(
        (p0) => p0
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase()
            .replaceAll(r'[^\w]', ''),
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();

  // inviteeRejectedEmails.
  Set<String>? get inviteeRejectedEmailsField => this.inviteeRejectedEmails;
  set inviteeRejectedEmailsField(Set<String>? v) =>
      this.inviteeRejectedEmails = v;
  @protected
  dynamic get $inviteeRejectedEmails => this
      .inviteeRejectedEmails
      ?.map(
        (p0) => p0
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase()
            .replaceAll(r'[^\w]', ''),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $inviteeRejectedEmails(v) => this.inviteeRejectedEmails = letSet(v)
      ?.map(
        (p0) => p0
            ?.toString()
            .trim()
            .nullIfEmpty
            ?.toLowerCase()
            .replaceAll(r'[^\w]', ''),
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();
}