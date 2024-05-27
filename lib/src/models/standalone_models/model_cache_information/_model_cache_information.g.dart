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

part of 'model_cache_information.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelCacheInformation extends _ModelCacheInformation {
  //
  //
  //

  static const K_FILES = 'files';

  static const CLASS = 'ModelCacheInformation';

  @override
  String get $class => CLASS;

  Set<ModelFileEntry>? files;

  //
  //
  //

  ModelCacheInformation.empty();

  //
  //
  //

  factory ModelCacheInformation({
    required Set<ModelFileEntry> files,
  }) {
    return ModelCacheInformation.b(
      files: files,
    );
  }

  //
  //
  //

  ModelCacheInformation.b({
    this.files,
  }) {
    assert(files != null);
  }

  //
  //
  //

  factory ModelCacheInformation.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelCacheInformation.from: $e');
      rethrow;
    }
  }

  static ModelCacheInformation? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelCacheInformation.of(
    ModelCacheInformation other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelCacheInformation.of: $e');
      rethrow;
    }
  }

  static ModelCacheInformation? ofOrNull(
    ModelCacheInformation? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelCacheInformation.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelCacheInformation.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelCacheInformation? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelCacheInformation.fromJson(decoded);
      } else {
        return ModelCacheInformation.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelCacheInformation.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelCacheInformation.fromJson: $e');
      rethrow;
    }
  }

  static ModelCacheInformation? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelCacheInformation.empty()..$files = otherData?[K_FILES];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelCacheInformation.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelCacheInformation.fromUri: $e');
      rethrow;
    }
  }

  static ModelCacheInformation? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelCacheInformation.fromJson(uri.queryParameters);
      } else {
        return ModelCacheInformation.empty();
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
        K_FILES: this.$files,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelCacheInformation.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelCacheInformation.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelCacheInformation.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelCacheInformation.fromJson(otherData);
      if (other.files != null) {
        this.files = other.files!;
      }
    }
  }

  //
  //
  //

  // files.
  Set<ModelFileEntry> get filesField => this.files!;
  set filesField(Set<ModelFileEntry> v) => this.files = v;
  @protected
  dynamic get $files => this
      .files
      ?.map(
        (p0) => p0?.toJson(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $files(v) => this.files = letSet(v)
      ?.map(
        (p0) => () {
          final a = letMap<String, dynamic>(p0);
          return a != null ? ModelFileEntry.fromJson(a) : null;
        }(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toSet()
      .cast();
}
