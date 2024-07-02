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

class ModelRelRemovedDef extends _ModelRelRemovedDef {
  //
  //
  //

  static const K_RELATIONSHIP_ID = 'relationshipId';
  static const K_SENDER_PID = 'senderPid';
  static const K_RECEIVER_PID = 'receiverPid';
  static const K_MESSAGE = 'message';

  static const CLASS = 'ModelRelRemovedDef';

  @override
  String get $class => CLASS;

  String? relationshipId;
  String? senderPid;
  String? receiverPid;
  String? message;

  //
  //
  //

  ModelRelRemovedDef.empty();

  //
  //
  //

  factory ModelRelRemovedDef({
    String? relationshipId,
    String? senderPid,
    String? receiverPid,
    String? message,
  }) {
    return ModelRelRemovedDef.b(
      relationshipId: relationshipId,
      senderPid: senderPid,
      receiverPid: receiverPid,
      message: message,
    );
  }

  //
  //
  //

  ModelRelRemovedDef.b({
    this.relationshipId,
    this.senderPid,
    this.receiverPid,
    this.message,
  }) {}

  //
  //
  //

  factory ModelRelRemovedDef.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelRelRemovedDef.from: $e');
      rethrow;
    }
  }

  static ModelRelRemovedDef? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelRelRemovedDef.of(
    ModelRelRemovedDef other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelRelRemovedDef.of: $e');
      rethrow;
    }
  }

  static ModelRelRemovedDef? ofOrNull(
    ModelRelRemovedDef? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelRelRemovedDef.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelRelRemovedDef.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelRelRemovedDef? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelRelRemovedDef.fromJson(decoded);
      } else {
        return ModelRelRemovedDef.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelRelRemovedDef.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelRelRemovedDef.fromJson: $e');
      rethrow;
    }
  }

  static ModelRelRemovedDef? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelRelRemovedDef.empty()
        ..$relationshipId = otherData?[K_RELATIONSHIP_ID]
        ..$senderPid = otherData?[K_SENDER_PID]
        ..$receiverPid = otherData?[K_RECEIVER_PID]
        ..$message = otherData?[K_MESSAGE];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelRelRemovedDef.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelRelRemovedDef.fromUri: $e');
      rethrow;
    }
  }

  static ModelRelRemovedDef? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelRelRemovedDef.fromJson(uri.queryParameters);
      } else {
        return ModelRelRemovedDef.empty();
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
        K_RELATIONSHIP_ID: this.$relationshipId,
        K_SENDER_PID: this.$senderPid,
        K_RECEIVER_PID: this.$receiverPid,
        K_MESSAGE: this.$message,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelRelRemovedDef.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelRelRemovedDef.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelRelRemovedDef.b()..updateWith(this)) as T;
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
      if (other.relationshipId != null) {
        this.relationshipId = other.relationshipId!;
      }
      if (other.senderPid != null) {
        this.senderPid = other.senderPid!;
      }
      if (other.receiverPid != null) {
        this.receiverPid = other.receiverPid!;
      }
      if (other.message != null) {
        this.message = other.message!;
      }
    }
  }

  //
  //
  //

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

  // receiverPid.
  String? get receiverPidField => this.receiverPid;
  set receiverPidField(String? v) => this.receiverPid = v;
  @protected
  dynamic get $receiverPid => this.receiverPid?.toString().trim().nullIfEmpty;
  @protected
  set $receiverPid(v) => this.receiverPid = v?.toString().trim().nullIfEmpty;

  // message.
  String? get messageField => this.message;
  set messageField(String? v) => this.message = v;
  @protected
  dynamic get $message => this.message?.toString().trim().nullIfEmpty;
  @protected
  set $message(v) => this.message = v?.toString().trim().nullIfEmpty;
}
