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

part of 'model_location.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelLocation extends Model {
  //
  //
  //

  static const CLASS_NAME = 'ModelLocation';

  @override
  String get $className => CLASS_NAME;

  final double? altitude;
  final double? latitude;
  final double? longitude;

  //
  //
  //

  const ModelLocation({
    required this.altitude,
    required this.latitude,
    required this.longitude,
  });

  const ModelLocation.c2({
    this.altitude,
    this.latitude,
    this.longitude,
  });

  factory ModelLocation.c3({
    double? altitude,
    double? latitude,
    double? longitude,
  }) {
    assert(altitude != null);
    assert(latitude != null);
    assert(longitude != null);
    return ModelLocation(
      altitude: altitude,
      latitude: latitude,
      longitude: longitude,
    );
  }

  factory ModelLocation.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelLocation.from: $e');
      rethrow;
    }
  }

  static ModelLocation? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory ModelLocation.of(
    ModelLocation other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelLocation.of: $e');
      rethrow;
    }
  }

  static ModelLocation? ofOrNull(
    ModelLocation? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory ModelLocation.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelLocation.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelLocation? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelLocation.fromJson(decoded);
      } else {
        return const ModelLocation.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory ModelLocation.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelLocation.fromJson: $e');
      rethrow;
    }
  }

  static ModelLocation? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final altitude0 = otherData?['altitude'];
      final altitude = letDouble(altitude0);
      final latitude0 = otherData?['latitude'];
      final latitude = letDouble(latitude0);
      final longitude0 = otherData?['longitude'];
      final longitude = letDouble(longitude0);
      return ModelLocation(
        altitude: altitude,
        latitude: latitude,
        longitude: longitude,
      );
    } catch (e) {
      return null;
    }
  }

  factory ModelLocation.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelLocation.fromUri: $e');
      rethrow;
    }
  }

  static ModelLocation? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return ModelLocation.fromJson(uri.queryParameters);
      } else {
        return const ModelLocation.c2();
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
      final altitude0 = this.altitude;
      final latitude0 = this.latitude;
      final longitude0 = this.longitude;
      final withNulls = mergeMapsDeep([
        {
          'altitude': altitude0,
        },
        {
          'latitude': latitude0,
        },
        {
          'longitude': longitude0,
        },
      ]).mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelLocation.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  ModelLocation copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return ModelLocation.fromJson(c);
  }

  //
  //
  //

  // altitude.
  double get altitudeField => this.altitude!;

  // latitude.
  double get latitudeField => this.latitude!;

  // longitude.
  double get longitudeField => this.longitude!;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class ModelLocationFieldNames {
  //
  //
  //

  static const altitude = 'altitude';
  static const latitude = 'latitude';
  static const longitude = 'longitude';

  //
  //
  //

  const ModelLocationFieldNames._();
}
