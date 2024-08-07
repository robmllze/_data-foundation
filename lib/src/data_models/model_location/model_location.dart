//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY XYZ_GENIE
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

part '_model_location.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  fields: {
    ('altitude', double),
    ('latitude', double),
    ('longitude', double),
  },
)
// ignore: unused_element
abstract class _ModelLocation {}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension ModelLocationExtension on ModelLocation {
  //
  //
  //

  TLocationComponents? get components {
    if (this.nullIfInvalid == null) {
      return null;
    }
    return (
      altitude: this.altitude!,
      latitude: this.latitude!,
      longitude: this.longitude!,
    );
  }

  //
  //
  //

  ModelLocation? get nullIfInvalid {
    if (latitude == null || longitude == null) {
      return null;
    }
    return this;
  }

  //
  //
  //

  /// Returns the distance to another location on Earth in meters.
  double getDistanceToInMetres(ModelLocation other) {
    return LocationUtils().calculateHavershire3DDistance(
      location1: this.components!,
      location2: other.components!,
    );
  }

  //
  //
  //

  Uri getGoogleMapsUri() {
    return Uri.https(
      'www.google.com',
      '/maps',
      {
        // Query the location.
        'q': '$latitude,$longitude',
        // Center the map.
        'll': '$latitude,$longitude',
        // Zoom level.
        'z': '30',
        // 'k' for satellite.
        't': 'k',
      },
    );
  }

  //
  //
  //

  Uri getAppleMapsUri() {
    return Uri.https(
      'maps.apple.com',
      '/',
      {
        // Query the location.
        'q': '$latitude,$longitude',
        // 'k' for satellite.
        't': 'k',
      },
    );
  }

  //
  //
  //

  Uri getBingMapsUri() {
    return Uri.https(
      'www.bing.com',
      '/maps',
      {
        // Center point.
        'cp': '$latitude~$longitude',
        // Zoom level.
        'lvl': '18',
        // 'h' for aerial, 'r' for road.
        'style': 'h',
      },
    );
  }
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension ToModelLocationOnTLocationExtension on TLocationComponents {
  ModelLocation toModelLocation() {
    return ModelLocation(
      altitude: this.altitude,
      latitude: this.latitude,
      longitude: this.longitude,
    );
  }
}
