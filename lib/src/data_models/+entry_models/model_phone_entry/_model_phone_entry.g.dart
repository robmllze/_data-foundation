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

part of 'model_phone_entry.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelPhoneEntry extends _ModelPhoneEntry {
  //
  //
  //

  static const K_REF = 'ref';
  static const K_ID = 'id';
  static const K_TITLE = 'title';
  static const K_TITLE_SEARCHABLE = 'titleSearchable';
  static const K_DESCRIPTION = 'description';
  static const K_CREATED_AT = 'createdAt';
  static const K_CREATED_BY = 'createdBy';
  static const K_DELETED_AT = 'deletedAt';
  static const K_DELETED_BY = 'deletedBy';
  static const K_MODIFIED_AT = 'modifiedAt';
  static const K_MODIFIED_BY = 'modifiedBy';
  static const K_COUNTRY_CODE = 'countryCode';
  static const K_NUMBER_WITHOUT_COUNTRY_CODE = 'numberWithoutCountryCode';
  static const K_FULL_NUMBER = 'fullNumber';
  static const K_EXTENSION = 'extension';
  static const K_TYPE = 'type';

  static const CLASS = 'ModelPhoneEntry';

  @override
  String get $class => CLASS;

  DataRefModel? ref;
  String? id;
  String? title;
  String? titleSearchable;
  String? description;
  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;
  DateTime? modifiedAt;
  String? modifiedBy;
  String? countryCode;
  String? numberWithoutCountryCode;
  String? fullNumber;
  String? extension;
  String? type;

  //
  //
  //

  ModelPhoneEntry.empty();

  //
  //
  //

  factory ModelPhoneEntry({
    required DataRefModel ref,
    String? id,
    String? title,
    String? titleSearchable,
    String? description,
    DateTime? createdAt,
    String? createdBy,
    DateTime? deletedAt,
    String? deletedBy,
    DateTime? modifiedAt,
    String? modifiedBy,
    String? countryCode,
    String? numberWithoutCountryCode,
    String? fullNumber,
    String? extension,
    String? type,
  }) {
    return ModelPhoneEntry.b(
      ref: ref,
      id: id,
      title: title,
      titleSearchable: titleSearchable,
      description: description,
      createdAt: createdAt,
      createdBy: createdBy,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      modifiedAt: modifiedAt,
      modifiedBy: modifiedBy,
      countryCode: countryCode,
      numberWithoutCountryCode: numberWithoutCountryCode,
      fullNumber: fullNumber,
      extension: extension,
      type: type,
    );
  }

  //
  //
  //

  ModelPhoneEntry.b({
    this.ref,
    this.id,
    this.title,
    this.titleSearchable,
    this.description,
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.deletedBy,
    this.modifiedAt,
    this.modifiedBy,
    this.countryCode,
    this.numberWithoutCountryCode,
    this.fullNumber,
    this.extension,
    this.type,
  }) {
    assert(this.id != null);
    assert(this.title != null);
    assert(this.titleSearchable != null);
    assert(this.description != null);
    assert(this.createdAt != null);
    assert(this.createdBy != null);
    assert(this.deletedAt != null);
    assert(this.deletedBy != null);
    assert(this.modifiedAt != null);
    assert(this.modifiedBy != null);
    assert(this.countryCode != null);
    assert(this.numberWithoutCountryCode != null);
    assert(this.fullNumber != null);
    assert(this.extension != null);
    assert(this.type != null);
  }

  //
  //
  //

  factory ModelPhoneEntry.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelPhoneEntry.from: $e');
      rethrow;
    }
  }

  static ModelPhoneEntry? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelPhoneEntry.of(
    ModelPhoneEntry other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelPhoneEntry.of: $e');
      rethrow;
    }
  }

  static ModelPhoneEntry? ofOrNull(
    ModelPhoneEntry? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelPhoneEntry.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelPhoneEntry.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelPhoneEntry? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelPhoneEntry.fromJson(decoded);
      } else {
        return ModelPhoneEntry.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelPhoneEntry.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelPhoneEntry.fromJson: $e');
      rethrow;
    }
  }

  static ModelPhoneEntry? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelPhoneEntry.empty()
        ..$ref = otherData?[K_REF]
        ..$id = otherData?[K_ID]
        ..$title = otherData?[K_TITLE]
        ..$titleSearchable = otherData?[K_TITLE_SEARCHABLE]
        ..$description = otherData?[K_DESCRIPTION]
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$modifiedAt = otherData?[K_MODIFIED_AT]
        ..$modifiedBy = otherData?[K_MODIFIED_BY]
        ..$countryCode = otherData?[K_COUNTRY_CODE]
        ..$numberWithoutCountryCode = otherData?[K_NUMBER_WITHOUT_COUNTRY_CODE]
        ..$fullNumber = otherData?[K_FULL_NUMBER]
        ..$extension = otherData?[K_EXTENSION]
        ..$type = otherData?[K_TYPE];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelPhoneEntry.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelPhoneEntry.fromUri: $e');
      rethrow;
    }
  }

  static ModelPhoneEntry? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelPhoneEntry.fromJson(uri.queryParameters);
      } else {
        return ModelPhoneEntry.empty();
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
        K_TITLE: this.$title,
        K_TITLE_SEARCHABLE: this.$titleSearchable,
        K_DESCRIPTION: this.$description,
        K_CREATED_AT: this.$createdAt,
        K_CREATED_BY: this.$createdBy,
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
        K_MODIFIED_AT: this.$modifiedAt,
        K_MODIFIED_BY: this.$modifiedBy,
        K_COUNTRY_CODE: this.$countryCode,
        K_NUMBER_WITHOUT_COUNTRY_CODE: this.$numberWithoutCountryCode,
        K_FULL_NUMBER: this.$fullNumber,
        K_EXTENSION: this.$extension,
        K_TYPE: this.$type,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelPhoneEntry.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelPhoneEntry.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelPhoneEntry.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelPhoneEntry.fromJson(otherData);
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.title != null) {
        this.title = other.title!;
      }
      if (other.titleSearchable != null) {
        this.titleSearchable = other.titleSearchable!;
      }
      if (other.description != null) {
        this.description = other.description!;
      }
      if (other.createdAt != null) {
        this.createdAt = other.createdAt!;
      }
      if (other.createdBy != null) {
        this.createdBy = other.createdBy!;
      }
      if (other.deletedAt != null) {
        this.deletedAt = other.deletedAt!;
      }
      if (other.deletedBy != null) {
        this.deletedBy = other.deletedBy!;
      }
      if (other.modifiedAt != null) {
        this.modifiedAt = other.modifiedAt!;
      }
      if (other.modifiedBy != null) {
        this.modifiedBy = other.modifiedBy!;
      }
      if (other.countryCode != null) {
        this.countryCode = other.countryCode!;
      }
      if (other.numberWithoutCountryCode != null) {
        this.numberWithoutCountryCode = other.numberWithoutCountryCode!;
      }
      if (other.fullNumber != null) {
        this.fullNumber = other.fullNumber!;
      }
      if (other.extension != null) {
        this.extension = other.extension!;
      }
      if (other.type != null) {
        this.type = other.type!;
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

  // title.
  String? get titleField => this.title;
  set titleField(String? v) => this.title = v;
  @protected
  dynamic get $title => this.title?.toString().trim().nullIfEmpty;
  @protected
  set $title(v) => this.title = v?.toString().trim().nullIfEmpty;

  // titleSearchable.
  String? get titleSearchableField => this.titleSearchable;
  set titleSearchableField(String? v) => this.titleSearchable = v;
  @protected
  dynamic get $titleSearchable => this
      .titleSearchable
      ?.toString()
      .trim()
      .nullIfEmpty
      ?.toLowerCase()
      .replaceAll(r'[^\w]', '');
  @protected
  set $titleSearchable(v) => this.titleSearchable =
      v?.toString().trim().nullIfEmpty?.toLowerCase().replaceAll(r'[^\w]', '');

  // description.
  String? get descriptionField => this.description;
  set descriptionField(String? v) => this.description = v;
  @protected
  dynamic get $description => this.description?.toString().trim().nullIfEmpty;
  @protected
  set $description(v) => this.description = v?.toString().trim().nullIfEmpty;

  // createdAt.
  DateTime? get createdAtField => this.createdAt;
  set createdAtField(DateTime? v) => this.createdAt = v;
  @protected
  dynamic get $createdAt => this.createdAt?.toUtc()?.toIso8601String();
  @protected
  set $createdAt(v) => this.createdAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();

  // createdBy.
  String? get createdByField => this.createdBy;
  set createdByField(String? v) => this.createdBy = v;
  @protected
  dynamic get $createdBy => this.createdBy?.toString().trim().nullIfEmpty;
  @protected
  set $createdBy(v) => this.createdBy = v?.toString().trim().nullIfEmpty;

  // deletedAt.
  DateTime? get deletedAtField => this.deletedAt;
  set deletedAtField(DateTime? v) => this.deletedAt = v;
  @protected
  dynamic get $deletedAt => this.deletedAt?.toUtc()?.toIso8601String();
  @protected
  set $deletedAt(v) => this.deletedAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();

  // deletedBy.
  String? get deletedByField => this.deletedBy;
  set deletedByField(String? v) => this.deletedBy = v;
  @protected
  dynamic get $deletedBy => this.deletedBy?.toString().trim().nullIfEmpty;
  @protected
  set $deletedBy(v) => this.deletedBy = v?.toString().trim().nullIfEmpty;

  // modifiedAt.
  DateTime? get modifiedAtField => this.modifiedAt;
  set modifiedAtField(DateTime? v) => this.modifiedAt = v;
  @protected
  dynamic get $modifiedAt => this.modifiedAt?.toUtc()?.toIso8601String();
  @protected
  set $modifiedAt(v) => this.modifiedAt = () {
        final a = v;
        return a != null ? DateTime.tryParse(a)?.toUtc() : null;
      }();

  // modifiedBy.
  String? get modifiedByField => this.modifiedBy;
  set modifiedByField(String? v) => this.modifiedBy = v;
  @protected
  dynamic get $modifiedBy => this.modifiedBy?.toString().trim().nullIfEmpty;
  @protected
  set $modifiedBy(v) => this.modifiedBy = v?.toString().trim().nullIfEmpty;

  // countryCode.
  String? get countryCodeField => this.countryCode;
  set countryCodeField(String? v) => this.countryCode = v;
  @protected
  dynamic get $countryCode => this.countryCode?.toString().trim().nullIfEmpty;
  @protected
  set $countryCode(v) => this.countryCode = v?.toString().trim().nullIfEmpty;

  // numberWithoutCountryCode.
  String? get numberWithoutCountryCodeField => this.numberWithoutCountryCode;
  set numberWithoutCountryCodeField(String? v) =>
      this.numberWithoutCountryCode = v;
  @protected
  dynamic get $numberWithoutCountryCode =>
      this.numberWithoutCountryCode?.toString().trim().nullIfEmpty;
  @protected
  set $numberWithoutCountryCode(v) =>
      this.numberWithoutCountryCode = v?.toString().trim().nullIfEmpty;

  // fullNumber.
  String? get fullNumberField => this.fullNumber;
  set fullNumberField(String? v) => this.fullNumber = v;
  @protected
  dynamic get $fullNumber => this.fullNumber?.toString().trim().nullIfEmpty;
  @protected
  set $fullNumber(v) => this.fullNumber = v?.toString().trim().nullIfEmpty;

  // extension.
  String? get extensionField => this.extension;
  set extensionField(String? v) => this.extension = v;
  @protected
  dynamic get $extension => this.extension?.toString().trim().nullIfEmpty;
  @protected
  set $extension(v) => this.extension = v?.toString().trim().nullIfEmpty;

  // type.
  String? get typeField => this.type;
  set typeField(String? v) => this.type = v;
  @protected
  dynamic get $type => this.type?.toString().trim().nullIfEmpty;
  @protected
  set $type(v) => this.type = v?.toString().trim().nullIfEmpty;
}
