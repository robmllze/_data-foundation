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

part of 'model_user_pub.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelUserPub extends _ModelUserPub {
  //
  //
  //

  static const CLASS_NAME = 'ModelUserPub';

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
  final ModelQueryable? email;
  final Map<String, ModelAddressEntry>? addressEntries;
  final Map<String, ModelEmailEntry>? emailEntries;
  final Map<String, ModelFileEntry>? fileEntries;
  final Map<String, ModelPhoneEntry>? phoneEntries;
  final List<ModelDeviceRegistration>? deviceRegs;

  //
  //
  //

  const ModelUserPub({
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
    this.email,
    this.addressEntries,
    this.emailEntries,
    this.fileEntries,
    this.phoneEntries,
    this.deviceRegs,
  });

  const ModelUserPub.c2({
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
    this.email,
    this.addressEntries,
    this.emailEntries,
    this.fileEntries,
    this.phoneEntries,
    this.deviceRegs,
  });

  factory ModelUserPub.c3({
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
    ModelQueryable? email,
    Map<String, ModelAddressEntry>? addressEntries,
    Map<String, ModelEmailEntry>? emailEntries,
    Map<String, ModelFileEntry>? fileEntries,
    Map<String, ModelPhoneEntry>? phoneEntries,
    List<ModelDeviceRegistration>? deviceRegs,
  }) {
    return ModelUserPub(
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
      email: email,
      addressEntries: addressEntries,
      emailEntries: emailEntries,
      fileEntries: fileEntries,
      phoneEntries: phoneEntries,
      deviceRegs: deviceRegs,
    );
  }

  factory ModelUserPub.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelUserPub.from: $e');
      rethrow;
    }
  }

  static ModelUserPub? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory ModelUserPub.of(
    ModelUserPub other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelUserPub.of: $e');
      rethrow;
    }
  }

  static ModelUserPub? ofOrNull(
    ModelUserPub? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory ModelUserPub.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelUserPub.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelUserPub? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelUserPub.fromJson(decoded);
      } else {
        return const ModelUserPub.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory ModelUserPub.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelUserPub.fromJson: $e');
      rethrow;
    }
  }

  static ModelUserPub? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final id0 = otherData?[ModelUserPubFieldNames.id];
      final id = id0?.toString().trim().nullIfEmpty;
      final ref0 = otherData?[ModelUserPubFieldNames.ref];
      final ref = () {
        final a = letMap<String, dynamic>(ref0);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();
      final displayName0 = otherData?[ModelUserPubFieldNames.displayName];
      final displayName = () {
        final a = letMap<String, dynamic>(displayName0);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();
      final displayColor0 = otherData?[ModelUserPubFieldNames.displayColor];
      final displayColor = () {
        final a = letAs<int>(displayColor0);
        return a is int ? Color(a) : null;
      }();
      final description0 = otherData?[ModelUserPubFieldNames.description];
      final description = description0?.toString().trim().nullIfEmpty;
      final archivedGReg0 = otherData?[ModelUserPubFieldNames.archivedGReg];
      final archivedGReg = () {
        final a = letMap<String, dynamic>(archivedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final createdGReg0 = otherData?[ModelUserPubFieldNames.createdGReg];
      final createdGReg = () {
        final a = letMap<String, dynamic>(createdGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final deletedGReg0 = otherData?[ModelUserPubFieldNames.deletedGReg];
      final deletedGReg = () {
        final a = letMap<String, dynamic>(deletedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final updatedGReg0 = otherData?[ModelUserPubFieldNames.updatedGReg];
      final updatedGReg = () {
        final a = letMap<String, dynamic>(updatedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final expiresAt0 = otherData?[ModelUserPubFieldNames.expiresAt];
      final expiresAt = () {
        final a = expiresAt0;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();
      final email0 = otherData?[ModelUserPubFieldNames.email];
      final email = () {
        final a = letMap<String, dynamic>(email0);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();
      final addressEntries0 = otherData?[ModelUserPubFieldNames.addressEntries];
      final addressEntries = letMap(addressEntries0)
          ?.map(
            (p0, p1) => MapEntry(
              p0?.toString().trim().nullIfEmpty,
              () {
                final a = letMap<String, dynamic>(p1);
                return a != null ? ModelAddressEntry.fromJson(a) : null;
              }(),
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final emailEntries0 = otherData?[ModelUserPubFieldNames.emailEntries];
      final emailEntries = letMap(emailEntries0)
          ?.map(
            (p0, p1) => MapEntry(
              p0?.toString().trim().nullIfEmpty,
              () {
                final a = letMap<String, dynamic>(p1);
                return a != null ? ModelEmailEntry.fromJson(a) : null;
              }(),
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final fileEntries0 = otherData?[ModelUserPubFieldNames.fileEntries];
      final fileEntries = letMap(fileEntries0)
          ?.map(
            (p0, p1) => MapEntry(
              p0?.toString().trim().nullIfEmpty,
              () {
                final a = letMap<String, dynamic>(p1);
                return a != null ? ModelFileEntry.fromJson(a) : null;
              }(),
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final phoneEntries0 = otherData?[ModelUserPubFieldNames.phoneEntries];
      final phoneEntries = letMap(phoneEntries0)
          ?.map(
            (p0, p1) => MapEntry(
              p0?.toString().trim().nullIfEmpty,
              () {
                final a = letMap<String, dynamic>(p1);
                return a != null ? ModelPhoneEntry.fromJson(a) : null;
              }(),
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final deviceRegs0 = otherData?[ModelUserPubFieldNames.deviceRegs];
      final deviceRegs = letList(deviceRegs0)
          ?.map(
            (p0) => () {
              final a = letMap<String, dynamic>(p0);
              return a != null ? ModelDeviceRegistration.fromJson(a) : null;
            }(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      return ModelUserPub(
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
        email: email,
        addressEntries: addressEntries,
        emailEntries: emailEntries,
        fileEntries: fileEntries,
        phoneEntries: phoneEntries,
        deviceRegs: deviceRegs,
      );
    } catch (e) {
      return null;
    }
  }

  factory ModelUserPub.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelUserPub.fromUri: $e');
      rethrow;
    }
  }

  static ModelUserPub? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return ModelUserPub.fromJson(uri.queryParameters);
      } else {
        return const ModelUserPub.c2();
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
      final email0 = this.email?.toJson();
      final addressEntries0 = this
          .addressEntries
          ?.map(
            (p0, p1) => MapEntry(
              p0?.trim().nullIfEmpty,
              p1?.toJson(),
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final emailEntries0 = this
          .emailEntries
          ?.map(
            (p0, p1) => MapEntry(
              p0?.trim().nullIfEmpty,
              p1?.toJson(),
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final fileEntries0 = this
          .fileEntries
          ?.map(
            (p0, p1) => MapEntry(
              p0?.trim().nullIfEmpty,
              p1?.toJson(),
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final phoneEntries0 = this
          .phoneEntries
          ?.map(
            (p0, p1) => MapEntry(
              p0?.trim().nullIfEmpty,
              p1?.toJson(),
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final deviceRegs0 = this
          .deviceRegs
          ?.map(
            (p0) => p0?.toJson(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final withNulls = <String, dynamic>{
        ModelUserPubFieldNames.id: id0,
        ModelUserPubFieldNames.ref: ref0,
        ModelUserPubFieldNames.displayName: displayName0,
        ModelUserPubFieldNames.displayColor: displayColor0,
        ModelUserPubFieldNames.description: description0,
        ModelUserPubFieldNames.archivedGReg: archivedGReg0,
        ModelUserPubFieldNames.createdGReg: createdGReg0,
        ModelUserPubFieldNames.deletedGReg: deletedGReg0,
        ModelUserPubFieldNames.updatedGReg: updatedGReg0,
        ModelUserPubFieldNames.expiresAt: expiresAt0,
        ModelUserPubFieldNames.email: email0,
        ModelUserPubFieldNames.addressEntries: addressEntries0,
        ModelUserPubFieldNames.emailEntries: emailEntries0,
        ModelUserPubFieldNames.fileEntries: fileEntries0,
        ModelUserPubFieldNames.phoneEntries: phoneEntries0,
        ModelUserPubFieldNames.deviceRegs: deviceRegs0,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelUserPub.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  ModelUserPub copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return ModelUserPub.fromJson(c);
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

  // email.
  ModelQueryable? get emailField => this.email;

  // addressEntries.
  Map<String, ModelAddressEntry>? get addressEntriesField =>
      this.addressEntries;

  // emailEntries.
  Map<String, ModelEmailEntry>? get emailEntriesField => this.emailEntries;

  // fileEntries.
  Map<String, ModelFileEntry>? get fileEntriesField => this.fileEntries;

  // phoneEntries.
  Map<String, ModelPhoneEntry>? get phoneEntriesField => this.phoneEntries;

  // deviceRegs.
  List<ModelDeviceRegistration>? get deviceRegsField => this.deviceRegs;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class ModelUserPubFieldNames {
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
  static const email = 'email';
  static const addressEntries = 'addressEntries';
  static const emailEntries = 'emailEntries';
  static const fileEntries = 'fileEntries';
  static const phoneEntries = 'phoneEntries';
  static const deviceRegs = 'deviceRegs';

  //
  //
  //

  const ModelUserPubFieldNames._();
}
