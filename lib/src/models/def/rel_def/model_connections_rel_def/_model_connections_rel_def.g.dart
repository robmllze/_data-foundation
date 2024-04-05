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

part of 'model_connections_rel_def.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelConnectionsRelDef extends Model {
  //
  //
  //

  static const CLASS = 'ModelConnectionsRelDef';
  static const MODEL_ID = 'model_connections_rel_def';

  static const K_ID = 'id';
  static const K_PERMISSIONS = 'permissions';

  ModelConnectionPermissions? permissions;

  //
  //
  //

  ModelConnectionsRelDef({
    String? id,
    this.permissions,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelConnectionsRelDef.unsafe({
    String? id,
    this.permissions,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelConnectionsRelDef.from(
    Model? other,
  ) {
    return ModelConnectionsRelDef.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelConnectionsRelDef.of(
    ModelConnectionsRelDef? other,
  ) {
    return ModelConnectionsRelDef.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelConnectionsRelDef.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelConnectionsRelDef.fromJson(decoded);
      } else {
        return ModelConnectionsRelDef.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelConnectionsRelDef.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelConnectionsRelDef.unsafe(
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        permissions: () {
          final a = letMap<String, dynamic>(otherData?[K_PERMISSIONS]);
          return a != null ? ModelConnectionPermissions.fromJson(a) : null;
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

  factory ModelConnectionsRelDef.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelConnectionsRelDef.fromJson(uri.queryParameters);
      } else {
        return ModelConnectionsRelDef.unsafe();
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
        K_PERMISSIONS: permissions?.toJson(),
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
    return ModelConnectionsRelDef.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelConnectionsRelDef.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelConnectionsRelDef.fromJson(otherData);
      other.id != null ? this.id = other.id : null;
      other.permissions != null ? this.permissions = other.permissions : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
