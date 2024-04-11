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

part of 'model_connection_permissions.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelConnectionPermissions extends Model {
  //
  //
  //

  static const CLASS = 'ModelConnectionPermissions';
  static const MODEL_ID = 'model_connection_permissions';

  static const K_EDITOR_PERMIT = 'editor_permit';
  static const K_EDITOR_REQUEST = 'editor_request';
  static const K_ID = 'id';
  static const K_MESSAGING_PERMIT = 'messaging_permit';
  static const K_MESSAGING_REQUEST = 'messaging_request';
  static const K_MINIMAL_PERMIT = 'minimal_permit';
  static const K_MINIMAL_REQUEST = 'minimal_request';
  static const K_NOTIFICATION_PERMIT = 'notification_permit';
  static const K_NOTIFICATION_REQUEST = 'notification_request';
  static const K_READ_ONLY_PERMIT = 'read_only_permit';
  static const K_READ_ONLY_REQUEST = 'read_only_request';

  bool? editorPermit;
  bool? editorRequest;
  bool? messagingPermit;
  bool? messagingRequest;
  bool? minimalPermit;
  bool? minimalRequest;
  bool? notificationPermit;
  bool? notificationRequest;
  bool? readOnlyPermit;
  bool? readOnlyRequest;

  //
  //
  //

  ModelConnectionPermissions({
    String? id,
    this.editorPermit,
    this.editorRequest,
    this.messagingPermit,
    this.messagingRequest,
    this.minimalPermit,
    this.minimalRequest,
    this.notificationPermit,
    this.notificationRequest,
    this.readOnlyPermit,
    this.readOnlyRequest,
  }) {
    this.id = id;
  }

  //
  //
  //

  ModelConnectionPermissions.unsafe({
    String? id,
    this.editorPermit,
    this.editorRequest,
    this.messagingPermit,
    this.messagingRequest,
    this.minimalPermit,
    this.minimalRequest,
    this.notificationPermit,
    this.notificationRequest,
    this.readOnlyPermit,
    this.readOnlyRequest,
  }) {
    this.id = id;
  }

  //
  //
  //

  factory ModelConnectionPermissions.from(
    Model? other,
  ) {
    return ModelConnectionPermissions.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory ModelConnectionPermissions.of(
    ModelConnectionPermissions? other,
  ) {
    return ModelConnectionPermissions.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelConnectionPermissions.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelConnectionPermissions.fromJson(decoded);
      } else {
        return ModelConnectionPermissions.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelConnectionPermissions.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelConnectionPermissions.unsafe(
        editorPermit: letBool(otherData?[K_EDITOR_PERMIT]),
        editorRequest: letBool(otherData?[K_EDITOR_REQUEST]),
        id: otherData?[K_ID]?.toString().trim().nullIfEmpty,
        messagingPermit: letBool(otherData?[K_MESSAGING_PERMIT]),
        messagingRequest: letBool(otherData?[K_MESSAGING_REQUEST]),
        minimalPermit: letBool(otherData?[K_MINIMAL_PERMIT]),
        minimalRequest: letBool(otherData?[K_MINIMAL_REQUEST]),
        notificationPermit: letBool(otherData?[K_NOTIFICATION_PERMIT]),
        notificationRequest: letBool(otherData?[K_NOTIFICATION_REQUEST]),
        readOnlyPermit: letBool(otherData?[K_READ_ONLY_PERMIT]),
        readOnlyRequest: letBool(otherData?[K_READ_ONLY_REQUEST]),
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelConnectionPermissions.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == MODEL_ID) {
        return ModelConnectionPermissions.fromJson(uri.queryParameters);
      } else {
        return ModelConnectionPermissions.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  static ModelConnectionPermissions? fromPool({
    required Iterable<ModelConnectionPermissions>? pool,
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
        K_EDITOR_PERMIT: editorPermit,
        K_EDITOR_REQUEST: editorRequest,
        K_ID: id?.toString().trim().nullIfEmpty,
        K_MESSAGING_PERMIT: messagingPermit,
        K_MESSAGING_REQUEST: messagingRequest,
        K_MINIMAL_PERMIT: minimalPermit,
        K_MINIMAL_REQUEST: minimalRequest,
        K_NOTIFICATION_PERMIT: notificationPermit,
        K_NOTIFICATION_REQUEST: notificationRequest,
        K_READ_ONLY_PERMIT: readOnlyPermit,
        K_READ_ONLY_REQUEST: readOnlyRequest,
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
    return ModelConnectionPermissions.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelConnectionPermissions.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelConnectionPermissions.fromJson(otherData);
      other.editorPermit != null
          ? this.editorPermit = other.editorPermit
          : null;
      other.editorRequest != null
          ? this.editorRequest = other.editorRequest
          : null;
      other.id != null ? this.id = other.id : null;
      other.messagingPermit != null
          ? this.messagingPermit = other.messagingPermit
          : null;
      other.messagingRequest != null
          ? this.messagingRequest = other.messagingRequest
          : null;
      other.minimalPermit != null
          ? this.minimalPermit = other.minimalPermit
          : null;
      other.minimalRequest != null
          ? this.minimalRequest = other.minimalRequest
          : null;
      other.notificationPermit != null
          ? this.notificationPermit = other.notificationPermit
          : null;
      other.notificationRequest != null
          ? this.notificationRequest = other.notificationRequest
          : null;
      other.readOnlyPermit != null
          ? this.readOnlyPermit = other.readOnlyPermit
          : null;
      other.readOnlyRequest != null
          ? this.readOnlyRequest = other.readOnlyRequest
          : null;
    }
  }

  //
  //
  //

  String get modelId => MODEL_ID;
}
