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

part of 'model_connection_request_def.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelConnectionRequestDef extends Model {
  //
  //
  //

  static const K_RECEIVER_PID = 'receiver_pid';
  static const K_RELATIONSHIP_ID = 'relationship_id';
  static const K_SENDER_PID = 'sender_pid';

  static const CLASS = 'ModelConnectionRequestDef';

  @override
  String get $class => CLASS;

  String? _receiverPid;
  String? _relationshipId;
  String? _senderPid;

  //
  //
  //

  ModelConnectionRequestDef.empty();

  //
  //
  //

  factory ModelConnectionRequestDef({
    String? receiverPid,
    String? relationshipId,
    String? senderPid,
  }) {
    return ModelConnectionRequestDef.b(
      receiverPid: receiverPid,
      relationshipId: relationshipId,
      senderPid: senderPid,
    );
  }

  //
  //
  //

  ModelConnectionRequestDef.b({
    String? receiverPid,
    String? relationshipId,
    String? senderPid,
  }) {
    this._receiverPid = receiverPid;
    this._relationshipId = relationshipId;
    this._senderPid = senderPid;
  }

  //
  //
  //

  factory ModelConnectionRequestDef.from(
    Model? other,
  ) {
    return ModelConnectionRequestDef.fromJson(
      letAs<GenericModel>(other)?.data ?? other?.toJson(),
    );
  }

  //
  //
  //

  static ModelConnectionRequestDef? fromOrNull(
    Model? other,
  ) {
    return other != null ? ModelConnectionRequestDef.from(other) : null;
  }

  //
  //
  //

  factory ModelConnectionRequestDef.of(
    ModelConnectionRequestDef? other,
  ) {
    return ModelConnectionRequestDef.fromJson(other?.toJson());
  }

  //
  //
  //

  factory ModelConnectionRequestDef.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelConnectionRequestDef.fromJson(decoded);
      } else {
        return ModelConnectionRequestDef.empty();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelConnectionRequestDef.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelConnectionRequestDef.empty()
        ..$receiverPid = otherData?[K_RECEIVER_PID]
        ..$relationshipId = otherData?[K_RELATIONSHIP_ID]
        ..$senderPid = otherData?[K_SENDER_PID];
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory ModelConnectionRequestDef.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelConnectionRequestDef.fromJson(uri.queryParameters);
      } else {
        return ModelConnectionRequestDef.b();
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
        K_RECEIVER_PID: this.$receiverPid,
        K_RELATIONSHIP_ID: this.$relationshipId,
        K_SENDER_PID: this.$senderPid,
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
    return ModelConnectionRequestDef.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelConnectionRequestDef.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelConnectionRequestDef.fromJson(otherData);
      if (other._receiverPid != null) {
        this.receiverPid = other._receiverPid!;
      }
      if (other._relationshipId != null) {
        this.relationshipId = other._relationshipId!;
      }
      if (other._senderPid != null) {
        this.senderPid = other._senderPid!;
      }
    }
  }

  //
  //
  //

  // receiverPid.
  String? get receiverPid => this._receiverPid;
  set receiverPid(String? v) => this._receiverPid = v;
  dynamic get $receiverPid => this._receiverPid?.toString().trim().nullIfEmpty;
  set $receiverPid(v) => this._receiverPid = v?.toString().trim().nullIfEmpty;

  // relationshipId.
  String? get relationshipId => this._relationshipId;
  set relationshipId(String? v) => this._relationshipId = v;
  dynamic get $relationshipId =>
      this._relationshipId?.toString().trim().nullIfEmpty;
  set $relationshipId(v) =>
      this._relationshipId = v?.toString().trim().nullIfEmpty;

  // senderPid.
  String? get senderPid => this._senderPid;
  set senderPid(String? v) => this._senderPid = v;
  dynamic get $senderPid => this._senderPid?.toString().trim().nullIfEmpty;
  set $senderPid(v) => this._senderPid = v?.toString().trim().nullIfEmpty;
}
