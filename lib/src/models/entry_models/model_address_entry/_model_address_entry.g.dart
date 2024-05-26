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

part of 'model_address_entry.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelAddressEntry extends _ModelAddressEntry {
  //
  //
  //

  static const K_ADDRESS_LINE_1 = 'address_line_1';
  static const K_ADDRESS_LINE_2 = 'address_line_2';
  static const K_CITY = 'city';
  static const K_COUNTRY = 'country';
  static const K_CREATED_AT = 'created_at';
  static const K_CREATED_BY = 'created_by';
  static const K_DELETED_AT = 'deleted_at';
  static const K_DELETED_BY = 'deleted_by';
  static const K_DESCRIPTION = 'description';
  static const K_ID = 'id';
  static const K_MODIFIED_AT = 'modified_at';
  static const K_MODIFIED_BY = 'modified_by';
  static const K_POSTAL_CODE = 'postal_code';
  static const K_REF = 'ref';
  static const K_STATE_OR_PROVINCE = 'state_or_province';
  static const K_TITLE = 'title';
  static const K_TITLE_SEARCHABLE = 'title_searchable';

  static const CLASS = 'ModelAddressEntry';

  @override
  String get $class => CLASS;

  String? addressLine1;
  String? addressLine2;
  String? city;
  String? country;
  DateTime? createdAt;
  String? createdBy;
  DateTime? deletedAt;
  String? deletedBy;
  String? description;
  String? id;
  DateTime? modifiedAt;
  String? modifiedBy;
  String? postalCode;
  DataRefModel? ref;
  String? stateOrProvince;
  String? title;
  String? titleSearchable;

  //
  //
  //

  ModelAddressEntry.empty();

  //
  //
  //

  factory ModelAddressEntry({
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? country,
    DateTime? createdAt,
    String? createdBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? description,
    String? id,
    DateTime? modifiedAt,
    String? modifiedBy,
    String? postalCode,
    required DataRefModel ref,
    String? stateOrProvince,
    String? title,
    String? titleSearchable,
  }) {
    return ModelAddressEntry.b(
      addressLine1: addressLine1,
      addressLine2: addressLine2,
      city: city,
      country: country,
      createdAt: createdAt,
      createdBy: createdBy,
      deletedAt: deletedAt,
      deletedBy: deletedBy,
      description: description,
      id: id,
      modifiedAt: modifiedAt,
      modifiedBy: modifiedBy,
      postalCode: postalCode,
      ref: ref,
      stateOrProvince: stateOrProvince,
      title: title,
      titleSearchable: titleSearchable,
    );
  }

  //
  //
  //

  ModelAddressEntry.b({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.country,
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.deletedBy,
    this.description,
    this.id,
    this.modifiedAt,
    this.modifiedBy,
    this.postalCode,
    this.ref,
    this.stateOrProvince,
    this.title,
    this.titleSearchable,
  }) {
    assert(ref != null);
  }

  //
  //
  //

  factory ModelAddressEntry.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelAddressEntry? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelAddressEntry.of(
    ModelAddressEntry other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelAddressEntry? ofOrNull(
    ModelAddressEntry? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelAddressEntry.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelAddressEntry? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelAddressEntry.fromJson(decoded);
      } else {
        return ModelAddressEntry.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelAddressEntry.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelAddressEntry? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelAddressEntry.empty()
        ..$addressLine1 = otherData?[K_ADDRESS_LINE_1]
        ..$addressLine2 = otherData?[K_ADDRESS_LINE_2]
        ..$city = otherData?[K_CITY]
        ..$country = otherData?[K_COUNTRY]
        ..$createdAt = otherData?[K_CREATED_AT]
        ..$createdBy = otherData?[K_CREATED_BY]
        ..$deletedAt = otherData?[K_DELETED_AT]
        ..$deletedBy = otherData?[K_DELETED_BY]
        ..$description = otherData?[K_DESCRIPTION]
        ..$id = otherData?[K_ID]
        ..$modifiedAt = otherData?[K_MODIFIED_AT]
        ..$modifiedBy = otherData?[K_MODIFIED_BY]
        ..$postalCode = otherData?[K_POSTAL_CODE]
        ..$ref = otherData?[K_REF]
        ..$stateOrProvince = otherData?[K_STATE_OR_PROVINCE]
        ..$title = otherData?[K_TITLE]
        ..$titleSearchable = otherData?[K_TITLE_SEARCHABLE];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelAddressEntry.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static ModelAddressEntry? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelAddressEntry.fromJson(uri.queryParameters);
      } else {
        return ModelAddressEntry.b();
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
        K_ADDRESS_LINE_1: this.$addressLine1,
        K_ADDRESS_LINE_2: this.$addressLine2,
        K_CITY: this.$city,
        K_COUNTRY: this.$country,
        K_CREATED_AT: this.$createdAt,
        K_CREATED_BY: this.$createdBy,
        K_DELETED_AT: this.$deletedAt,
        K_DELETED_BY: this.$deletedBy,
        K_DESCRIPTION: this.$description,
        K_ID: this.$id,
        K_MODIFIED_AT: this.$modifiedAt,
        K_MODIFIED_BY: this.$modifiedBy,
        K_POSTAL_CODE: this.$postalCode,
        K_REF: this.$ref,
        K_STATE_OR_PROVINCE: this.$stateOrProvince,
        K_TITLE: this.$title,
        K_TITLE_SEARCHABLE: this.$titleSearchable,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelAddressEntry.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelAddressEntry.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelAddressEntry.fromJson(otherData);
      if (other.addressLine1 != null) {
        this.addressLine1 = other.addressLine1!;
      }
      if (other.addressLine2 != null) {
        this.addressLine2 = other.addressLine2!;
      }
      if (other.city != null) {
        this.city = other.city!;
      }
      if (other.country != null) {
        this.country = other.country!;
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
      if (other.description != null) {
        this.description = other.description!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
      if (other.modifiedAt != null) {
        this.modifiedAt = other.modifiedAt!;
      }
      if (other.modifiedBy != null) {
        this.modifiedBy = other.modifiedBy!;
      }
      if (other.postalCode != null) {
        this.postalCode = other.postalCode!;
      }
      if (other.ref != null) {
        this.ref = other.ref!;
      }
      if (other.stateOrProvince != null) {
        this.stateOrProvince = other.stateOrProvince!;
      }
      if (other.title != null) {
        this.title = other.title!;
      }
      if (other.titleSearchable != null) {
        this.titleSearchable = other.titleSearchable!;
      }
    }
  }

  //
  //
  //

  // addressLine1.
  String? get addressLine1Field => this.addressLine1;
  set addressLine1Field(String? v) => this.addressLine1 = v;
  @protected
  dynamic get $addressLine1 => this.addressLine1?.toString().trim().nullIfEmpty;
  @protected
  set $addressLine1(v) => this.addressLine1 = v?.toString().trim().nullIfEmpty;

  // addressLine2.
  String? get addressLine2Field => this.addressLine2;
  set addressLine2Field(String? v) => this.addressLine2 = v;
  @protected
  dynamic get $addressLine2 => this.addressLine2?.toString().trim().nullIfEmpty;
  @protected
  set $addressLine2(v) => this.addressLine2 = v?.toString().trim().nullIfEmpty;

  // city.
  String? get cityField => this.city;
  set cityField(String? v) => this.city = v;
  @protected
  dynamic get $city => this.city?.toString().trim().nullIfEmpty;
  @protected
  set $city(v) => this.city = v?.toString().trim().nullIfEmpty;

  // country.
  String? get countryField => this.country;
  set countryField(String? v) => this.country = v;
  @protected
  dynamic get $country => this.country?.toString().trim().nullIfEmpty;
  @protected
  set $country(v) => this.country = v?.toString().trim().nullIfEmpty;

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

  // description.
  String? get descriptionField => this.description;
  set descriptionField(String? v) => this.description = v;
  @protected
  dynamic get $description => this.description?.toString().trim().nullIfEmpty;
  @protected
  set $description(v) => this.description = v?.toString().trim().nullIfEmpty;

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;

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

  // postalCode.
  String? get postalCodeField => this.postalCode;
  set postalCodeField(String? v) => this.postalCode = v;
  @protected
  dynamic get $postalCode => this.postalCode?.toString().trim().nullIfEmpty;
  @protected
  set $postalCode(v) => this.postalCode = v?.toString().trim().nullIfEmpty;

  // ref.
  DataRefModel get refField => this.ref!;
  set refField(DataRefModel v) => this.ref = v;
  @protected
  dynamic get $ref => (this.ref?.toJson())!;
  @protected
  set $ref(v) => this.ref = () {
        final a = letMap<String, dynamic>(v);
        return a != null ? DataRefModel.fromJson(a) : null;
      }();

  // stateOrProvince.
  String? get stateOrProvinceField => this.stateOrProvince;
  set stateOrProvinceField(String? v) => this.stateOrProvince = v;
  @protected
  dynamic get $stateOrProvince =>
      this.stateOrProvince?.toString().trim().nullIfEmpty;
  @protected
  set $stateOrProvince(v) =>
      this.stateOrProvince = v?.toString().trim().nullIfEmpty;

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
}
