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

  static const K_PERMISSIONS = 'permissions';

  static const CLASS = 'ModelConnectionsRelDef';

  @override
  String get $class => CLASS;

  ModelConnectionPermissions? _permissions;

  //
  //
  //

  ModelConnectionsRelDef.empty();

  //
  //
  //

  factory ModelConnectionsRelDef({
    ModelConnectionPermissions? permissions,
  }) {
    return ModelConnectionsRelDef.b(
      permissions: permissions,
    );
  }

  //
  //
  //

  ModelConnectionsRelDef.b({
    ModelConnectionPermissions? permissions,
  }) {
    this._permissions = permissions;
  }

  //
  //
  //

  factory ModelConnectionsRelDef.from(
    Model? other,
  ) {
    return ModelConnectionsRelDef.fromJson(
      letAs<GenericModel>(other)?.data ?? other?.toJson(),
    );
  }

  //
  //
  //

  static ModelConnectionsRelDef? fromOrNull(
    Model? other,
  ) {
    return other != null ? ModelConnectionsRelDef.from(other) : null;
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
        return ModelConnectionsRelDef.empty();
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
      return ModelConnectionsRelDef.empty()
        ..$permissions = otherData?[K_PERMISSIONS];
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
      if (uri != null && uri.path == CLASS) {
        return ModelConnectionsRelDef.fromJson(uri.queryParameters);
      } else {
        return ModelConnectionsRelDef.b();
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
        K_PERMISSIONS: this.$permissions,
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
    return ModelConnectionsRelDef.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelConnectionsRelDef.b()..updateWith(this)) as T;
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
      if (other._permissions != null) {
        this.permissions = other._permissions!;
      }
    }
  }

  //
  //
  //

  // permissions.
  ModelConnectionPermissions? get permissions => this._permissions;
  set permissions(ModelConnectionPermissions? v) => this._permissions = v;
  dynamic get $permissions => this._permissions?.toJson();
  set $permissions(v) => this._permissions = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelConnectionPermissions.fromJson(a) : null;
      }();
}
