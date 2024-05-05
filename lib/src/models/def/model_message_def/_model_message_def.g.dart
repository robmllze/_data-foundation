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

  static const K_MESSAGE = 'message';
  static const K_RECEIVER_PIDS = 'receiver_pids';
  static const K_RELATIONSHIP_ID = 'relationship_id';
  static const K_SENDER_PID = 'sender_pid';

  static const CLASS = 'ModelMessageDef';

  @override
  String get $class => CLASS;

  String? _message;
  Set<String>? _receiverPids;
  String? _relationshipId;
  String? _senderPid;

  //
  //
  //

  ModelMessageDef.empty();

  //
  //
  //

  factory ModelMessageDef({
    String? message,
    Set<String>? receiverPids,
    required String relationshipId,
    required String senderPid,
  }) {
    return ModelMessageDef.b(
      message: message,
      receiverPids: receiverPids,
      relationshipId: relationshipId,
      senderPid: senderPid,
    );
  }

  //
  //
  //

  ModelMessageDef.b({
    String? message,
    Set<String>? receiverPids,
    String? relationshipId,
    String? senderPid,
  }) {
    assert(relationshipId != null);
    assert(senderPid != null);
    this._message = message;
    this._receiverPids = receiverPids;
    this._relationshipId = relationshipId;
    this._senderPid = senderPid;
  }

  //
  //
  //

  factory ModelMessageDef.from(
    Model? other,
  ) {
    return ModelMessageDef.fromJson(
      letAs<GenericModel>(other)?.data ?? other?.toJson(),
    );
  }

  //
  //
  //

  static ModelMessageDef? fromOrNull(
    Model? other,
  ) {
    return other != null ? ModelMessageDef.from(other) : null;
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
        return ModelMessageDef.empty();
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
      return ModelMessageDef.empty()
        ..$message = otherData?[K_MESSAGE]
        ..$receiverPids = otherData?[K_RECEIVER_PIDS]
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

  factory ModelMessageDef.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelMessageDef.fromJson(uri.queryParameters);
      } else {
        return ModelMessageDef.b();
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
        K_MESSAGE: this.$message,
        K_RECEIVER_PIDS: this.$receiverPids,
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
    return ModelMessageDef.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelMessageDef.b()..updateWith(this)) as T;
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
      if (other._message != null) {
        this.message = other._message!;
      }
      if (other._receiverPids != null) {
        this.receiverPids = other._receiverPids!;
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

  // message.
  String? get message => this._message;
  set message(String? v) => this._message = v;
  dynamic get $message => this._message?.toString().trim().nullIfEmpty;
  set $message(v) => this._message = v?.toString().trim().nullIfEmpty;

  // receiverPids.
  Set<String>? get receiverPids => this._receiverPids;
  set receiverPids(Set<String>? v) => this._receiverPids = v;
  dynamic get $receiverPids => this
      ._receiverPids
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  set $receiverPids(v) => this._receiverPids = letSet(v)
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();

  // relationshipId.
  String get relationshipId => this._relationshipId!;
  set relationshipId(String v) => this._relationshipId = v;
  dynamic get $relationshipId =>
      (this._relationshipId?.toString().trim().nullIfEmpty)!;
  set $relationshipId(v) =>
      this._relationshipId = v?.toString().trim().nullIfEmpty;

  // senderPid.
  String get senderPid => this._senderPid!;
  set senderPid(String v) => this._senderPid = v;
  dynamic get $senderPid => (this._senderPid?.toString().trim().nullIfEmpty)!;
  set $senderPid(v) => this._senderPid = v?.toString().trim().nullIfEmpty;
}
