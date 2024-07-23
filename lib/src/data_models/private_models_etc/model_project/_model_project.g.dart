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

part of 'model_project.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelProject extends _ModelProject {
  //
  //
  //

  static const CLASS_NAME = 'ModelProject';

  @override
  String get $className => CLASS_NAME;

  final String? id;
  final DataRefModel? ref;
  final ModelQueryable? displayName;
  final Color? displayColor;
  final String? description;
  final ModelRegistration? archivedGReg;
  final ModelRegistration? createdGReg;
  final ModelRegistration? deletedGReg;
  final ModelRegistration? updatedGReg;
  final DateTime? expiresAt;
  final String? pid;
  final String? seed;

  //
  //
  //

  const ModelProject({
    this.id,
    this.ref,
    this.displayName,
    this.displayColor,
    this.description,
    this.archivedGReg,
    this.createdGReg,
    this.deletedGReg,
    this.updatedGReg,
    this.expiresAt,
    this.pid,
    this.seed,
  });

  const ModelProject.c2({
    this.id,
    this.ref,
    this.displayName,
    this.displayColor,
    this.description,
    this.archivedGReg,
    this.createdGReg,
    this.deletedGReg,
    this.updatedGReg,
    this.expiresAt,
    this.pid,
    this.seed,
  });

  factory ModelProject.c3({
    String? id,
    DataRefModel? ref,
    ModelQueryable? displayName,
    Color? displayColor,
    String? description,
    ModelRegistration? archivedGReg,
    ModelRegistration? createdGReg,
    ModelRegistration? deletedGReg,
    ModelRegistration? updatedGReg,
    DateTime? expiresAt,
    String? pid,
    String? seed,
  }) {
    return ModelProject(
      id: id,
      ref: ref,
      displayName: displayName,
      displayColor: displayColor,
      description: description,
      archivedGReg: archivedGReg,
      createdGReg: createdGReg,
      deletedGReg: deletedGReg,
      updatedGReg: updatedGReg,
      expiresAt: expiresAt,
      pid: pid,
      seed: seed,
    );
  }

  factory ModelProject.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelProject.from: $e');
      rethrow;
    }
  }

  static ModelProject? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory ModelProject.of(
    ModelProject other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelProject.of: $e');
      rethrow;
    }
  }

  static ModelProject? ofOrNull(
    ModelProject? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory ModelProject.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelProject.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelProject? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelProject.fromJson(decoded);
      } else {
        return const ModelProject.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory ModelProject.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelProject.fromJson: $e');
      rethrow;
    }
  }

  static ModelProject? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final id0 = otherData?['id'];
      final id = id0?.toString().trim().nullIfEmpty;
      final ref0 = otherData?['ref'];
      final ref = () {
        final a = letMap<String, dynamic>(ref0);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();
      final displayName0 = otherData?['displayName'];
      final displayName = () {
        final a = letMap<String, dynamic>(displayName0);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();
      final displayColor0 = otherData?['displayColor'];
      final displayColor = () {
        final a = letAs<int>(displayColor0);
        return a is int ? Color(a) : null;
      }();
      final description0 = otherData?['description'];
      final description = description0?.toString().trim().nullIfEmpty;
      final archivedGReg0 = otherData?['archivedGReg'];
      final archivedGReg = () {
        final a = letMap<String, dynamic>(archivedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final createdGReg0 = otherData?['createdGReg'];
      final createdGReg = () {
        final a = letMap<String, dynamic>(createdGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final deletedGReg0 = otherData?['deletedGReg'];
      final deletedGReg = () {
        final a = letMap<String, dynamic>(deletedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final updatedGReg0 = otherData?['updatedGReg'];
      final updatedGReg = () {
        final a = letMap<String, dynamic>(updatedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final expiresAt0 = otherData?['expiresAt'];
      final expiresAt = () {
        final a = expiresAt0;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();
      final pid0 = otherData?['pid'];
      final pid = pid0?.toString().trim().nullIfEmpty;
      final seed0 = otherData?['seed'];
      final seed = seed0?.toString().trim().nullIfEmpty;
      return ModelProject(
        id: id,
        ref: ref,
        displayName: displayName,
        displayColor: displayColor,
        description: description,
        archivedGReg: archivedGReg,
        createdGReg: createdGReg,
        deletedGReg: deletedGReg,
        updatedGReg: updatedGReg,
        expiresAt: expiresAt,
        pid: pid,
        seed: seed,
      );
    } catch (e) {
      return null;
    }
  }

  factory ModelProject.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelProject.fromUri: $e');
      rethrow;
    }
  }

  static ModelProject? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return ModelProject.fromJson(uri.queryParameters);
      } else {
        return const ModelProject.c2();
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
      final id0 = this.id?.trim().nullIfEmpty;
      final ref0 = this.ref?.toJson();
      final displayName0 = this.displayName?.toJson();
      final displayColor0 = this.displayColor?.value;
      final description0 = this.description?.trim().nullIfEmpty;
      final archivedGReg0 = this.archivedGReg?.toJson();
      final createdGReg0 = this.createdGReg?.toJson();
      final deletedGReg0 = this.deletedGReg?.toJson();
      final updatedGReg0 = this.updatedGReg?.toJson();
      final expiresAt0 = this.expiresAt?.toUtc()?.toIso8601String();
      final pid0 = this.pid?.trim().nullIfEmpty;
      final seed0 = this.seed?.trim().nullIfEmpty;
      final withNulls = mergeMapsDeep([
        {
          'id': id0,
        },
        {
          'ref': ref0,
        },
        {
          'displayName': displayName0,
        },
        {
          'displayColor': displayColor0,
        },
        {
          'description': description0,
        },
        {
          'archivedGReg': archivedGReg0,
        },
        {
          'createdGReg': createdGReg0,
        },
        {
          'deletedGReg': deletedGReg0,
        },
        {
          'updatedGReg': updatedGReg0,
        },
        {
          'expiresAt': expiresAt0,
        },
        {
          'pid': pid0,
        },
        {
          'seed': seed0,
        },
      ]).mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelProject.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  ModelProject copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return ModelProject.fromJson(c);
  }

  //
  //
  //

  // id.
  String? get idField => this.id;

  // ref.
  DataRefModel? get refField => this.ref;

  // displayName.
  ModelQueryable? get displayNameField => this.displayName;

  // displayColor.
  Color? get displayColorField => this.displayColor;

  // description.
  String? get descriptionField => this.description;

  // archivedGReg.
  ModelRegistration? get archivedGRegField => this.archivedGReg;

  // createdGReg.
  ModelRegistration? get createdGRegField => this.createdGReg;

  // deletedGReg.
  ModelRegistration? get deletedGRegField => this.deletedGReg;

  // updatedGReg.
  ModelRegistration? get updatedGRegField => this.updatedGReg;

  // expiresAt.
  DateTime? get expiresAtField => this.expiresAt;

  // pid.
  String? get pidField => this.pid;

  // seed.
  String? get seedField => this.seed;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class ModelProjectFieldNames {
  //
  //
  //

  static const id = 'id';
  static const ref = 'ref';
  static const displayName = 'displayName';
  static const displayColor = 'displayColor';
  static const description = 'description';
  static const archivedGReg = 'archivedGReg';
  static const createdGReg = 'createdGReg';
  static const deletedGReg = 'deletedGReg';
  static const updatedGReg = 'updatedGReg';
  static const expiresAt = 'expiresAt';
  static const pid = 'pid';
  static const seed = 'seed';

  //
  //
  //

  const ModelProjectFieldNames._();
}
