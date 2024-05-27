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

part of 'model_screen_configuration.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelScreenConfiguration extends _ModelScreenConfiguration {
  //
  //
  //

  static const K_ARGUMENTS = 'arguments';
  static const K_IS_ACCESSIBLE_ONLY_IF_LOGGED_IN =
      'is_accessible_only_if_logged_in';
  static const K_IS_ACCESSIBLE_ONLY_IF_LOGGED_IN_AND_VERIFIED =
      'is_accessible_only_if_logged_in_and_verified';
  static const K_IS_ACCESSIBLE_ONLY_IF_LOGGED_OUT =
      'is_accessible_only_if_logged_out';
  static const K_IS_REDIRECTABLE = 'is_redirectable';
  static const K_MAKEUP = 'makeup';
  static const K_PATH = 'path';
  static const K_PREVIOUS_CONFIGURATION = 'previous_configuration';
  static const K_TITLE = 'title';

  static const CLASS = 'ModelScreenConfiguration';

  @override
  String get $class => CLASS;

  Map<dynamic, dynamic>? arguments;
  bool? isAccessibleOnlyIfLoggedIn;
  bool? isAccessibleOnlyIfLoggedInAndVerified;
  bool? isAccessibleOnlyIfLoggedOut;
  bool? isRedirectable;
  dynamic makeup;
  String? path;
  ModelScreenConfiguration? previousConfiguration;
  String? title;

  //
  //
  //

  ModelScreenConfiguration.empty();

  //
  //
  //

  factory ModelScreenConfiguration({
    Map<dynamic, dynamic>? arguments,
    bool? isAccessibleOnlyIfLoggedIn,
    bool? isAccessibleOnlyIfLoggedInAndVerified,
    bool? isAccessibleOnlyIfLoggedOut,
    bool? isRedirectable,
    dynamic makeup,
    String? path,
    ModelScreenConfiguration? previousConfiguration,
    String? title,
  }) {
    return ModelScreenConfiguration.b(
      arguments: arguments,
      isAccessibleOnlyIfLoggedIn: isAccessibleOnlyIfLoggedIn,
      isAccessibleOnlyIfLoggedInAndVerified:
          isAccessibleOnlyIfLoggedInAndVerified,
      isAccessibleOnlyIfLoggedOut: isAccessibleOnlyIfLoggedOut,
      isRedirectable: isRedirectable,
      makeup: makeup,
      path: path,
      previousConfiguration: previousConfiguration,
      title: title,
    );
  }

  //
  //
  //

  ModelScreenConfiguration.b({
    this.arguments,
    this.isAccessibleOnlyIfLoggedIn,
    this.isAccessibleOnlyIfLoggedInAndVerified,
    this.isAccessibleOnlyIfLoggedOut,
    this.isRedirectable,
    this.makeup,
    this.path,
    this.previousConfiguration,
    this.title,
  }) {}

  //
  //
  //

  factory ModelScreenConfiguration.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelScreenConfiguration.from: $e');
      rethrow;
    }
  }

  static ModelScreenConfiguration? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelScreenConfiguration.of(
    ModelScreenConfiguration other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelScreenConfiguration.of: $e');
      rethrow;
    }
  }

  static ModelScreenConfiguration? ofOrNull(
    ModelScreenConfiguration? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelScreenConfiguration.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelScreenConfiguration.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelScreenConfiguration? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelScreenConfiguration.fromJson(decoded);
      } else {
        return ModelScreenConfiguration.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelScreenConfiguration.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelScreenConfiguration.fromJson: $e');
      rethrow;
    }
  }

  static ModelScreenConfiguration? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelScreenConfiguration.empty()
        ..$arguments = otherData?[K_ARGUMENTS]
        ..$isAccessibleOnlyIfLoggedIn =
            otherData?[K_IS_ACCESSIBLE_ONLY_IF_LOGGED_IN]
        ..$isAccessibleOnlyIfLoggedInAndVerified =
            otherData?[K_IS_ACCESSIBLE_ONLY_IF_LOGGED_IN_AND_VERIFIED]
        ..$isAccessibleOnlyIfLoggedOut =
            otherData?[K_IS_ACCESSIBLE_ONLY_IF_LOGGED_OUT]
        ..$isRedirectable = otherData?[K_IS_REDIRECTABLE]
        ..$makeup = otherData?[K_MAKEUP]
        ..$path = otherData?[K_PATH]
        ..$previousConfiguration = otherData?[K_PREVIOUS_CONFIGURATION]
        ..$title = otherData?[K_TITLE];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelScreenConfiguration.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelScreenConfiguration.fromUri: $e');
      rethrow;
    }
  }

  static ModelScreenConfiguration? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelScreenConfiguration.fromJson(uri.queryParameters);
      } else {
        return ModelScreenConfiguration.empty();
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
        K_ARGUMENTS: this.$arguments,
        K_IS_ACCESSIBLE_ONLY_IF_LOGGED_IN: this.$isAccessibleOnlyIfLoggedIn,
        K_IS_ACCESSIBLE_ONLY_IF_LOGGED_IN_AND_VERIFIED:
            this.$isAccessibleOnlyIfLoggedInAndVerified,
        K_IS_ACCESSIBLE_ONLY_IF_LOGGED_OUT: this.$isAccessibleOnlyIfLoggedOut,
        K_IS_REDIRECTABLE: this.$isRedirectable,
        K_MAKEUP: this.$makeup,
        K_PATH: this.$path,
        K_PREVIOUS_CONFIGURATION: this.$previousConfiguration,
        K_TITLE: this.$title,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelScreenConfiguration.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelScreenConfiguration.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelScreenConfiguration.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelScreenConfiguration.fromJson(otherData);
      if (other.arguments != null) {
        this.arguments = other.arguments!;
      }
      if (other.isAccessibleOnlyIfLoggedIn != null) {
        this.isAccessibleOnlyIfLoggedIn = other.isAccessibleOnlyIfLoggedIn!;
      }
      if (other.isAccessibleOnlyIfLoggedInAndVerified != null) {
        this.isAccessibleOnlyIfLoggedInAndVerified =
            other.isAccessibleOnlyIfLoggedInAndVerified!;
      }
      if (other.isAccessibleOnlyIfLoggedOut != null) {
        this.isAccessibleOnlyIfLoggedOut = other.isAccessibleOnlyIfLoggedOut!;
      }
      if (other.isRedirectable != null) {
        this.isRedirectable = other.isRedirectable!;
      }
      if (other.makeup != null) {
        this.makeup = other.makeup!;
      }
      if (other.path != null) {
        this.path = other.path!;
      }
      if (other.previousConfiguration != null) {
        this.previousConfiguration = other.previousConfiguration!;
      }
      if (other.title != null) {
        this.title = other.title!;
      }
    }
  }

  //
  //
  //

  // arguments.
  Map<dynamic, dynamic>? get argumentsField => this.arguments;
  set argumentsField(Map<dynamic, dynamic>? v) => this.arguments = v;
  @protected
  dynamic get $arguments => this
      .arguments
      ?.map(
        (p0, p1) => MapEntry(
          p0,
          p1,
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $arguments(v) => this.arguments = letMap(v)
      ?.map(
        (p0, p1) => MapEntry(
          p0,
          p1,
        ),
      )
      .nonNulls
      .nullIfEmpty
      ?.cast();

  // isAccessibleOnlyIfLoggedIn.
  bool? get isAccessibleOnlyIfLoggedInField => this.isAccessibleOnlyIfLoggedIn;
  set isAccessibleOnlyIfLoggedInField(bool? v) =>
      this.isAccessibleOnlyIfLoggedIn = v;
  @protected
  dynamic get $isAccessibleOnlyIfLoggedIn => this.isAccessibleOnlyIfLoggedIn;
  @protected
  set $isAccessibleOnlyIfLoggedIn(v) =>
      this.isAccessibleOnlyIfLoggedIn = letBool(v);

  // isAccessibleOnlyIfLoggedInAndVerified.
  bool? get isAccessibleOnlyIfLoggedInAndVerifiedField =>
      this.isAccessibleOnlyIfLoggedInAndVerified;
  set isAccessibleOnlyIfLoggedInAndVerifiedField(bool? v) =>
      this.isAccessibleOnlyIfLoggedInAndVerified = v;
  @protected
  dynamic get $isAccessibleOnlyIfLoggedInAndVerified =>
      this.isAccessibleOnlyIfLoggedInAndVerified;
  @protected
  set $isAccessibleOnlyIfLoggedInAndVerified(v) =>
      this.isAccessibleOnlyIfLoggedInAndVerified = letBool(v);

  // isAccessibleOnlyIfLoggedOut.
  bool? get isAccessibleOnlyIfLoggedOutField =>
      this.isAccessibleOnlyIfLoggedOut;
  set isAccessibleOnlyIfLoggedOutField(bool? v) =>
      this.isAccessibleOnlyIfLoggedOut = v;
  @protected
  dynamic get $isAccessibleOnlyIfLoggedOut => this.isAccessibleOnlyIfLoggedOut;
  @protected
  set $isAccessibleOnlyIfLoggedOut(v) =>
      this.isAccessibleOnlyIfLoggedOut = letBool(v);

  // isRedirectable.
  bool? get isRedirectableField => this.isRedirectable;
  set isRedirectableField(bool? v) => this.isRedirectable = v;
  @protected
  dynamic get $isRedirectable => this.isRedirectable;
  @protected
  set $isRedirectable(v) => this.isRedirectable = letBool(v);

  // makeup.
  dynamic get makeupField => this.makeup;
  set makeupField(dynamic v) => this.makeup = v;
  @protected
  dynamic get $makeup => this.makeup;
  @protected
  set $makeup(v) => this.makeup = v;

  // path.
  String? get pathField => this.path;
  set pathField(String? v) => this.path = v;
  @protected
  dynamic get $path => this.path?.toString().trim().nullIfEmpty;
  @protected
  set $path(v) => this.path = v?.toString().trim().nullIfEmpty;

  // previousConfiguration.
  ModelScreenConfiguration? get previousConfigurationField =>
      this.previousConfiguration;
  set previousConfigurationField(ModelScreenConfiguration? v) =>
      this.previousConfiguration = v;
  @protected
  dynamic get $previousConfiguration => this.previousConfiguration?.toJson();
  @protected
  set $previousConfiguration(v) => this.previousConfiguration = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelScreenConfiguration.fromJson(a) : null;
      }();

  // title.
  String? get titleField => this.title;
  set titleField(String? v) => this.title = v;
  @protected
  dynamic get $title => this.title?.toString().trim().nullIfEmpty;
  @protected
  set $title(v) => this.title = v?.toString().trim().nullIfEmpty;
}
