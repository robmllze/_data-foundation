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

part of 'model_queryable.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelQueryable extends _ModelQueryable {
  //
  //
  //

  static const K_VALUE = 'value';
  static const K_QUERYABLE_VALUE = 'queryableValue';

  static const CLASS = 'ModelQueryable';

  @override
  String get $class => CLASS;

  String? value;
  String? queryableValue;

  //
  //
  //

  ModelQueryable.empty();

  //
  //
  //

  factory ModelQueryable({
    required String value,
    required String queryableValue,
  }) {
    return ModelQueryable.b(
      value: value,
      queryableValue: queryableValue,
    );
  }

  //
  //
  //

  ModelQueryable.b({
    this.value,
    this.queryableValue,
  }) {
    assert(this.value != null);
    assert(this.queryableValue != null);
  }

  //
  //
  //

  factory ModelQueryable.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelQueryable.from: $e');
      rethrow;
    }
  }

  static ModelQueryable? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelQueryable.of(
    ModelQueryable other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelQueryable.of: $e');
      rethrow;
    }
  }

  static ModelQueryable? ofOrNull(
    ModelQueryable? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelQueryable.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelQueryable.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelQueryable? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelQueryable.fromJson(decoded);
      } else {
        return ModelQueryable.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelQueryable.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelQueryable.fromJson: $e');
      rethrow;
    }
  }

  static ModelQueryable? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelQueryable.empty()
        ..$value = otherData?[K_VALUE]
        ..$queryableValue = otherData?[K_QUERYABLE_VALUE];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelQueryable.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelQueryable.fromUri: $e');
      rethrow;
    }
  }

  static ModelQueryable? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelQueryable.fromJson(uri.queryParameters);
      } else {
        return ModelQueryable.empty();
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
        K_VALUE: this.$value,
        K_QUERYABLE_VALUE: this.$queryableValue,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelQueryable.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelQueryable.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelQueryable.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelQueryable.fromJson(otherData);
      if (other.value != null) {
        this.value = other.value!;
      }
      if (other.queryableValue != null) {
        this.queryableValue = other.queryableValue!;
      }
    }
  }

  //
  //
  //

  // value.
  String get valueField => this.value!;
  set valueField(String v) => this.value = v;
  @protected
  dynamic get $value => this.value?.toString().trim().nullIfEmpty;
  @protected
  set $value(v) => this.value = v?.toString().trim().nullIfEmpty;

  // queryableValue.
  String get queryableValueField => this.queryableValue!;
  set queryableValueField(String v) => this.queryableValue = v;
  @protected
  dynamic get $queryableValue => this
      .queryableValue
      ?.toString()
      .trim()
      .nullIfEmpty
      ?.toLowerCase()
      .replaceAll(r'[^\w]', '');
  @protected
  set $queryableValue(v) => this.queryableValue =
      v?.toString().trim().nullIfEmpty?.toLowerCase().replaceAll(r'[^\w]', '');
}
