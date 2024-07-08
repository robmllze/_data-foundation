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

part of 'model_enum.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelEnum extends _ModelEnum {
  //
  //
  //

  static const K_NAME = 'name';

  static const CLASS = 'ModelEnum';

  @override
  String get $class => CLASS;

  String? name;

  //
  //
  //

  ModelEnum.empty();

  //
  //
  //

  factory ModelEnum({
    required String name,
  }) {
    return ModelEnum.b(
      name: name,
    );
  }

  //
  //
  //

  ModelEnum.b({
    this.name,
  }) {
    assert(this.name != null);
  }

  //
  //
  //

  factory ModelEnum.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelEnum.from: $e');
      rethrow;
    }
  }

  static ModelEnum? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelEnum.of(
    ModelEnum other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelEnum.of: $e');
      rethrow;
    }
  }

  static ModelEnum? ofOrNull(
    ModelEnum? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelEnum.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelEnum.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelEnum? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelEnum.fromJson(decoded);
      } else {
        return ModelEnum.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelEnum.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelEnum.fromJson: $e');
      rethrow;
    }
  }

  static ModelEnum? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelEnum.empty()..$name = otherData?[K_NAME];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelEnum.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelEnum.fromUri: $e');
      rethrow;
    }
  }

  static ModelEnum? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelEnum.fromJson(uri.queryParameters);
      } else {
        return ModelEnum.empty();
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
        K_NAME: this.$name,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelEnum.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelEnum.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelEnum.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelEnum.fromJson(otherData);
      if (other.name != null) {
        this.name = other.name!;
      }
    }
  }

  //
  //
  //

  // name.
  String get nameField => this.name!;
  set nameField(String v) => this.name = v;
  @protected
  dynamic get $name => this.name?.toString().trim().nullIfEmpty;
  @protected
  set $name(v) => this.name = v?.toString().trim().nullIfEmpty;
}
