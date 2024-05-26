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

class ModelMessageDef extends _ModelMessageDef {
  //
  //
  //

  static const K_MESSAGE = 'message';
  static const K_RECEIVER_PID = 'receiver_pid';
  static const K_RELATIONSHIP_ID = 'relationship_id';
  static const K_SENDER_PID = 'sender_pid';

  static const CLASS = 'ModelMessageDef';

  @override
  String get $class => CLASS;

  String? message;
  String? receiverPid;
  String? relationshipId;
  String? senderPid;

  //
  //
  //

  ModelMessageDef.empty();

  //
  //
  //

  factory ModelMessageDef({
    String? message,
    String? receiverPid,
    String? relationshipId,
    String? senderPid,
  }) {
    return ModelMessageDef.b(
      message: message,
      receiverPid: receiverPid,
      relationshipId: relationshipId,
      senderPid: senderPid,
    );
  }

  //
  //
  //

  ModelMessageDef.b({
    this.message,
    this.receiverPid,
    this.relationshipId,
    this.senderPid,
  }) {}

  //
  //
  //

  factory ModelMessageDef.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelMessageDef? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelMessageDef.of(
    ModelMessageDef other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelMessageDef? ofOrNull(
    ModelMessageDef? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelMessageDef.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelMessageDef? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelMessageDef.fromJson(decoded);
      } else {
        return ModelMessageDef.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelMessageDef.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelMessageDef? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelMessageDef.empty()
        ..$message = otherData?[K_MESSAGE]
        ..$receiverPid = otherData?[K_RECEIVER_PID]
        ..$relationshipId = otherData?[K_RELATIONSHIP_ID]
        ..$senderPid = otherData?[K_SENDER_PID];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelMessageDef.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelMessageDef? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelMessageDef.fromJson(uri.queryParameters);
      } else {
        return ModelMessageDef.b();
      }
    } catch (_) {
      return null;
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
      if (other.message != null) {
        this.message = other.message!;
      }
      if (other.receiverPid != null) {
        this.receiverPid = other.receiverPid!;
      }
      if (other.relationshipId != null) {
        this.relationshipId = other.relationshipId!;
      }
      if (other.senderPid != null) {
        this.senderPid = other.senderPid!;
      }
    }
  }

  //
  //
  //

  // message.
  String? get messageField => this.message;
  set messageField(String? v) => this.message = v;
  @protected
  dynamic get $message => this.message?.toString().trim().nullIfEmpty;
  @protected
  set $message(v) => this.message = v?.toString().trim().nullIfEmpty;

  // receiverPid.
  String? get receiverPidField => this.receiverPid;
  set receiverPidField(String? v) => this.receiverPid = v;
  @protected
  dynamic get $receiverPid => this.receiverPid?.toString().trim().nullIfEmpty;
  @protected
  set $receiverPid(v) => this.receiverPid = v?.toString().trim().nullIfEmpty;

  // relationshipId.
  String? get relationshipIdField => this.relationshipId;
  set relationshipIdField(String? v) => this.relationshipId = v;
  @protected
  dynamic get $relationshipId =>
      this.relationshipId?.toString().trim().nullIfEmpty;
  @protected
  set $relationshipId(v) =>
      this.relationshipId = v?.toString().trim().nullIfEmpty;

  // senderPid.
  String? get senderPidField => this.senderPid;
  set senderPidField(String? v) => this.senderPid = v;
  @protected
  dynamic get $senderPid => this.senderPid?.toString().trim().nullIfEmpty;
  @protected
  set $senderPid(v) => this.senderPid = v?.toString().trim().nullIfEmpty;
}
