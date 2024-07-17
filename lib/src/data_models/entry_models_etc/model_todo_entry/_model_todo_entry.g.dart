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

part of 'model_todo_entry.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelTodoEntry extends _ModelTodoEntry {
  //
  //
  //

  static const CLASS_NAME = 'ModelTodoEntry';

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
  final Map<DateTime, String>? status;

  //
  //
  //

  const ModelTodoEntry({
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
    this.status,
  });

  const ModelTodoEntry.c2({
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
    this.status,
  });

  factory ModelTodoEntry.c3({
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
    Map<DateTime, String>? status,
  }) {
    return ModelTodoEntry(
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
      status: status,
    );
  }

  factory ModelTodoEntry.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelTodoEntry.from: $e');
      rethrow;
    }
  }

  static ModelTodoEntry? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory ModelTodoEntry.of(
    ModelTodoEntry other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelTodoEntry.of: $e');
      rethrow;
    }
  }

  static ModelTodoEntry? ofOrNull(
    ModelTodoEntry? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory ModelTodoEntry.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelTodoEntry.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelTodoEntry? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelTodoEntry.fromJson(decoded);
      } else {
        return const ModelTodoEntry.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory ModelTodoEntry.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelTodoEntry.fromJson: $e');
      rethrow;
    }
  }

  static ModelTodoEntry? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final id0 = otherData?[ModelTodoEntryFields.id.name];
      final id = id0?.toString().trim().nullIfEmpty;
      final ref0 = otherData?[ModelTodoEntryFields.ref.name];
      final ref = () {
        final a = letMap<String, dynamic>(ref0);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();
      final displayName0 = otherData?[ModelTodoEntryFields.displayName.name];
      final displayName = () {
        final a = letMap<String, dynamic>(displayName0);
        return a != null ? ModelQueryable.fromJson(a) : null;
      }();
      final displayColor0 = otherData?[ModelTodoEntryFields.displayColor.name];
      final displayColor = () {
        final a = letAs<int>(displayColor0);
        return a is int ? Color(a) : null;
      }();
      final description0 = otherData?[ModelTodoEntryFields.description.name];
      final description = description0?.toString().trim().nullIfEmpty;
      final archivedGReg0 = otherData?[ModelTodoEntryFields.archivedGReg.name];
      final archivedGReg = () {
        final a = letMap<String, dynamic>(archivedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final createdGReg0 = otherData?[ModelTodoEntryFields.createdGReg.name];
      final createdGReg = () {
        final a = letMap<String, dynamic>(createdGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final deletedGReg0 = otherData?[ModelTodoEntryFields.deletedGReg.name];
      final deletedGReg = () {
        final a = letMap<String, dynamic>(deletedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final updatedGReg0 = otherData?[ModelTodoEntryFields.updatedGReg.name];
      final updatedGReg = () {
        final a = letMap<String, dynamic>(updatedGReg0);
        return a != null ? ModelRegistration.fromJson(a) : null;
      }();
      final expiresAt0 = otherData?[ModelTodoEntryFields.expiresAt.name];
      final expiresAt = () {
        final a = expiresAt0;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();
      final status0 = otherData?[ModelTodoEntryFields.status.name];
      final status = letMap(status0)
          ?.map(
            (p0, p1) => MapEntry(
              () {
                final a = p0;
                return a != null ? DateTime.tryParse(a)?.toUtc() : null;
              }(),
              p1?.toString().trim().nullIfEmpty,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      return ModelTodoEntry(
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
        status: status,
      );
    } catch (e) {
      return null;
    }
  }

  factory ModelTodoEntry.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelTodoEntry.fromUri: $e');
      rethrow;
    }
  }

  static ModelTodoEntry? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return ModelTodoEntry.fromJson(uri.queryParameters);
      } else {
        return const ModelTodoEntry.c2();
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
      final status0 = this
          .status
          ?.map(
            (p0, p1) => MapEntry(
              p0?.toUtc()?.toIso8601String(),
              p1?.trim().nullIfEmpty,
            ),
          )
          .nonNulls
          .nullIfEmpty;
      final withNulls = <String, dynamic>{
        ModelTodoEntryFields.id.name: id0,
        ModelTodoEntryFields.ref.name: ref0,
        ModelTodoEntryFields.displayName.name: displayName0,
        ModelTodoEntryFields.displayColor.name: displayColor0,
        ModelTodoEntryFields.description.name: description0,
        ModelTodoEntryFields.archivedGReg.name: archivedGReg0,
        ModelTodoEntryFields.createdGReg.name: createdGReg0,
        ModelTodoEntryFields.deletedGReg.name: deletedGReg0,
        ModelTodoEntryFields.updatedGReg.name: updatedGReg0,
        ModelTodoEntryFields.expiresAt.name: expiresAt0,
        ModelTodoEntryFields.status.name: status0,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelTodoEntry.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  ModelTodoEntry copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return ModelTodoEntry.fromJson(c);
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

  // status.
  Map<DateTime, String>? get statusField => this.status;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

enum ModelTodoEntryFields {
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
  status(
    const Field(
      fieldName: 'status',
      fieldType: 'Map<DateTime, String>',
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

  const ModelTodoEntryFields(this.field);

  //
  //
  //

  String get fieldName => this.field.fieldName!;
}
