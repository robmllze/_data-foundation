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

  static const CLASS = 'ModelInvitation';
  static const MODEL_ID = 'model_invitation';

  static const K_CREATED_AT = 'created_at';
  static const K_CREATOR_PID = 'creator_pid';
  static const K_DEF = 'def';
  static const K_DEF_TYPE = 'def_type';
  static const K_EXPIRES_AT = 'expires_at';
  static const K_ID = 'id';
  static const K_INVITATION_LINK = 'invitation_link';
  static const K_INVITEE_ACCEPTED_EMAILS = 'invitee_accepted_emails';
  static const K_INVITEE_EMAILS = 'invitee_emails';
  static const K_INVITEE_REJECTED_EMAILS = 'invitee_rejected_emails';

  DateTime? createdAt;
  String? creatorPid;
  GenericModel? def;
  InvitationDefType? defType;
  DateTime? expiresAt;
  Uri? invitationLink;
  Set<String>? inviteeAcceptedEmails;
  Set<String>? inviteeEmails;
  Set<String>? inviteeRejectedEmails;

  //
  //
  //

  ModelInvitation({
    String? id,
    this.createdAt,
    this.creatorPid,
    this.def,
    this.defType,
    this.expiresAt,
    this.invitationLink,
    this.inviteeAcceptedEmails,
    this.inviteeEmails,
    this.inviteeRejectedEmails,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelInvitation.unsafe({
    String? id,
    this.createdAt,
    this.creatorPid,
    this.def,
    this.defType,
    this.expiresAt,
    this.invitationLink,
    this.inviteeAcceptedEmails,
    this.inviteeEmails,
    this.inviteeRejectedEmails,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelInvitation.from(
    Model? other,
  ) {
    return ModelInvitation.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
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
        return ModelInvitation.unsafe();
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
      return ModelInvitation.unsafe(
        createdAt: () {
          final a = otherData?[K_CREATED_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        creatorPid: otherData?[K_CREATOR_PID]?.toString().trim().nullIfEmpty,
        def: () {
          final a = letMap<String, dynamic>(otherData?[K_DEF]);
          return a != null ? GenericModel.fromJson(a) : null;
        }(),
        defType: InvitationDefType.values
            .valueOf(letAs<String>(otherData?[K_DEF_TYPE])),
        expiresAt: () {
          final a = otherData?[K_EXPIRES_AT];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        invitationLink: () {
          final a = otherData?[K_INVITATION_LINK];
          return a is String ? a.trim().nullIfEmpty?.toUriOrNull() : null;
        }(),
        inviteeAcceptedEmails: letSet(otherData?[K_INVITEE_ACCEPTED_EMAILS])
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
        inviteeEmails: letSet(otherData?[K_INVITEE_EMAILS])
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
        inviteeRejectedEmails: letSet(otherData?[K_INVITEE_REJECTED_EMAILS])
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
      );
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
      if (uri != null && uri.path == MODEL_ID) {
        return ModelInvitation.fromJson(uri.queryParameters);
      } else {
        return ModelInvitation.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  static ModelInvitation? convert(
    Model? other,
  ) {
    return other != null ? ModelInvitation.from(other) : null;
  }

  //
  //
  //

  static ModelInvitation? fromPool({
    required Iterable<ModelInvitation>? pool,
    required String? id,
  }) {
    return id != null ? pool?.firstWhereOrNull((e) => e.id == id) : null;
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
        K_CREATED_AT: createdAt?.toUtc()?.toIso8601String(),
        K_CREATOR_PID: creatorPid?.toString().trim().nullIfEmpty,
        K_DEF: def?.toJson(),
        K_DEF_TYPE: defType?.name,
        K_EXPIRES_AT: expiresAt?.toUtc()?.toIso8601String(),
        K_ID: id?.toString().trim().nullIfEmpty,
        K_INVITATION_LINK: invitationLink?.toString(),
        K_INVITEE_ACCEPTED_EMAILS: inviteeAcceptedEmails
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
        K_INVITEE_EMAILS: inviteeEmails
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
        K_INVITEE_REJECTED_EMAILS: inviteeRejectedEmails
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
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
    return ModelInvitation.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelInvitation.unsafe()..updateWith(this)) as T;
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
      other.createdAt != null ? this.createdAt = other.createdAt : null;
      other.creatorPid != null ? this.creatorPid = other.creatorPid : null;
      other.def != null ? this.def = other.def : null;
      other.defType != null ? this.defType = other.defType : null;
      other.expiresAt != null ? this.expiresAt = other.expiresAt : null;
      other.id != null ? this.id = other.id : null;
      other.invitationLink != null
          ? this.invitationLink = other.invitationLink
          : null;
      other.inviteeAcceptedEmails != null
          ? this.inviteeAcceptedEmails = other.inviteeAcceptedEmails
          : null;
      other.inviteeEmails != null
          ? this.inviteeEmails = other.inviteeEmails
          : null;
      other.inviteeRejectedEmails != null
          ? this.inviteeRejectedEmails = other.inviteeRejectedEmails
          : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
