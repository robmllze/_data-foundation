//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY 🇽🇾🇿 GEN - DO NOT MODIFY BY HAND
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

// ignore_for_file: annotate_overrides
// ignore_for_file: invalid_null_aware_operator
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_non_null_assertion
// ignore_for_file: unnecessary_null_comparison
// ignore_for_file: unnecessary_question_mark
// ignore_for_file: unnecessary_this

part of 'google_place_details.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class GooglePlaceDetailsAddressComponentModel
    extends _GooglePlaceDetailsAddressComponentModel {
  //
  //
  //

  static const CLASS_NAME = 'GooglePlaceDetailsAddressComponentModel';

  @override
  String get $className => CLASS_NAME;

  final String? longName;
  final String? shortName;
  final List<String>? types;

  //
  //
  //

  const GooglePlaceDetailsAddressComponentModel({
    required this.longName,
    required this.shortName,
    required this.types,
  });

  const GooglePlaceDetailsAddressComponentModel.c2({
    this.longName,
    this.shortName,
    this.types,
  });

  factory GooglePlaceDetailsAddressComponentModel.c3({
    String? longName,
    String? shortName,
    List<String>? types,
  }) {
    assert(longName != null);
    assert(shortName != null);
    assert(types != null);
    return GooglePlaceDetailsAddressComponentModel(
      longName: longName,
      shortName: shortName,
      types: types,
    );
  }

  factory GooglePlaceDetailsAddressComponentModel.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsAddressComponentModel.from: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsAddressComponentModel? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory GooglePlaceDetailsAddressComponentModel.of(
    GooglePlaceDetailsAddressComponentModel other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsAddressComponentModel.of: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsAddressComponentModel? ofOrNull(
    GooglePlaceDetailsAddressComponentModel? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory GooglePlaceDetailsAddressComponentModel.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(
          false, 'GooglePlaceDetailsAddressComponentModel.fromJsonString: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsAddressComponentModel? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return GooglePlaceDetailsAddressComponentModel.fromJson(decoded);
      } else {
        return const GooglePlaceDetailsAddressComponentModel.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory GooglePlaceDetailsAddressComponentModel.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsAddressComponentModel.fromJson: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsAddressComponentModel? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final longName0 = otherData?['long_name'];
      final longName = longName0?.toString().trim().nullIfEmpty;
      final shortName0 = otherData?['short_name'];
      final shortName = shortName0?.toString().trim().nullIfEmpty;
      final types0 = otherData?['types'];
      final types = letList(types0)
          ?.map(
            (p0) => p0?.toString().trim().nullIfEmpty,
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      return GooglePlaceDetailsAddressComponentModel(
        longName: longName,
        shortName: shortName,
        types: types,
      );
    } catch (e) {
      return null;
    }
  }

  factory GooglePlaceDetailsAddressComponentModel.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsAddressComponentModel.fromUri: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsAddressComponentModel? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return GooglePlaceDetailsAddressComponentModel.fromJson(
            uri.queryParameters);
      } else {
        return const GooglePlaceDetailsAddressComponentModel.c2();
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
      final longName0 = this.longName?.trim().nullIfEmpty;
      final shortName0 = this.shortName?.trim().nullIfEmpty;
      final types0 = this
          .types
          ?.map(
            (p0) => p0?.trim().nullIfEmpty,
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final withNulls = mergeMapsDeep([
        {
          'long_name': longName0,
        },
        {
          'short_name': shortName0,
        },
        {
          'types': types0,
        },
      ]).mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsAddressComponentModel.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  GooglePlaceDetailsAddressComponentModel copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return GooglePlaceDetailsAddressComponentModel.fromJson(c);
  }

  //
  //
  //

  // longName.
  String get longNameField => this.longName!;

  // shortName.
  String get shortNameField => this.shortName!;

  // types.
  List<String> get typesField => this.types!;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class GooglePlaceDetailsAddressComponentModelFieldNames {
  //
  //
  //

  static const longName = 'long_name';
  static const shortName = 'short_name';
  static const types = 'types';

  //
  //
  //

  const GooglePlaceDetailsAddressComponentModelFieldNames._();
}