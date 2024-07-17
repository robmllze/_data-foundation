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

part of 'model_project_pub.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelProjectPub extends _ModelProjectPub {
  //
  //
  //

  static const CLASS_NAME = 'ModelProjectPub';

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
  final List<ModelRegistration>? regsOpened;
  final List<ModelRegistration>? regsClosed;

  //
  //
  //

  const ModelProjectPub({
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
    this.regsOpened,
    this.regsClosed,
  });

  const ModelProjectPub.c2({
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
    this.regsOpened,
    this.regsClosed,
  });

  factory ModelProjectPub.c3({
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
    List<ModelRegistration>? regsOpened,
    List<ModelRegistration>? regsClosed,
  }) {
    return ModelProjectPub(
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
      regsOpened: regsOpened,
      regsClosed: regsClosed,
    );
  }

  factory ModelProjectPub.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelProjectPub.from: $e');
      rethrow;
    }
  }

  static ModelProjectPub? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory ModelProjectPub.of(
    ModelProjectPub other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelProjectPub.of: $e');
      rethrow;
    }
  }

  static ModelProjectPub? ofOrNull(
    ModelProjectPub? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory ModelProjectPub.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelProjectPub.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelProjectPub? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelProjectPub.fromJson(decoded);
      } else {
        return const ModelProjectPub.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory ModelProjectPub.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelProjectPub.fromJson: $e');
      rethrow;
    }
  }

  static ModelProjectPub? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final id0 = otherData?[ModelProjectPubFields.id.name];
      final id = id0?.toString().trim().nullIfEmpty;
      final ref0 = otherData?[ModelProjectPubFields.ref.name];
      final ref = () {
        final a = letMap<String, dynamic>(ref0);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();
      final displayName0 = otherData?[ModelProjectPubFields.displayName.name];
      final displayName = () {
        final a = letMap<String, dynamic>(displayName0);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();
      final displayColor0 = otherData?[ModelProjectPubFields.displayColor.name];
      final displayColor = () {
        final a = letAs<int>(displayColor0);
        return a is int ? Color(a) : null;
      }();
      final description0 = otherData?[ModelProjectPubFields.description.name];
      final description = description0?.toString().trim().nullIfEmpty;
      final archivedGReg0 = otherData?[ModelProjectPubFields.archivedGReg.name];
      final archivedGReg = () {
        final a = letMap<String, dynamic>(archivedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final createdGReg0 = otherData?[ModelProjectPubFields.createdGReg.name];
      final createdGReg = () {
        final a = letMap<String, dynamic>(createdGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final deletedGReg0 = otherData?[ModelProjectPubFields.deletedGReg.name];
      final deletedGReg = () {
        final a = letMap<String, dynamic>(deletedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final updatedGReg0 = otherData?[ModelProjectPubFields.updatedGReg.name];
      final updatedGReg = () {
        final a = letMap<String, dynamic>(updatedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final expiresAt0 = otherData?[ModelProjectPubFields.expiresAt.name];
      final expiresAt = () {
        final a = expiresAt0;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();
      final email0 = otherData?[ModelProjectPubFields.email.name];
      final email = () {
        final a = letMap<String, dynamic>(email0);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();
      final addressEntries0 =
          otherData?[ModelProjectPubFields.addressEntries.name];
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
      final emailEntries0 = otherData?[ModelProjectPubFields.emailEntries.name];
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
      final fileEntries0 = otherData?[ModelProjectPubFields.fileEntries.name];
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
      final phoneEntries0 = otherData?[ModelProjectPubFields.phoneEntries.name];
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
      final deviceRegs0 = otherData?[ModelProjectPubFields.deviceRegs.name];
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
      final regsOpened0 = otherData?[ModelProjectPubFields.regsOpened.name];
      final regsOpened = letList(regsOpened0)
          ?.map(
            (p0) => () {
              final a = letMap<String, dynamic>(p0);
              return a != null ? ModelRegistration.fromJson(a) : null;
            }(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final regsClosed0 = otherData?[ModelProjectPubFields.regsClosed.name];
      final regsClosed = letList(regsClosed0)
          ?.map(
            (p0) => () {
              final a = letMap<String, dynamic>(p0);
              return a != null ? ModelRegistration.fromJson(a) : null;
            }(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      return ModelProjectPub(
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
        regsOpened: regsOpened,
        regsClosed: regsClosed,
      );
    } catch (e) {
      return null;
    }
  }

  factory ModelProjectPub.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelProjectPub.fromUri: $e');
      rethrow;
    }
  }

  static ModelProjectPub? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return ModelProjectPub.fromJson(uri.queryParameters);
      } else {
        return const ModelProjectPub.c2();
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
      final regsOpened0 = this
          .regsOpened
          ?.map(
            (p0) => p0?.toJson(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final regsClosed0 = this
          .regsClosed
          ?.map(
            (p0) => p0?.toJson(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final withNulls = <String, dynamic>{
        ModelProjectPubFields.id.name: id0,
        ModelProjectPubFields.ref.name: ref0,
        ModelProjectPubFields.displayName.name: displayName0,
        ModelProjectPubFields.displayColor.name: displayColor0,
        ModelProjectPubFields.description.name: description0,
        ModelProjectPubFields.archivedGReg.name: archivedGReg0,
        ModelProjectPubFields.createdGReg.name: createdGReg0,
        ModelProjectPubFields.deletedGReg.name: deletedGReg0,
        ModelProjectPubFields.updatedGReg.name: updatedGReg0,
        ModelProjectPubFields.expiresAt.name: expiresAt0,
        ModelProjectPubFields.email.name: email0,
        ModelProjectPubFields.addressEntries.name: addressEntries0,
        ModelProjectPubFields.emailEntries.name: emailEntries0,
        ModelProjectPubFields.fileEntries.name: fileEntries0,
        ModelProjectPubFields.phoneEntries.name: phoneEntries0,
        ModelProjectPubFields.deviceRegs.name: deviceRegs0,
        ModelProjectPubFields.regsOpened.name: regsOpened0,
        ModelProjectPubFields.regsClosed.name: regsClosed0,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelProjectPub.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  ModelProjectPub copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return ModelProjectPub.fromJson(c);
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

  // regsOpened.
  List<ModelRegistration>? get regsOpenedField => this.regsOpened;

  // regsClosed.
  List<ModelRegistration>? get regsClosedField => this.regsClosed;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

enum ModelProjectPubFields {
  //
  //
  //

  id(
    const Field(
      fieldName: 'id',
      fieldType: 'String',
      nullable: true,
    ),
  ),
  ref(
    const Field(
      fieldName: 'ref',
      fieldType: 'DataRefModel',
      nullable: true,
    ),
  ),
  displayName(
    const Field(
      fieldName: 'displayName',
      fieldType: 'ModelQueryable',
      nullable: true,
    ),
  ),
  displayColor(
    const Field(
      fieldName: 'displayColor',
      fieldType: 'Color',
      nullable: true,
    ),
  ),
  description(
    const Field(
      fieldName: 'description',
      fieldType: 'String',
      nullable: true,
    ),
  ),
  archivedGReg(
    const Field(
      fieldName: 'archivedGReg',
      fieldType: 'ModelRegistration',
      nullable: true,
    ),
  ),
  createdGReg(
    const Field(
      fieldName: 'createdGReg',
      fieldType: 'ModelRegistration',
      nullable: true,
    ),
  ),
  deletedGReg(
    const Field(
      fieldName: 'deletedGReg',
      fieldType: 'ModelRegistration',
      nullable: true,
    ),
  ),
  updatedGReg(
    const Field(
      fieldName: 'updatedGReg',
      fieldType: 'ModelRegistration',
      nullable: true,
    ),
  ),
  expiresAt(
    const Field(
      fieldName: 'expiresAt',
      fieldType: 'DateTime',
      nullable: true,
    ),
  ),
  email(
    const Field(
      fieldName: 'email',
      fieldType: 'ModelQueryable',
      nullable: true,
    ),
  ),
  addressEntries(
    const Field(
      fieldName: 'addressEntries',
      fieldType: 'Map<String, ModelAddressEntry>',
      nullable: true,
    ),
  ),
  emailEntries(
    const Field(
      fieldName: 'emailEntries',
      fieldType: 'Map<String, ModelEmailEntry>',
      nullable: true,
    ),
  ),
  fileEntries(
    const Field(
      fieldName: 'fileEntries',
      fieldType: 'Map<String, ModelFileEntry>',
      nullable: true,
    ),
  ),
  phoneEntries(
    const Field(
      fieldName: 'phoneEntries',
      fieldType: 'Map<String, ModelPhoneEntry>',
      nullable: true,
    ),
  ),
  deviceRegs(
    const Field(
      fieldName: 'deviceRegs',
      fieldType: 'List<ModelDeviceRegistration>',
      nullable: true,
    ),
  ),
  regsOpened(
    const Field(
      fieldName: 'regsOpened',
      fieldType: 'List<ModelRegistration>',
      nullable: true,
    ),
  ),
  regsClosed(
    const Field(
      fieldName: 'regsClosed',
      fieldType: 'List<ModelRegistration>',
      nullable: true,
    ),
  );

  //
  //
  //

  final Field field;

  //
  //
  //

  const ModelProjectPubFields(this.field);

  //
  //
  //

  String get fieldName => this.field.fieldName!;
}
