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

part of 'model_job_pub.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelJobPub extends _ModelJobPub {
  //
  //
  //

  static const CLASS_NAME = 'ModelJobPub';

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
  final List<ModelRegistration>? clockInRegs;
  final List<ModelRegistration>? clockOutRegs;
  final Map<DateTime, ModelTodoEntry>? todoEntries;
  final JobStatusType? status;

  //
  //
  //

  const ModelJobPub({
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
    this.clockInRegs,
    this.clockOutRegs,
    this.todoEntries,
    this.status,
  });

  const ModelJobPub.c2({
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
    this.clockInRegs,
    this.clockOutRegs,
    this.todoEntries,
    this.status,
  });

  factory ModelJobPub.c3({
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
    List<ModelRegistration>? clockInRegs,
    List<ModelRegistration>? clockOutRegs,
    Map<DateTime, ModelTodoEntry>? todoEntries,
    JobStatusType? status,
  }) {
    return ModelJobPub(
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
      clockInRegs: clockInRegs,
      clockOutRegs: clockOutRegs,
      todoEntries: todoEntries,
      status: status,
    );
  }

  factory ModelJobPub.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelJobPub.from: $e');
      rethrow;
    }
  }

  static ModelJobPub? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory ModelJobPub.of(
    ModelJobPub other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelJobPub.of: $e');
      rethrow;
    }
  }

  static ModelJobPub? ofOrNull(
    ModelJobPub? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory ModelJobPub.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelJobPub.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelJobPub? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelJobPub.fromJson(decoded);
      } else {
        return const ModelJobPub.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory ModelJobPub.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelJobPub.fromJson: $e');
      rethrow;
    }
  }

  static ModelJobPub? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final id0 = otherData?[ModelJobPubFields.id.name];
      final id = id0?.toString().trim().nullIfEmpty;
      final ref0 = otherData?[ModelJobPubFields.ref.name];
      final ref = () {
        final a = letMap<String, dynamic>(ref0);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();
      final displayName0 = otherData?[ModelJobPubFields.displayName.name];
      final displayName = () {
        final a = letMap<String, dynamic>(displayName0);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();
      final displayColor0 = otherData?[ModelJobPubFields.displayColor.name];
      final displayColor = () {
        final a = letAs<int>(displayColor0);
        return a is int ? Color(a) : null;
      }();
      final description0 = otherData?[ModelJobPubFields.description.name];
      final description = description0?.toString().trim().nullIfEmpty;
      final archivedGReg0 = otherData?[ModelJobPubFields.archivedGReg.name];
      final archivedGReg = () {
        final a = letMap<String, dynamic>(archivedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final createdGReg0 = otherData?[ModelJobPubFields.createdGReg.name];
      final createdGReg = () {
        final a = letMap<String, dynamic>(createdGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final deletedGReg0 = otherData?[ModelJobPubFields.deletedGReg.name];
      final deletedGReg = () {
        final a = letMap<String, dynamic>(deletedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final updatedGReg0 = otherData?[ModelJobPubFields.updatedGReg.name];
      final updatedGReg = () {
        final a = letMap<String, dynamic>(updatedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final expiresAt0 = otherData?[ModelJobPubFields.expiresAt.name];
      final expiresAt = () {
        final a = expiresAt0;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();
      final email0 = otherData?[ModelJobPubFields.email.name];
      final email = () {
        final a = letMap<String, dynamic>(email0);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();
      final addressEntries0 = otherData?[ModelJobPubFields.addressEntries.name];
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
      final emailEntries0 = otherData?[ModelJobPubFields.emailEntries.name];
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
      final fileEntries0 = otherData?[ModelJobPubFields.fileEntries.name];
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
      final phoneEntries0 = otherData?[ModelJobPubFields.phoneEntries.name];
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
      final deviceRegs0 = otherData?[ModelJobPubFields.deviceRegs.name];
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
      final clockInRegs0 = otherData?[ModelJobPubFields.clockInRegs.name];
      final clockInRegs = letList(clockInRegs0)
          ?.map(
            (p0) => () {
              final a = letMap<String, dynamic>(p0);
              return a != null ? ModelRegistration.fromJson(a) : null;
            }(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final clockOutRegs0 = otherData?[ModelJobPubFields.clockOutRegs.name];
      final clockOutRegs = letList(clockOutRegs0)
          ?.map(
            (p0) => () {
              final a = letMap<String, dynamic>(p0);
              return a != null ? ModelRegistration.fromJson(a) : null;
            }(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final todoEntries0 = otherData?[ModelJobPubFields.todoEntries.name];
      final todoEntries = letMap(todoEntries0)
          ?.map(
            (p0, p1) => MapEntry(
              () {
                final a = p0;
                return a != null ? DateTime.tryParse(a)?.toUtc() : null;
              }(),
              () {
                final a = letMap<String, dynamic>(p1);
                return a != null ? ModelTodoEntry.fromJson(a) : null;
              }(),
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final status0 = otherData?[ModelJobPubFields.status.name];
      final status = JobStatusType.values.valueOf(letAs<String>(status0));
      return ModelJobPub(
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
        clockInRegs: clockInRegs,
        clockOutRegs: clockOutRegs,
        todoEntries: todoEntries,
        status: status,
      );
    } catch (e) {
      return null;
    }
  }

  factory ModelJobPub.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelJobPub.fromUri: $e');
      rethrow;
    }
  }

  static ModelJobPub? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return ModelJobPub.fromJson(uri.queryParameters);
      } else {
        return const ModelJobPub.c2();
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
      final clockInRegs0 = this
          .clockInRegs
          ?.map(
            (p0) => p0?.toJson(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final clockOutRegs0 = this
          .clockOutRegs
          ?.map(
            (p0) => p0?.toJson(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final todoEntries0 = this
          .todoEntries
          ?.map(
            (p0, p1) => MapEntry(
              p0?.toUtc()?.toIso8601String(),
              p1?.toJson(),
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final status0 = this.status?.name;
      final withNulls = <String, dynamic>{
        ModelJobPubFields.id.name: id0,
        ModelJobPubFields.ref.name: ref0,
        ModelJobPubFields.displayName.name: displayName0,
        ModelJobPubFields.displayColor.name: displayColor0,
        ModelJobPubFields.description.name: description0,
        ModelJobPubFields.archivedGReg.name: archivedGReg0,
        ModelJobPubFields.createdGReg.name: createdGReg0,
        ModelJobPubFields.deletedGReg.name: deletedGReg0,
        ModelJobPubFields.updatedGReg.name: updatedGReg0,
        ModelJobPubFields.expiresAt.name: expiresAt0,
        ModelJobPubFields.email.name: email0,
        ModelJobPubFields.addressEntries.name: addressEntries0,
        ModelJobPubFields.emailEntries.name: emailEntries0,
        ModelJobPubFields.fileEntries.name: fileEntries0,
        ModelJobPubFields.phoneEntries.name: phoneEntries0,
        ModelJobPubFields.deviceRegs.name: deviceRegs0,
        ModelJobPubFields.clockInRegs.name: clockInRegs0,
        ModelJobPubFields.clockOutRegs.name: clockOutRegs0,
        ModelJobPubFields.todoEntries.name: todoEntries0,
        ModelJobPubFields.status.name: status0,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelJobPub.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  ModelJobPub copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return ModelJobPub.fromJson(c);
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

  // clockInRegs.
  List<ModelRegistration>? get clockInRegsField => this.clockInRegs;

  // clockOutRegs.
  List<ModelRegistration>? get clockOutRegsField => this.clockOutRegs;

  // todoEntries.
  Map<DateTime, ModelTodoEntry>? get todoEntriesField => this.todoEntries;

  // status.
  JobStatusType? get statusField => this.status;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

enum ModelJobPubFields {
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
  clockInRegs(
    const Field(
      fieldName: 'clockInRegs',
      fieldType: 'List<ModelRegistration>',
      nullable: true,
    ),
  ),
  clockOutRegs(
    const Field(
      fieldName: 'clockOutRegs',
      fieldType: 'List<ModelRegistration>',
      nullable: true,
    ),
  ),
  todoEntries(
    const Field(
      fieldName: 'todoEntries',
      fieldType: 'Map<DateTime, ModelTodoEntry>',
      nullable: true,
    ),
  ),
  status(
    const Field(
      fieldName: 'status',
      fieldType: 'JobStatusType',
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

  const ModelJobPubFields(this.field);

  //
  //
  //

  String get fieldName => this.field.fieldName!;
}
