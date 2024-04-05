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

part of 'model_user_and_org_rel_def.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelUserAndOrgRelDef extends Model {
  //
  //
  //

  static const CLASS = 'ModelUserAndOrgRelDef';
  static const MODEL_ID = 'model_user_and_org_rel_def';

  static const K_ID = 'id';
  static const K_ORGANIZATION_PUB_ID = 'organization_pub_id';
  static const K_USER_PUB_ID = 'user_pub_id';

  String? organizationPubId;
  String? userPubId;

  //
  //
  //

  ModelUserAndOrgRelDef({
    String? id,
    this.organizationPubId,
    this.userPubId,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelUserAndOrgRelDef.unsafe({
    String? id,
    this.organizationPubId,
    this.userPubId,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelUserAndOrgRelDef.from(
    Model? other,
  ) {
    return ModelUserAndOrgRelDef.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelUserAndOrgRelDef.of(
    ModelUserAndOrgRelDef? other,
  ) {
    return ModelUserAndOrgRelDef.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelUserAndOrgRelDef.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelUserAndOrgRelDef.fromJson(decoded);
      } else {
        return ModelUserAndOrgRelDef.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelUserAndOrgRelDef.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelUserAndOrgRelDef.unsafe(
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        organizationPubId:
            otherData?[K_ORGANIZATION_PUB_ID]?.toString().trim().nullIfEmpty,
        userPubId: otherData?[K_USER_PUB_ID]?.toString().trim().nullIfEmpty,
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelUserAndOrgRelDef.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelUserAndOrgRelDef.fromJson(uri.queryParameters);
      } else {
        return ModelUserAndOrgRelDef.unsafe();
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
        K_ORGANIZATION_PUB_ID: organizationPubId?.toString().trim().nullIfEmpty,
        K_USER_PUB_ID: userPubId?.toString().trim().nullIfEmpty,
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
    return ModelUserAndOrgRelDef.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelUserAndOrgRelDef.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelUserAndOrgRelDef.fromJson(otherData);
      other.id != null ? this.id = other.id : null;
      other.organizationPubId != null
          ? this.organizationPubId = other.organizationPubId
          : null;
      other.userPubId != null ? this.userPubId = other.userPubId : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
