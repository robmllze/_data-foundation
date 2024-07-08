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

part of 'public_model.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class PublicModel extends _PublicModel {
  //
  //
  //

  static const K_REF = 'ref';
  static const K_ID = 'id';
  static const K_DISPLAY_NAME = 'displayName';
  static const K_DISPLAY_NAME_SEARCHABLE = 'displayNameSearchable';
  static const K_DISPLAY_COLOR = 'displayColor';
  static const K_DESCRIPTION = 'description';
  static const K_ARCHIVED_G_REG = 'archivedGReg';
  static const K_CREATED_G_REG = 'createdGReg';
  static const K_DELETED_G_REG = 'deletedGReg';
  static const K_UPDATE_G_REG = 'updateGReg';
  static const K_EMAIL_SEARCHABLE = 'emailSearchable';
  static const K_ADDRESS_ENTRIES = 'addressEntries';
  static const K_EMAIL_ENTRIES = 'emailEntries';
  static const K_FILE_ENTRIES = 'fileEntries';
  static const K_PHONE_ENTRIES = 'phoneEntries';
  static const K_DEVICE_REGS = 'deviceRegs';

  static const CLASS = 'PublicModel';

  @override
  String get $class => CLASS;

  DataRefModel? ref;
  String? id;
  String? displayName;
  String? displayNameSearchable;
  Color? displayColor;
  String? description;
  ModelRegistration? archivedGReg;
  ModelRegistration? createdGReg;
  ModelRegistration? deletedGReg;
  ModelRegistration? updateGReg;
  String? emailSearchable;
  Map<String, ModelAddressEntry>? addressEntries;
  Map<String, ModelEmailEntry>? emailEntries;
  Map<String, ModelFileEntry>? fileEntries;
  Map<String, ModelPhoneEntry>? phoneEntries;
  List<ModelDeviceRegistration>? deviceRegs;

  //
  //
  //

  PublicModel.empty();

  //
  //
  //

  factory PublicModel({
    required DataRefModel ref,
    String? id,
    String? displayName,
    String? displayNameSearchable,
    Color? displayColor,
    String? description,
    ModelRegistration? archivedGReg,
    ModelRegistration? createdGReg,
    ModelRegistration? deletedGReg,
    ModelRegistration? updateGReg,
    String? emailSearchable,
    Map<String, ModelAddressEntry>? addressEntries,
    Map<String, ModelEmailEntry>? emailEntries,
    Map<String, ModelFileEntry>? fileEntries,
    Map<String, ModelPhoneEntry>? phoneEntries,
    List<ModelDeviceRegistration>? deviceRegs,
  }) {
    return PublicModel.b(
      ref: ref,
      id: id,
      displayName: displayName,
      displayNameSearchable: displayNameSearchable,
      displayColor: displayColor,
      description: description,
      archivedGReg: archivedGReg,
      createdGReg: createdGReg,
      deletedGReg: deletedGReg,
      updateGReg: updateGReg,
      emailSearchable: emailSearchable,
      addressEntries: addressEntries,
      emailEntries: emailEntries,
      fileEntries: fileEntries,
      phoneEntries: phoneEntries,
      deviceRegs: deviceRegs,
    );
  }

  //
  //
  //

  PublicModel.b({
    this.ref,
    this.id,
    this.displayName,
    this.displayNameSearchable,
    this.displayColor,
    this.description,
    this.archivedGReg,
    this.createdGReg,
    this.deletedGReg,
    this.updateGReg,
    this.emailSearchable,
    this.addressEntries,
    this.emailEntries,
    this.fileEntries,
    this.phoneEntries,
    this.deviceRegs,
  }) {
    assert(this.ref != null);
  }

  //
  //
  //

  factory PublicModel.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'PublicModel.from: $e');
      rethrow;
    }
  }

  static PublicModel? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory PublicModel.of(
    PublicModel other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'PublicModel.of: $e');
      rethrow;
    }
  }

  static PublicModel? ofOrNull(
    PublicModel? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory PublicModel.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'PublicModel.fromJsonString: $e');
      rethrow;
    }
  }

  static PublicModel? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return PublicModel.fromJson(decoded);
      } else {
        return PublicModel.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory PublicModel.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'PublicModel.fromJson: $e');
      rethrow;
    }
  }

  static PublicModel? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return PublicModel.empty()
        ..$ref = otherData?[K_REF]
        ..$id = otherData?[K_ID]
        ..$displayName = otherData?[K_DISPLAY_NAME]
        ..$displayNameSearchable = otherData?[K_DISPLAY_NAME_SEARCHABLE]
        ..$displayColor = otherData?[K_DISPLAY_COLOR]
        ..$description = otherData?[K_DESCRIPTION]
        ..$archivedGReg = otherData?[K_ARCHIVED_G_REG]
        ..$createdGReg = otherData?[K_CREATED_G_REG]
        ..$deletedGReg = otherData?[K_DELETED_G_REG]
        ..$updateGReg = otherData?[K_UPDATE_G_REG]
        ..$emailSearchable = otherData?[K_EMAIL_SEARCHABLE]
        ..$addressEntries = otherData?[K_ADDRESS_ENTRIES]
        ..$emailEntries = otherData?[K_EMAIL_ENTRIES]
        ..$fileEntries = otherData?[K_FILE_ENTRIES]
        ..$phoneEntries = otherData?[K_PHONE_ENTRIES]
        ..$deviceRegs = otherData?[K_DEVICE_REGS];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory PublicModel.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'PublicModel.fromUri: $e');
      rethrow;
    }
  }

  static PublicModel? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return PublicModel.fromJson(uri.queryParameters);
      } else {
        return PublicModel.empty();
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
        K_REF: this.$ref,
        K_ID: this.$id,
        K_DISPLAY_NAME: this.$displayName,
        K_DISPLAY_NAME_SEARCHABLE: this.$displayNameSearchable,
        K_DISPLAY_COLOR: this.$displayColor,
        K_DESCRIPTION: this.$description,
        K_ARCHIVED_G_REG: this.$archivedGReg,
        K_CREATED_G_REG: this.$createdGReg,
        K_DELETED_G_REG: this.$deletedGReg,
        K_UPDATE_G_REG: this.$updateGReg,
        K_EMAIL_SEARCHABLE: this.$emailSearchable,
        K_ADDRESS_ENTRIES: this.$addressEntries,
        K_EMAIL_ENTRIES: this.$emailEntries,
        K_FILE_ENTRIES: this.$fileEntries,
        K_PHONE_ENTRIES: this.$phoneEntries,
        K_DEVICE_REGS: this.$deviceRegs,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'PublicModel.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return PublicModel.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (PublicModel.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = PublicModel.fromJson(otherData);
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.displayName != null) {
        this.displayName = other.displayName!;
      }
      if (other.displayNameSearchable != null) {
        this.displayNameSearchable = other.displayNameSearchable!;
      }
      if (other.displayColor != null) {
        this.displayColor = other.displayColor!;
      }
      if (other.description != null) {
        this.description = other.description!;
      }
      if (other.archivedGReg != null) {
        this.archivedGReg = other.archivedGReg!;
      }
      if (other.createdGReg != null) {
        this.createdGReg = other.createdGReg!;
      }
      if (other.deletedGReg != null) {
        this.deletedGReg = other.deletedGReg!;
      }
      if (other.updateGReg != null) {
        this.updateGReg = other.updateGReg!;
      }
      if (other.emailSearchable != null) {
        this.emailSearchable = other.emailSearchable!;
      }
      if (other.addressEntries != null) {
        this.addressEntries = other.addressEntries!;
      }
      if (other.emailEntries != null) {
        this.emailEntries = other.emailEntries!;
      }
      if (other.fileEntries != null) {
        this.fileEntries = other.fileEntries!;
      }
      if (other.phoneEntries != null) {
        this.phoneEntries = other.phoneEntries!;
      }
      if (other.deviceRegs != null) {
        this.deviceRegs = other.deviceRegs!;
      }
    }
  }

  //
  //
  //

  // ref.
  DataRefModel get refField => this.ref!;
  set refField(DataRefModel v) => this.ref = v;
  @protected
  dynamic get $ref => this.ref?.toJson();
  @protected
  set $ref(v) => this.ref = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

  // displayName.
  String? get displayNameField => this.displayName;
  set displayNameField(String? v) => this.displayName = v;
  @protected
  dynamic get $displayName => this.displayName?.toString().trim().nullIfEmpty;
  @protected
  set $displayName(v) => this.displayName = v?.toString().trim().nullIfEmpty;

  // displayNameSearchable.
  String? get displayNameSearchableField => this.displayNameSearchable;
  set displayNameSearchableField(String? v) => this.displayNameSearchable = v;
  @protected
  dynamic get $displayNameSearchable => this
      .displayNameSearchable
      ?.toString()
      .trim()
      .nullIfEmpty
      ?.toLowerCase()
      .replaceAll(r'[^\w]', '');
  @protected
  set $displayNameSearchable(v) => this.displayNameSearchable =
      v?.toString().trim().nullIfEmpty?.toLowerCase().replaceAll(r'[^\w]', '');

  // displayColor.
  Color? get displayColorField => this.displayColor;
  set displayColorField(Color? v) => this.displayColor = v;
  @protected
  dynamic get $displayColor => this.displayColor?.value;
  @protected
  set $displayColor(v) => this.displayColor = () {
        final a = letAs<int>(v);
        return a is int ? Color(a) : null;
      }();

  // description.
  String? get descriptionField => this.description;
  set descriptionField(String? v) => this.description = v;
  @protected
  dynamic get $description => this.description?.toString().trim().nullIfEmpty;
  @protected
  set $description(v) => this.description = v?.toString().trim().nullIfEmpty;

  // archivedGReg.
  ModelRegistration? get archivedGRegField => this.archivedGReg;
  set archivedGRegField(ModelRegistration? v) => this.archivedGReg = v;
  @protected
  dynamic get $archivedGReg => this.archivedGReg?.toJson();
  @protected
  set $archivedGReg(v) => this.archivedGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // createdGReg.
  ModelRegistration? get createdGRegField => this.createdGReg;
  set createdGRegField(ModelRegistration? v) => this.createdGReg = v;
  @protected
  dynamic get $createdGReg => this.createdGReg?.toJson();
  @protected
  set $createdGReg(v) => this.createdGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // deletedGReg.
  ModelRegistration? get deletedGRegField => this.deletedGReg;
  set deletedGRegField(ModelRegistration? v) => this.deletedGReg = v;
  @protected
  dynamic get $deletedGReg => this.deletedGReg?.toJson();
  @protected
  set $deletedGReg(v) => this.deletedGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // updateGReg.
  ModelRegistration? get updateGRegField => this.updateGReg;
  set updateGRegField(ModelRegistration? v) => this.updateGReg = v;
  @protected
  dynamic get $updateGReg => this.updateGReg?.toJson();
  @protected
  set $updateGReg(v) => this.updateGReg = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();

  // emailSearchable.
  String? get emailSearchableField => this.emailSearchable;
  set emailSearchableField(String? v) => this.emailSearchable = v;
  @protected
  dynamic get $emailSearchable =>
      this.emailSearchable?.toString().trim().nullIfEmpty?.toLowerCase();
  @protected
  set $emailSearchable(v) =>
      this.emailSearchable = v?.toString().trim().nullIfEmpty?.toLowerCase();

  // addressEntries.
  Map<String, ModelAddressEntry>? get addressEntriesField =>
      this.addressEntries;
  set addressEntriesField(Map<String, ModelAddressEntry>? v) =>
      this.addressEntries = v;
  @protected
  dynamic get $addressEntries => this
      .addressEntries
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toJson(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $addressEntries(v) => this.addressEntries = letMap(v)
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
      .nullIfEmpty
      ?.cast();

  // emailEntries.
  Map<String, ModelEmailEntry>? get emailEntriesField => this.emailEntries;
  set emailEntriesField(Map<String, ModelEmailEntry>? v) =>
      this.emailEntries = v;
  @protected
  dynamic get $emailEntries => this
      .emailEntries
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toJson(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $emailEntries(v) => this.emailEntries = letMap(v)
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
      .nullIfEmpty
      ?.cast();

  // fileEntries.
  Map<String, ModelFileEntry>? get fileEntriesField => this.fileEntries;
  set fileEntriesField(Map<String, ModelFileEntry>? v) => this.fileEntries = v;
  @protected
  dynamic get $fileEntries => this
      .fileEntries
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toJson(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $fileEntries(v) => this.fileEntries = letMap(v)
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
      .nullIfEmpty
      ?.cast();

  // phoneEntries.
  Map<String, ModelPhoneEntry>? get phoneEntriesField => this.phoneEntries;
  set phoneEntriesField(Map<String, ModelPhoneEntry>? v) =>
      this.phoneEntries = v;
  @protected
  dynamic get $phoneEntries => this
      .phoneEntries
      ?.map(
        (p0, p1) => MapEntry(
          p0?.toString().trim().nullIfEmpty,
          p1?.toJson(),
        ),
      )
      .nonNulls
      .nullIfEmpty;
  @protected
  set $phoneEntries(v) => this.phoneEntries = letMap(v)
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
      .nullIfEmpty
      ?.cast();

  // deviceRegs.
  List<ModelDeviceRegistration>? get deviceRegsField => this.deviceRegs;
  set deviceRegsField(List<ModelDeviceRegistration>? v) => this.deviceRegs = v;
  @protected
  dynamic get $deviceRegs => this
      .deviceRegs
      ?.map(
        (p0) => p0?.toJson(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $deviceRegs(v) => this.deviceRegs = letList(v)
      ?.map(
        (p0) => () {
          final a = letMap<String, dynamic>(p0);
          return a != null ? ModelDeviceRegistration.fromJson(a) : null;
        }(),
      )
      .nonNulls
      .nullIfEmpty
      ?.toList()
      .cast();
}
