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

part of 'model_file_entry.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelFileEntry extends _ModelFileEntry {
  //
  //
  //

  static const CLASS_NAME = 'ModelFileEntry';

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
  final String? name;
  final Uri? downloadUrl;
  final String? storagePath;
  final List<String>? definitionPath;
  final int? size;
  final String? extension;

  //
  //
  //

  const ModelFileEntry({
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
    this.name,
    this.downloadUrl,
    this.storagePath,
    this.definitionPath,
    this.size,
    this.extension,
  });

  const ModelFileEntry.c2({
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
    this.name,
    this.downloadUrl,
    this.storagePath,
    this.definitionPath,
    this.size,
    this.extension,
  });

  factory ModelFileEntry.c3({
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
    String? name,
    Uri? downloadUrl,
    String? storagePath,
    List<String>? definitionPath,
    int? size,
    String? extension,
  }) {
    return ModelFileEntry(
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
      name: name,
      downloadUrl: downloadUrl,
      storagePath: storagePath,
      definitionPath: definitionPath,
      size: size,
      extension: extension,
    );
  }

  factory ModelFileEntry.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelFileEntry.from: $e');
      rethrow;
    }
  }

  static ModelFileEntry? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory ModelFileEntry.of(
    ModelFileEntry other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelFileEntry.of: $e');
      rethrow;
    }
  }

  static ModelFileEntry? ofOrNull(
    ModelFileEntry? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory ModelFileEntry.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelFileEntry.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelFileEntry? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelFileEntry.fromJson(decoded);
      } else {
        return const ModelFileEntry.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory ModelFileEntry.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelFileEntry.fromJson: $e');
      rethrow;
    }
  }

  static ModelFileEntry? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final id0 = otherData?[ModelFileEntryFields.id.name];
      final id = id0?.toString().trim().nullIfEmpty;
      final ref0 = otherData?[ModelFileEntryFields.ref.name];
      final ref = () {
        final a = letMap<String, dynamic>(ref0);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();
      final displayName0 = otherData?[ModelFileEntryFields.displayName.name];
      final displayName = () {
        final a = letMap<String, dynamic>(displayName0);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();
      final displayColor0 = otherData?[ModelFileEntryFields.displayColor.name];
      final displayColor = () {
        final a = letAs<int>(displayColor0);
        return a is int ? Color(a) : null;
      }();
      final description0 = otherData?[ModelFileEntryFields.description.name];
      final description = description0?.toString().trim().nullIfEmpty;
      final archivedGReg0 = otherData?[ModelFileEntryFields.archivedGReg.name];
      final archivedGReg = () {
        final a = letMap<String, dynamic>(archivedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final createdGReg0 = otherData?[ModelFileEntryFields.createdGReg.name];
      final createdGReg = () {
        final a = letMap<String, dynamic>(createdGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final deletedGReg0 = otherData?[ModelFileEntryFields.deletedGReg.name];
      final deletedGReg = () {
        final a = letMap<String, dynamic>(deletedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final updatedGReg0 = otherData?[ModelFileEntryFields.updatedGReg.name];
      final updatedGReg = () {
        final a = letMap<String, dynamic>(updatedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final expiresAt0 = otherData?[ModelFileEntryFields.expiresAt.name];
      final expiresAt = () {
        final a = expiresAt0;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();
      final name0 = otherData?[ModelFileEntryFields.name.name];
      final name = name0?.toString().trim().nullIfEmpty;
      final downloadUrl0 = otherData?[ModelFileEntryFields.downloadUrl.name];
      final downloadUrl = () {
        final a = downloadUrl0;
        return a is String ? a.trim().nullIfEmpty?.toUriOrNull() : null;
      }();
      final storagePath0 = otherData?[ModelFileEntryFields.storagePath.name];
      final storagePath = storagePath0?.toString().trim().nullIfEmpty;
      final definitionPath0 =
          otherData?[ModelFileEntryFields.definitionPath.name];
      final definitionPath = letList(definitionPath0)
          ?.map(
            (p0) => p0?.toString().trim().nullIfEmpty,
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final size0 = otherData?[ModelFileEntryFields.size.name];
      final size = letInt(size0);
      final extension0 = otherData?[ModelFileEntryFields.extension.name];
      final extension =
          extension0?.toString().trim().nullIfEmpty?.toLowerCase();
      return ModelFileEntry(
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
        name: name,
        downloadUrl: downloadUrl,
        storagePath: storagePath,
        definitionPath: definitionPath,
        size: size,
        extension: extension,
      );
    } catch (e) {
      return null;
    }
  }

  factory ModelFileEntry.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelFileEntry.fromUri: $e');
      rethrow;
    }
  }

  static ModelFileEntry? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return ModelFileEntry.fromJson(uri.queryParameters);
      } else {
        return const ModelFileEntry.c2();
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
      final name0 = this.name?.trim().nullIfEmpty;
      final downloadUrl0 = this.downloadUrl?.toString();
      final storagePath0 = this.storagePath?.trim().nullIfEmpty;
      final definitionPath0 = this
          .definitionPath
          ?.map(
            (p0) => p0?.trim().nullIfEmpty,
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final size0 = this.size;
      final extension0 = this.extension?.trim().nullIfEmpty?.toLowerCase();
      final withNulls = <String, dynamic>{
        ModelFileEntryFields.id.name: id0,
        ModelFileEntryFields.ref.name: ref0,
        ModelFileEntryFields.displayName.name: displayName0,
        ModelFileEntryFields.displayColor.name: displayColor0,
        ModelFileEntryFields.description.name: description0,
        ModelFileEntryFields.archivedGReg.name: archivedGReg0,
        ModelFileEntryFields.createdGReg.name: createdGReg0,
        ModelFileEntryFields.deletedGReg.name: deletedGReg0,
        ModelFileEntryFields.updatedGReg.name: updatedGReg0,
        ModelFileEntryFields.expiresAt.name: expiresAt0,
        ModelFileEntryFields.name.name: name0,
        ModelFileEntryFields.downloadUrl.name: downloadUrl0,
        ModelFileEntryFields.storagePath.name: storagePath0,
        ModelFileEntryFields.definitionPath.name: definitionPath0,
        ModelFileEntryFields.size.name: size0,
        ModelFileEntryFields.extension.name: extension0,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelFileEntry.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  ModelFileEntry copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return ModelFileEntry.fromJson(c);
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

  // name.
  String? get nameField => this.name;

  // downloadUrl.
  Uri? get downloadUrlField => this.downloadUrl;

  // storagePath.
  String? get storagePathField => this.storagePath;

  // definitionPath.
  List<String>? get definitionPathField => this.definitionPath;

  // size.
  int? get sizeField => this.size;

  // extension.
  String? get extensionField => this.extension;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

enum ModelFileEntryFields {
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
  name(
    const Field(
      fieldName: 'name',
      fieldType: 'String',
      nullable: true,
    ),
  ),
  downloadUrl(
    const Field(
      fieldName: 'downloadUrl',
      fieldType: 'Uri',
      nullable: true,
    ),
  ),
  storagePath(
    const Field(
      fieldName: 'storagePath',
      fieldType: 'String',
      nullable: true,
    ),
  ),
  definitionPath(
    const Field(
      fieldName: 'definitionPath',
      fieldType: 'List<String>',
      nullable: true,
    ),
  ),
  size(
    const Field(
      fieldName: 'size',
      fieldType: 'int',
      nullable: true,
    ),
  ),
  extension(
    const Field(
      fieldName: 'extension',
      fieldType: 'LowerCase-String',
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

  const ModelFileEntryFields(this.field);

  //
  //
  //

  String get fieldName => this.field.fieldName!;
}
