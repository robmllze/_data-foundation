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

part of 'model_pubspec.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelPubspec extends _ModelPubspec {
  //
  //
  //

  static const CLASS_NAME = 'ModelPubspec';

  @override
  String get $className => CLASS_NAME;

  final String? name;
  final String? description;
  final String? version;
  final String? publishTo;
  final Map<String, dynamic>? environment;
  final String? environmentSdk;
  final Map<String, dynamic>? dependencies;
  final Map<String, dynamic>? dependencyOverrides;
  final Map<String, dynamic>? devDependencies;
  final Map<String, dynamic>? flutter;

  //
  //
  //

  const ModelPubspec({
    required this.name,
    required this.description,
    required this.version,
    required this.publishTo,
    required this.environment,
    required this.environmentSdk,
    required this.dependencies,
    required this.dependencyOverrides,
    required this.devDependencies,
    required this.flutter,
  });

  const ModelPubspec.c2({
    this.name,
    this.description,
    this.version,
    this.publishTo,
    this.environment,
    this.environmentSdk,
    this.dependencies,
    this.dependencyOverrides,
    this.devDependencies,
    this.flutter,
  });

  factory ModelPubspec.c3({
    String? name,
    String? description,
    String? version,
    String? publishTo,
    Map<String, dynamic>? environment,
    String? environmentSdk,
    Map<String, dynamic>? dependencies,
    Map<String, dynamic>? dependencyOverrides,
    Map<String, dynamic>? devDependencies,
    Map<String, dynamic>? flutter,
  }) {
    assert(name != null);
    assert(description != null);
    assert(version != null);
    assert(publishTo != null);
    assert(environment != null);
    assert(environmentSdk != null);
    assert(dependencies != null);
    assert(dependencyOverrides != null);
    assert(devDependencies != null);
    assert(flutter != null);
    return ModelPubspec(
      name: name,
      description: description,
      version: version,
      publishTo: publishTo,
      environment: environment,
      environmentSdk: environmentSdk,
      dependencies: dependencies,
      dependencyOverrides: dependencyOverrides,
      devDependencies: devDependencies,
      flutter: flutter,
    );
  }

  factory ModelPubspec.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelPubspec.from: $e');
      rethrow;
    }
  }

  static ModelPubspec? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory ModelPubspec.of(
    ModelPubspec other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelPubspec.of: $e');
      rethrow;
    }
  }

  static ModelPubspec? ofOrNull(
    ModelPubspec? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory ModelPubspec.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelPubspec.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelPubspec? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelPubspec.fromJson(decoded);
      } else {
        return const ModelPubspec.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory ModelPubspec.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelPubspec.fromJson: $e');
      rethrow;
    }
  }

  static ModelPubspec? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final name0 = otherData?['name'];
      final name = name0?.toString().trim().nullIfEmpty;
      final description0 = otherData?['description'];
      final description = description0?.toString().trim().nullIfEmpty;
      final version0 = otherData?['version'];
      final version = version0?.toString().trim().nullIfEmpty;
      final publishTo0 = otherData?['publish_to'];
      final publishTo = publishTo0?.toString().trim().nullIfEmpty;
      final environment0 = otherData?['environment'];
      final environment = letMap(environment0)
          ?.map(
            (p0, p1) => MapEntry(
              p0?.toString().trim().nullIfEmpty,
              p1,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final environmentSdk0 = letMap<String, dynamic>(
        letMap<String, dynamic>(
          otherData?['environment']?['sdk'],
        ),
      );
      final environmentSdk = environmentSdk0?.toString().trim().nullIfEmpty;
      final dependencies0 = otherData?['dependencies'];
      final dependencies = letMap(dependencies0)
          ?.map(
            (p0, p1) => MapEntry(
              p0?.toString().trim().nullIfEmpty,
              p1,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final dependencyOverrides0 = otherData?['dependency_overrides'];
      final dependencyOverrides = letMap(dependencyOverrides0)
          ?.map(
            (p0, p1) => MapEntry(
              p0?.toString().trim().nullIfEmpty,
              p1,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final devDependencies0 = otherData?['dev_dependencies'];
      final devDependencies = letMap(devDependencies0)
          ?.map(
            (p0, p1) => MapEntry(
              p0?.toString().trim().nullIfEmpty,
              p1,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final flutter0 = otherData?['flutter'];
      final flutter = letMap(flutter0)
          ?.map(
            (p0, p1) => MapEntry(
              p0?.toString().trim().nullIfEmpty,
              p1,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      return ModelPubspec(
        name: name,
        description: description,
        version: version,
        publishTo: publishTo,
        environment: environment,
        environmentSdk: environmentSdk,
        dependencies: dependencies,
        dependencyOverrides: dependencyOverrides,
        devDependencies: devDependencies,
        flutter: flutter,
      );
    } catch (e) {
      return null;
    }
  }

  factory ModelPubspec.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelPubspec.fromUri: $e');
      rethrow;
    }
  }

  static ModelPubspec? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return ModelPubspec.fromJson(uri.queryParameters);
      } else {
        return const ModelPubspec.c2();
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
      final name0 = this.name?.trim().nullIfEmpty;
      final description0 = this.description?.trim().nullIfEmpty;
      final version0 = this.version?.trim().nullIfEmpty;
      final publishTo0 = this.publishTo?.trim().nullIfEmpty;
      final environment0 = this
          .environment
          ?.map(
            (p0, p1) => MapEntry(
              p0?.trim().nullIfEmpty,
              p1,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final environmentSdk0 = this.environmentSdk?.trim().nullIfEmpty;
      final dependencies0 = this
          .dependencies
          ?.map(
            (p0, p1) => MapEntry(
              p0?.trim().nullIfEmpty,
              p1,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final dependencyOverrides0 = this
          .dependencyOverrides
          ?.map(
            (p0, p1) => MapEntry(
              p0?.trim().nullIfEmpty,
              p1,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final devDependencies0 = this
          .devDependencies
          ?.map(
            (p0, p1) => MapEntry(
              p0?.trim().nullIfEmpty,
              p1,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final flutter0 = this
          .flutter
          ?.map(
            (p0, p1) => MapEntry(
              p0?.trim().nullIfEmpty,
              p1,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final withNulls = mergeMapsDeep([
        {
          'name': name0,
        },
        {
          'description': description0,
        },
        {
          'version': version0,
        },
        {
          'publish_to': publishTo0,
        },
        {
          'environment': environment0,
        },
        {
          'environment': {
            'sdk': environmentSdk0,
          },
        },
        {
          'dependencies': dependencies0,
        },
        {
          'dependency_overrides': dependencyOverrides0,
        },
        {
          'dev_dependencies': devDependencies0,
        },
        {
          'flutter': flutter0,
        },
      ]).mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelPubspec.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  ModelPubspec copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return ModelPubspec.fromJson(c);
  }

  //
  //
  //

  // name.
  String get nameField => this.name!;

  // description.
  String get descriptionField => this.description!;

  // version.
  String get versionField => this.version!;

  // publishTo.
  String get publishToField => this.publishTo!;

  // environment.
  Map<String, dynamic> get environmentField => this.environment!;

  // environmentSdk.
  String get environmentSdkField => this.environmentSdk!;

  // dependencies.
  Map<String, dynamic> get dependenciesField => this.dependencies!;

  // dependencyOverrides.
  Map<String, dynamic> get dependencyOverridesField => this.dependencyOverrides!;

  // devDependencies.
  Map<String, dynamic> get devDependenciesField => this.devDependencies!;

  // flutter.
  Map<String, dynamic> get flutterField => this.flutter!;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class ModelPubspecFieldNames {
  //
  //
  //

  static const name = 'name';
  static const description = 'description';
  static const version = 'version';
  static const publishTo = 'publish_to';
  static const environment = 'environment';
  static const environmentSdk = 'environment_sdk';
  static const dependencies = 'dependencies';
  static const dependencyOverrides = 'dependency_overrides';
  static const devDependencies = 'dev_dependencies';
  static const flutter = 'flutter';

  //
  //
  //

  const ModelPubspecFieldNames._();
}
