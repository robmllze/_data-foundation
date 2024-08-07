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

part of 'model_organization_pub.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelOrganizationPub extends _ModelOrganizationPub {
  //
  //
  //

  static const CLASS_NAME = 'ModelOrganizationPub';

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

  const ModelOrganizationPub({
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

  const ModelOrganizationPub.c2({
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

  factory ModelOrganizationPub.c3({
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
    return ModelOrganizationPub(
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

  factory ModelOrganizationPub.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelOrganizationPub.from: $e');
      rethrow;
    }
  }

  static ModelOrganizationPub? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory ModelOrganizationPub.of(
    ModelOrganizationPub other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelOrganizationPub.of: $e');
      rethrow;
    }
  }

  static ModelOrganizationPub? ofOrNull(
    ModelOrganizationPub? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory ModelOrganizationPub.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelOrganizationPub.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelOrganizationPub? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelOrganizationPub.fromJson(decoded);
      } else {
        return const ModelOrganizationPub.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory ModelOrganizationPub.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelOrganizationPub.fromJson: $e');
      rethrow;
    }
  }

  static ModelOrganizationPub? fromJsonOrNull(
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
      final email0 = otherData?['email'];
      final email = () {
        final a = letMap<String, dynamic>(email0);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();
      final addressEntries0 = otherData?['addressEntries'];
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
      final emailEntries0 = otherData?['emailEntries'];
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
      final fileEntries0 = otherData?['fileEntries'];
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
      final phoneEntries0 = otherData?['phoneEntries'];
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
      final deviceRegs0 = otherData?['deviceRegs'];
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
      return ModelOrganizationPub(
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

  factory ModelOrganizationPub.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelOrganizationPub.fromUri: $e');
      rethrow;
    }
  }

  static ModelOrganizationPub? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return ModelOrganizationPub.fromJson(uri.queryParameters);
      } else {
        return const ModelOrganizationPub.c2();
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
          'email': email0,
        },
        {
          'addressEntries': addressEntries0,
        },
        {
          'emailEntries': emailEntries0,
        },
        {
          'fileEntries': fileEntries0,
        },
        {
          'phoneEntries': phoneEntries0,
        },
        {
          'deviceRegs': deviceRegs0,
        },
      ]).mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelOrganizationPub.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  ModelOrganizationPub copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return ModelOrganizationPub.fromJson(c);
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

final class ModelOrganizationPubFieldNames {
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

  const ModelOrganizationPubFieldNames._();
}
