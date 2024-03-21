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

part of 'model_user.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelUser extends _ModelUser {
  //
  //
  //

  static const CLASS = 'ModelUser';
  static const MODEL_ID = 'model_user';

  static const K_CONNECTION_UIDS = 'connection_uids';
  static const K_DID_SEND_WELCOME_EMAIL = 'did_send_welcome_email';
  static const K_EMAIL_SUBSCRIPTIONS = 'email_subscriptions';
  static const K_ID = 'id';
  static const K_PUSH_SUBSCRIPTIONS = 'push_subscriptions';
  static const K_RELATIONSHIP_IDS = 'relationship_ids';
  static const K_SMS_SUBSCRIPTIONS = 'sms_subscriptions';
  static const K_USER_PUB_ID = 'user_pub_id';
  static const K_USER_TYPES = 'user_types';
  static const K_WHEN_LAST_LOGGED_IN = 'when_last_logged_in';

  Set<String>? connectionUids;
  bool? didSendWelcomeEmail;
  Set<String>? emailSubscriptions;
  Set<String>? pushSubscriptions;
  Set<String>? relationshipIds;
  Set<String>? smsSubscriptions;
  String? userPubId;
  Set<UserType>? userTypes;
  DateTime? whenLastLoggedIn;

  //
  //
  //

  ModelUser({
    String? id,
    this.connectionUids,
    this.didSendWelcomeEmail,
    this.emailSubscriptions,
    this.pushSubscriptions,
    this.relationshipIds,
    this.smsSubscriptions,
    this.userPubId,
    this.userTypes,
    this.whenLastLoggedIn,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelUser.unsafe({
    String? id,
    this.connectionUids,
    this.didSendWelcomeEmail,
    this.emailSubscriptions,
    this.pushSubscriptions,
    this.relationshipIds,
    this.smsSubscriptions,
    this.userPubId,
    this.userTypes,
    this.whenLastLoggedIn,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelUser.from(
    Model? other,
  ) {
    return ModelUser.unsafe()..updateWith(other);
  }

  //
  //
  //

  factory ModelUser.of(
    ModelUser? other,
  ) {
    return ModelUser.unsafe()..updateWith(other);
  }

  //
  //
  //

  factory ModelUser.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelUser.fromJson(decoded);
      } else {
        return ModelUser.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelUser.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelUser.unsafe(
        connectionUids: letSet(otherData?[K_CONNECTION_UIDS])
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
        didSendWelcomeEmail: letBool(otherData?[K_DID_SEND_WELCOME_EMAIL]),
        emailSubscriptions: letSet(otherData?[K_EMAIL_SUBSCRIPTIONS])
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        pushSubscriptions: letSet(otherData?[K_PUSH_SUBSCRIPTIONS])
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
        relationshipIds: letSet(otherData?[K_RELATIONSHIP_IDS])
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
        smsSubscriptions: letSet(otherData?[K_SMS_SUBSCRIPTIONS])
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
        userPubId: otherData?[K_USER_PUB_ID]?.toString().trim().nullIfEmpty,
        userTypes: letSet(otherData?[K_USER_TYPES])
            ?.map(
              (final p0) => UserType.values.valueOf(letAs<String>(p0)),
            )
            .nonNulls
            .nullIfEmpty
            ?.toSet()
            .cast(),
        whenLastLoggedIn: () {
          final a = otherData?[K_WHEN_LAST_LOGGED_IN];
          return a != null ? DateTime.tryParse(a)?.toUtc() : null;
        }(),
      );
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
        K_CONNECTION_UIDS: connectionUids
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
        K_DID_SEND_WELCOME_EMAIL: didSendWelcomeEmail,
        K_EMAIL_SUBSCRIPTIONS: emailSubscriptions
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
        K_ID: id?.toString().trim().nullIfEmpty,
        K_PUSH_SUBSCRIPTIONS: pushSubscriptions
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
        K_RELATIONSHIP_IDS: relationshipIds
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
        K_SMS_SUBSCRIPTIONS: smsSubscriptions
            ?.map(
              (final p0) => p0?.toString().trim().nullIfEmpty,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
        K_USER_PUB_ID: userPubId?.toString().trim().nullIfEmpty,
        K_USER_TYPES: userTypes
            ?.map(
              (final p0) => p0?.name,
            )
            .nonNulls
            .nullIfEmpty
            ?.toList(),
        K_WHEN_LAST_LOGGED_IN: whenLastLoggedIn?.toUtc()?.toIso8601String(),
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
    return ModelUser.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelUser.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelUser.fromJson(otherData);
      other.connectionUids != null
          ? this.connectionUids = other.connectionUids
          : null;
      other.didSendWelcomeEmail != null
          ? this.didSendWelcomeEmail = other.didSendWelcomeEmail
          : null;
      other.emailSubscriptions != null
          ? this.emailSubscriptions = other.emailSubscriptions
          : null;
      other.id != null ? this.id = other.id : null;
      other.pushSubscriptions != null
          ? this.pushSubscriptions = other.pushSubscriptions
          : null;
      other.relationshipIds != null
          ? this.relationshipIds = other.relationshipIds
          : null;
      other.smsSubscriptions != null
          ? this.smsSubscriptions = other.smsSubscriptions
          : null;
      other.userPubId != null ? this.userPubId = other.userPubId : null;
      other.userTypes != null ? this.userTypes = other.userTypes : null;
      other.whenLastLoggedIn != null
          ? this.whenLastLoggedIn = other.whenLastLoggedIn
          : null;
    }
  }
}
