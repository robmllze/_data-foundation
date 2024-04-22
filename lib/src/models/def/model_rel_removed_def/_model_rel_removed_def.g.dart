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

part of 'model_rel_removed_def.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelRelRemovedDef extends Model {
  //
  //
  //

  static const CLASS = 'ModelRelRemovedDef';
  static const MODEL_ID = 'model_rel_removed_def';

  static const K_ID = 'id';
  static const K_RECEIVER_PID = 'receiver_pid';
  static const K_RELATIONSHIP_ID = 'relationship_id';
  static const K_SENDER_PID = 'sender_pid';

  String? receiverPid;
  String? relationshipId;
  String? senderPid;

  //
  //
  //

  ModelRelRemovedDef({
    String? id,
    this.receiverPid,
    this.relationshipId,
    this.senderPid,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelRelRemovedDef.unsafe({
    String? id,
    this.receiverPid,
    this.relationshipId,
    this.senderPid,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelRelRemovedDef.from(
    Model? other,
  ) {
    return ModelRelRemovedDef.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelRelRemovedDef.of(
    ModelRelRemovedDef? other,
  ) {
    return ModelRelRemovedDef.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelRelRemovedDef.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelRelRemovedDef.fromJson(decoded);
      } else {
        return ModelRelRemovedDef.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelRelRemovedDef.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelRelRemovedDef.unsafe(
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        receiverPid: otherData?[K_RECEIVER_PID]?.toString().trim().nullIfEmpty,
        relationshipId:
            otherData?[K_RELATIONSHIP_ID]?.toString().trim().nullIfEmpty,
        senderPid: otherData?[K_SENDER_PID]?.toString().trim().nullIfEmpty,
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelRelRemovedDef.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelRelRemovedDef.fromJson(uri.queryParameters);
      } else {
        return ModelRelRemovedDef.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  static ModelRelRemovedDef? convert(
    Model? other,
  ) {
    return other != null ? ModelRelRemovedDef.from(other) : null;
  }

  //
  //
  //

  static ModelRelRemovedDef? fromPool({
    required Iterable<ModelRelRemovedDef>? pool,
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
        K_ID: id?.toString().trim().nullIfEmpty,
        K_RECEIVER_PID: receiverPid?.toString().trim().nullIfEmpty,
        K_RELATIONSHIP_ID: relationshipId?.toString().trim().nullIfEmpty,
        K_SENDER_PID: senderPid?.toString().trim().nullIfEmpty,
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
    return ModelRelRemovedDef.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelRelRemovedDef.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelRelRemovedDef.fromJson(otherData);
      other.id != null ? this.id = other.id : null;
      other.receiverPid != null ? this.receiverPid = other.receiverPid : null;
      other.relationshipId != null
          ? this.relationshipId = other.relationshipId
          : null;
      other.senderPid != null ? this.senderPid = other.senderPid : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
