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

part of 'model_rel_changed_def.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelRelChangedDef extends Model {
  //
  //
  //

  static const CLASS = 'ModelRelChangedDef';
  static const MODEL_ID = 'model_rel_changed_def';

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

  ModelRelChangedDef({
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

  ModelRelChangedDef.unsafe({
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

  factory ModelRelChangedDef.from(
    Model? other,
  ) {
    return ModelRelChangedDef.unsafe()..updateWith(other);
  }

  //
  //
  //

  factory ModelRelChangedDef.of(
    ModelRelChangedDef? other,
  ) {
    return ModelRelChangedDef.unsafe()..updateWith(other);
  }

  //
  //
  //

  factory ModelRelChangedDef.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelRelChangedDef.fromJson(decoded);
      } else {
        return ModelRelChangedDef.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelRelChangedDef.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelRelChangedDef.unsafe(
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
    return ModelRelChangedDef.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelRelChangedDef.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelRelChangedDef.fromJson(otherData);
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
