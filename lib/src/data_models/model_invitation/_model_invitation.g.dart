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

  static const K_REF = 'ref';
  static const K_ID = 'id';
  static const K_CREATED_REG = 'createdReg';
  static const K_EXPIRES_AT = 'expiresAt';
  static const K_DEF_TYPE = 'defType';
  static const K_DEF = 'def';
  static const K_INVITATION_LINK = 'invitationLink';
  static const K_INVITEE_EMAILS = 'inviteeEmails';
  static const K_INVITEE_ACCEPTED_EMAILS = 'inviteeAcceptedEmails';
  static const K_INVITEE_REJECTED_EMAILS = 'inviteeRejectedEmails';

  static const CLASS = 'ModelInvitation';

  @override
  String get $class => CLASS;

  DataRefModel? ref;
  String? id;
  ModelRegistration? createdReg;
  DateTime? expiresAt;
  InvitationDefType? defType;
  DataModel? def;
  Uri? invitationLink;
  Set<String>? inviteeEmails;
  Set<String>? inviteeAcceptedEmails;
  Set<String>? inviteeRejectedEmails;

  //
  //
  //

  ModelInvitation.empty();

  //
  //
  //

  factory ModelInvitation({
    required DataRefModel ref,
    String? id,
    required ModelRegistration createdReg,
    DateTime? expiresAt,
    InvitationDefType? defType,
    DataModel? def,
    Uri? invitationLink,
    Set<String>? inviteeEmails,
    Set<String>? inviteeAcceptedEmails,
    Set<String>? inviteeRejectedEmails,
  }) {
    return ModelInvitation.b(
      ref: ref,
      id: id,
      createdReg: createdReg,
      expiresAt: expiresAt,
      defType: defType,
      def: def,
      invitationLink: invitationLink,
      inviteeEmails: inviteeEmails,
      inviteeAcceptedEmails: inviteeAcceptedEmails,
      inviteeRejectedEmails: inviteeRejectedEmails,
    );
  }

  //
  //
  //

  ModelInvitation.b({
    this.ref,
    this.id,
    this.createdReg,
    this.expiresAt,
    this.defType,
    this.def,
    this.invitationLink,
    this.inviteeEmails,
    this.inviteeAcceptedEmails,
    this.inviteeRejectedEmails,
  }) {
    assert(this.ref != null);

    assert(this.createdReg != null);
  }

  //
  //
  //

  factory ModelInvitation.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelInvitation.from: $e');
      rethrow;
    }
  }

  static ModelInvitation? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelInvitation.of(
    ModelInvitation other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelInvitation.of: $e');
      rethrow;
    }
  }

  static ModelInvitation? ofOrNull(
    ModelInvitation? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelInvitation.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelInvitation.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelInvitation? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelInvitation.fromJson(decoded);
      } else {
        return ModelInvitation.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelInvitation.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelInvitation.fromJson: $e');
      rethrow;
    }
  }

  static ModelInvitation? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelInvitation.empty()
        ..$ref = otherData?[K_REF]
        ..$id = otherData?[K_ID]
        ..$createdReg = otherData?[K_CREATED_REG]
        ..$expiresAt = otherData?[K_EXPIRES_AT]
        ..$defType = otherData?[K_DEF_TYPE]
        ..$def = otherData?[K_DEF]
        ..$invitationLink = otherData?[K_INVITATION_LINK]
        ..$inviteeEmails = otherData?[K_INVITEE_EMAILS]
        ..$inviteeAcceptedEmails = otherData?[K_INVITEE_ACCEPTED_EMAILS]
        ..$inviteeRejectedEmails = otherData?[K_INVITEE_REJECTED_EMAILS];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelInvitation.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelInvitation.fromUri: $e');
      rethrow;
    }
  }

  static ModelInvitation? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelInvitation.fromJson(uri.queryParameters);
      } else {
        return ModelInvitation.empty();
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
        K_CREATED_REG: this.$createdReg,
        K_EXPIRES_AT: this.$expiresAt,
        K_DEF_TYPE: this.$defType,
        K_DEF: this.$def,
        K_INVITATION_LINK: this.$invitationLink,
        K_INVITEE_EMAILS: this.$inviteeEmails,
        K_INVITEE_ACCEPTED_EMAILS: this.$inviteeAcceptedEmails,
        K_INVITEE_REJECTED_EMAILS: this.$inviteeRejectedEmails,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelInvitation.toJson: $e');
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
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.createdReg != null) {
        this.createdReg = other.createdReg!;
      }
      if (other.expiresAt != null) {
        this.expiresAt = other.expiresAt!;
      }
      if (other.defType != null) {
        this.defType = other.defType!;
      }
      if (other.def != null) {
        this.def = other.def!;
      }
      if (other.invitationLink != null) {
        this.invitationLink = other.invitationLink!;
      }
      if (other.inviteeEmails != null) {
        this.inviteeEmails = other.inviteeEmails!;
      }
      if (other.inviteeAcceptedEmails != null) {
        this.inviteeAcceptedEmails = other.inviteeAcceptedEmails!;
      }
      if (other.inviteeRejectedEmails != null) {
        this.inviteeRejectedEmails = other.inviteeRejectedEmails!;
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

  // createdReg.
  ModelRegistration get createdRegField => this.createdReg!;
  set createdRegField(ModelRegistration v) => this.createdReg = v;
  @protected
  dynamic get $createdReg => this.createdReg?.toJson();
  @protected
  set $createdReg(v) => this.createdReg = () {
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

  // defType.
  InvitationDefType? get defTypeField => this.defType;
  set defTypeField(InvitationDefType? v) => this.defType = v;
  @protected
  dynamic get $defType => this.defType?.name;
  @protected
  set $defType(v) =>
      this.defType = InvitationDefType.values.valueOf(letAs<String>(v));

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
