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

part of 'model_connection_request_accepted_def.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelConnectionRequestAcceptedDef extends Model {
  //
  //
  //

  static const CLASS = 'ModelConnectionRequestAcceptedDef';
  static const MODEL_ID = 'model_connection_request_accepted_def';

  static const K_ID = 'id';
  static const K_RECEIVER_PUB_ID = 'receiver_pub_id';
  static const K_RELATIONSHIP_ID = 'relationship_id';
  static const K_SENDER_PUB_ID = 'sender_pub_id';

  String? receiverPubId;
  String? relationshipId;
  String? senderPubId;

  //
  //
  //

  ModelConnectionRequestAcceptedDef({
    String? id,
    this.receiverPubId,
    this.relationshipId,
    this.senderPubId,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelConnectionRequestAcceptedDef.unsafe({
    String? id,
    this.receiverPubId,
    this.relationshipId,
    this.senderPubId,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelConnectionRequestAcceptedDef.from(
    Model? other,
  ) {
    if (other is GenericModel) {
      return ModelConnectionRequestAcceptedDef.fromGenericModel(other);
    } else {
      return ModelConnectionRequestAcceptedDef.unsafe()..updateWith(other);
    }
  }

  //
  //
  //

  factory ModelConnectionRequestAcceptedDef.of(
    ModelConnectionRequestAcceptedDef? other,
  ) {
    return ModelConnectionRequestAcceptedDef.unsafe()..updateWith(other);
  }

  //
  //
  //

  factory ModelConnectionRequestAcceptedDef.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelConnectionRequestAcceptedDef.fromJson(decoded);
      } else {
        return ModelConnectionRequestAcceptedDef.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelConnectionRequestAcceptedDef.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelConnectionRequestAcceptedDef.unsafe(
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        receiverPubId:
            otherData?[K_RECEIVER_PUB_ID]?.toString().trim().nullIfEmpty,
        relationshipId:
            otherData?[K_RELATIONSHIP_ID]?.toString().trim().nullIfEmpty,
        senderPubId: otherData?[K_SENDER_PUB_ID]?.toString().trim().nullIfEmpty,
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelConnectionRequestAcceptedDef.fromGenericModel(
    GenericModel? other,
  ) {
    return ModelConnectionRequestAcceptedDef.fromJson(other?.data ?? {});
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
        K_RECEIVER_PUB_ID: receiverPubId?.toString().trim().nullIfEmpty,
        K_RELATIONSHIP_ID: relationshipId?.toString().trim().nullIfEmpty,
        K_SENDER_PUB_ID: senderPubId?.toString().trim().nullIfEmpty,
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
    return ModelConnectionRequestAcceptedDef.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelConnectionRequestAcceptedDef.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelConnectionRequestAcceptedDef.fromJson(otherData);
      other.id != null ? this.id = other.id : null;
      other.receiverPubId != null
          ? this.receiverPubId = other.receiverPubId
          : null;
      other.relationshipId != null
          ? this.relationshipId = other.relationshipId
          : null;
      other.senderPubId != null ? this.senderPubId = other.senderPubId : null;
    }
  }
}
