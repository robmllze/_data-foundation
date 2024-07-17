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

part of 'model_organization.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelOrganization extends _ModelOrganization {
  //
  //
  //

  static const CLASS_NAME = 'ModelOrganization';

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

  const ModelOrganization({
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

  const ModelOrganization.c2({
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

  factory ModelOrganization.c3({
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
    return ModelOrganization(
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

  factory ModelOrganization.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelOrganization.from: $e');
      rethrow;
    }
  }

  static ModelOrganization? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory ModelOrganization.of(
    ModelOrganization other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelOrganization.of: $e');
      rethrow;
    }
  }

  static ModelOrganization? ofOrNull(
    ModelOrganization? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory ModelOrganization.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelOrganization.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelOrganization? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelOrganization.fromJson(decoded);
      } else {
        return const ModelOrganization.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory ModelOrganization.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelOrganization.fromJson: $e');
      rethrow;
    }
  }

  static ModelOrganization? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final id0 = otherData?[ModelOrganizationFieldNames.id];
      final id = id0?.toString().trim().nullIfEmpty;
      final ref0 = otherData?[ModelOrganizationFieldNames.ref];
      final ref = () {
        final a = letMap<String, dynamic>(ref0);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();
      final displayName0 = otherData?[ModelOrganizationFieldNames.displayName];
      final displayName = () {
        final a = letMap<String, dynamic>(displayName0);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();
      final displayColor0 =
          otherData?[ModelOrganizationFieldNames.displayColor];
      final displayColor = () {
        final a = letAs<int>(displayColor0);
        return a is int ? Color(a) : null;
      }();
      final description0 = otherData?[ModelOrganizationFieldNames.description];
      final description = description0?.toString().trim().nullIfEmpty;
      final archivedGReg0 =
          otherData?[ModelOrganizationFieldNames.archivedGReg];
      final archivedGReg = () {
        final a = letMap<String, dynamic>(archivedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final createdGReg0 = otherData?[ModelOrganizationFieldNames.createdGReg];
      final createdGReg = () {
        final a = letMap<String, dynamic>(createdGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final deletedGReg0 = otherData?[ModelOrganizationFieldNames.deletedGReg];
      final deletedGReg = () {
        final a = letMap<String, dynamic>(deletedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final updatedGReg0 = otherData?[ModelOrganizationFieldNames.updatedGReg];
      final updatedGReg = () {
        final a = letMap<String, dynamic>(updatedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final expiresAt0 = otherData?[ModelOrganizationFieldNames.expiresAt];
      final expiresAt = () {
        final a = expiresAt0;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();
      final pid0 = otherData?[ModelOrganizationFieldNames.pid];
      final pid = pid0?.toString().trim().nullIfEmpty;
      final seed0 = otherData?[ModelOrganizationFieldNames.seed];
      final seed = seed0?.toString().trim().nullIfEmpty;
      return ModelOrganization(
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

  factory ModelOrganization.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelOrganization.fromUri: $e');
      rethrow;
    }
  }

  static ModelOrganization? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return ModelOrganization.fromJson(uri.queryParameters);
      } else {
        return const ModelOrganization.c2();
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
      final withNulls = <String, dynamic>{
        ModelOrganizationFieldNames.id: id0,
        ModelOrganizationFieldNames.ref: ref0,
        ModelOrganizationFieldNames.displayName: displayName0,
        ModelOrganizationFieldNames.displayColor: displayColor0,
        ModelOrganizationFieldNames.description: description0,
        ModelOrganizationFieldNames.archivedGReg: archivedGReg0,
        ModelOrganizationFieldNames.createdGReg: createdGReg0,
        ModelOrganizationFieldNames.deletedGReg: deletedGReg0,
        ModelOrganizationFieldNames.updatedGReg: updatedGReg0,
        ModelOrganizationFieldNames.expiresAt: expiresAt0,
        ModelOrganizationFieldNames.pid: pid0,
        ModelOrganizationFieldNames.seed: seed0,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelOrganization.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  ModelOrganization copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return ModelOrganization.fromJson(c);
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

final class ModelOrganizationFieldNames {
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

  const ModelOrganizationFieldNames._();
}
