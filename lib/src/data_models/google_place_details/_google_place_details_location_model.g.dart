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

class GooglePlaceDetailsLocationModel extends _GooglePlaceDetailsLocationModel {
  //
  //
  //

  static const CLASS_NAME = 'GooglePlaceDetailsLocationModel';

  @override
  String get $className => CLASS_NAME;

  final double? lat;
  final double? lng;

  //
  //
  //

  const GooglePlaceDetailsLocationModel({
    required this.lat,
    required this.lng,
  });

  const GooglePlaceDetailsLocationModel.c2({
    this.lat,
    this.lng,
  });

  factory GooglePlaceDetailsLocationModel.c3({
    double? lat,
    double? lng,
  }) {
    assert(lat != null);
    assert(lng != null);
    return GooglePlaceDetailsLocationModel(
      lat: lat,
      lng: lng,
    );
  }

  factory GooglePlaceDetailsLocationModel.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsLocationModel.from: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsLocationModel? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory GooglePlaceDetailsLocationModel.of(
    GooglePlaceDetailsLocationModel other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsLocationModel.of: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsLocationModel? ofOrNull(
    GooglePlaceDetailsLocationModel? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory GooglePlaceDetailsLocationModel.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsLocationModel.fromJsonString: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsLocationModel? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return GooglePlaceDetailsLocationModel.fromJson(decoded);
      } else {
        return const GooglePlaceDetailsLocationModel.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory GooglePlaceDetailsLocationModel.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsLocationModel.fromJson: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsLocationModel? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final lat0 = otherData?['lat'];
      final lat = letDouble(lat0);
      final lng0 = otherData?['lng'];
      final lng = letDouble(lng0);
      return GooglePlaceDetailsLocationModel(
        lat: lat,
        lng: lng,
      );
    } catch (e) {
      return null;
    }
  }

  factory GooglePlaceDetailsLocationModel.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsLocationModel.fromUri: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsLocationModel? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return GooglePlaceDetailsLocationModel.fromJson(uri.queryParameters);
      } else {
        return const GooglePlaceDetailsLocationModel.c2();
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
      final lat0 = this.lat;
      final lng0 = this.lng;
      final withNulls = mergeMapsDeep([
        {
          'lat': lat0,
        },
        {
          'lng': lng0,
        },
      ]).mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsLocationModel.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  GooglePlaceDetailsLocationModel copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return GooglePlaceDetailsLocationModel.fromJson(c);
  }

  //
  //
  //

  // lat.
  double get latField => this.lat!;

  // lng.
  double get lngField => this.lng!;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class GooglePlaceDetailsLocationModelFieldNames {
  //
  //
  //

  static const lat = 'lat';
  static const lng = 'lng';

  //
  //
  //

  const GooglePlaceDetailsLocationModelFieldNames._();
}