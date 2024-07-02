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

part of 'model_registration.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelRegistration extends _ModelRegistration {
  //
  //
  //

  static const K_ID = 'id';
  static const K_REGISTRANT_PID = 'registrantPid';
  static const K_REGISTERED_AT = 'registeredAt';
  static const K_IPV_4_ADDRESS = 'ipv4Address';
  static const K_LOCATION = 'location';

  static const CLASS = 'ModelRegistration';

  @override
  String get $class => CLASS;

  String? id;
  String? registrantPid;
  DateTime? registeredAt;
  String? ipv4Address;
  ModelLocation? location;

  //
  //
  //

  ModelRegistration.empty();

  //
  //
  //

  factory ModelRegistration({
    String? id,
    String? registrantPid,
    DateTime? registeredAt,
    String? ipv4Address,
    ModelLocation? location,
  }) {
    return ModelRegistration.b(
      id: id,
      registrantPid: registrantPid,
      registeredAt: registeredAt,
      ipv4Address: ipv4Address,
      location: location,
    );
  }

  //
  //
  //

  ModelRegistration.b({
    this.id,
    this.registrantPid,
    this.registeredAt,
    this.ipv4Address,
    this.location,
  }) {
    assert(this.id != null);
    assert(this.registrantPid != null);
    assert(this.registeredAt != null);
    assert(this.ipv4Address != null);
    assert(this.location != null);
  }

  //
  //
  //

  factory ModelRegistration.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelRegistration.from: $e');
      rethrow;
    }
  }

  static ModelRegistration? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelRegistration.of(
    ModelRegistration other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelRegistration.of: $e');
      rethrow;
    }
  }

  static ModelRegistration? ofOrNull(
    ModelRegistration? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelRegistration.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelRegistration.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelRegistration? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelRegistration.fromJson(decoded);
      } else {
        return ModelRegistration.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelRegistration.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelRegistration.fromJson: $e');
      rethrow;
    }
  }

  static ModelRegistration? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelRegistration.empty()
        ..$id = otherData?[K_ID]
        ..$registrantPid = otherData?[K_REGISTRANT_PID]
        ..$registeredAt = otherData?[K_REGISTERED_AT]
        ..$ipv4Address = otherData?[K_IPV_4_ADDRESS]
        ..$location = otherData?[K_LOCATION];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelRegistration.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelRegistration.fromUri: $e');
      rethrow;
    }
  }

  static ModelRegistration? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelRegistration.fromJson(uri.queryParameters);
      } else {
        return ModelRegistration.empty();
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
        K_ID: this.$id,
        K_REGISTRANT_PID: this.$registrantPid,
        K_REGISTERED_AT: this.$registeredAt,
        K_IPV_4_ADDRESS: this.$ipv4Address,
        K_LOCATION: this.$location,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelRegistration.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelRegistration.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelRegistration.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelRegistration.fromJson(otherData);
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.registrantPid != null) {
        this.registrantPid = other.registrantPid!;
      }
      if (other.registeredAt != null) {
        this.registeredAt = other.registeredAt!;
      }
      if (other.ipv4Address != null) {
        this.ipv4Address = other.ipv4Address!;
      }
      if (other.location != null) {
        this.location = other.location!;
      }
    }
  }

  //
  //
  //

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

  // registrantPid.
  String? get registrantPidField => this.registrantPid;
  set registrantPidField(String? v) => this.registrantPid = v;
  @protected
  dynamic get $registrantPid =>
      this.registrantPid?.toString().trim().nullIfEmpty;
  @protected
  set $registrantPid(v) =>
      this.registrantPid = v?.toString().trim().nullIfEmpty;

  // registeredAt.
  DateTime? get registeredAtField => this.registeredAt;
  set registeredAtField(DateTime? v) => this.registeredAt = v;
  @protected
  dynamic get $registeredAt => this.registeredAt?.toUtc()?.toIso8601String();
  @protected
  set $registeredAt(v) => this.registeredAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();

  // ipv4Address.
  String? get ipv4AddressField => this.ipv4Address;
  set ipv4AddressField(String? v) => this.ipv4Address = v;
  @protected
  dynamic get $ipv4Address => this.ipv4Address?.toString().trim().nullIfEmpty;
  @protected
  set $ipv4Address(v) => this.ipv4Address = v?.toString().trim().nullIfEmpty;

  // location.
  ModelLocation? get locationField => this.location;
  set locationField(ModelLocation? v) => this.location = v;
  @protected
  dynamic get $location => this.location?.toJson();
  @protected
  set $location(v) => this.location = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelLocation.fromJson(a) : null;
      }();
}