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

part of 'model_message_def.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelMessageDef extends Model {
  //
  //
  //

  static const CLASS = 'ModelMessageDef';
  static const MODEL_ID = 'model_message_def';

  static const K_ID = 'id';
  static const K_MESSAGE = 'message';
  static const K_RECEIVER_UID = 'receiver_uid';
  static const K_RELATIONSHIP_ID = 'relationship_id';
  static const K_SENDER_UID = 'sender_uid';

  String? message;
  String? receiverUid;
  String? relationshipId;
  String? senderUid;

  //
  //
  //

  ModelMessageDef({
    String? id,
    this.message,
    this.receiverUid,
    this.relationshipId,
    this.senderUid,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelMessageDef.unsafe({
    String? id,
    this.message,
    this.receiverUid,
    this.relationshipId,
    this.senderUid,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelMessageDef.from(
    Model? other,
  ) {
    return ModelMessageDef.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelMessageDef.of(
    ModelMessageDef? other,
  ) {
    return ModelMessageDef.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelMessageDef.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelMessageDef.fromJson(decoded);
      } else {
        return ModelMessageDef.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelMessageDef.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelMessageDef.unsafe(
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        message: otherData?[K_MESSAGE]?.toString().trim().nullIfEmpty,
        receiverUid: otherData?[K_RECEIVER_UID]?.toString().trim().nullIfEmpty,
        relationshipId:
            otherData?[K_RELATIONSHIP_ID]?.toString().trim().nullIfEmpty,
        senderUid: otherData?[K_SENDER_UID]?.toString().trim().nullIfEmpty,
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelMessageDef.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelMessageDef.fromJson(uri.queryParameters);
      } else {
        return ModelMessageDef.unsafe();
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
        K_ID: id?.toString().trim().nullIfEmpty,
        K_MESSAGE: message?.toString().trim().nullIfEmpty,
        K_RECEIVER_UID: receiverUid?.toString().trim().nullIfEmpty,
        K_RELATIONSHIP_ID: relationshipId?.toString().trim().nullIfEmpty,
        K_SENDER_UID: senderUid?.toString().trim().nullIfEmpty,
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
    return ModelMessageDef.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelMessageDef.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelMessageDef.fromJson(otherData);
      other.id != null ? this.id = other.id : null;
      other.message != null ? this.message = other.message : null;
      other.receiverUid != null ? this.receiverUid = other.receiverUid : null;
      other.relationshipId != null
          ? this.relationshipId = other.relationshipId
          : null;
      other.senderUid != null ? this.senderUid = other.senderUid : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
