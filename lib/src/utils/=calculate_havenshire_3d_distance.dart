//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'dart:math';

import '/_common.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// Calculate the distance between two locations using the Haversine formula
/// and optionally the elevation difference.
///
/// The Haversine formula calculates the shortest distance between two points
/// on a sphere.
///
/// The formula is:
///
/// ```txt
/// a = sin²(Δlat/2) + cos(lat1) * cos(lat2) * sin²(Δlon/2)
/// c = 2 * atan2(√a, √(1−a))
/// d = r * c
/// ```
///
/// The altitude is factored in by taking the square root of the sum of the
/// square of the flat distance and the square of the altitude difference.
///
/// **Parameters:**
///
/// - `location1` - The first location.
/// - `location2` - The second location.
/// - `unit` - The unit of distance to return. Default is `DistanceUnitType.METRES`.
/// - `radius` - The radius of the sphere. Default is `SphereRadius.EARTH`.
double calculateHavershire3DDistance({
  required ModelLocation location1,
  required ModelLocation location2,
  DistanceUnitType unit = DistanceUnitType.METRES,
  SphereRadius radius = SphereRadius.EARTH,
}) {
  final lat1 = location1.latitude ?? 0.0;
  final lon1 = location1.longitude ?? 0.0;
  final alt1 = location1.altitude ?? 0.0;
  final lat2 = location2.latitude ?? 0.0;
  final lon2 = location2.longitude ?? 0.0;
  final alt2 = location2.altitude ?? 0.0;
  final r = radius.radius;

  // Convert latitude and longitude from degrees to radians.
  final radLat1 = lat1 * pi / 180;
  final radLat2 = lat2 * pi / 180;
  final deltaLat = (lat2 - lat1) * pi / 180;
  final deltaLon = (lon2 - lon1) * pi / 180;

  // Calculate the horizontal distance using the Haversine formula.
  final a = sin(deltaLat / 2) * sin(deltaLat / 2) +
      cos(radLat1) * cos(radLat2) * sin(deltaLon / 2) * sin(deltaLon / 2);
  final c = 2 * atan2(sqrt(a), sqrt(1 - a));
  final d = r * c;

  // Calculate the difference in altitude.
  final deltaAlt = alt2 - alt1;

  // Calculate the total 3D distance.
  final d3d = sqrt(d * d + deltaAlt * deltaAlt);

  // Convert the distance based on the requested unit.
  switch (unit) {
    case DistanceUnitType.KILOMETRES:
      return d3d / 1000;
    case DistanceUnitType.MILES:
      return d3d / 1609.34;
    case DistanceUnitType.NAUTICAL_MILES:
      return d3d / 1852;
    case DistanceUnitType.FEET:
      return d3d * 3.28084; // 1 metre = 3.28084 feet
    case DistanceUnitType.YARDS:
      return d3d * 1.09361; // 1 metre = 1.09361 yards
    case DistanceUnitType.ASTRONOMICAL_UNITS:
      return d3d /
          149597870700; // 1 AU = 149,597,870,700 meters (approximate mean Earth-Sun distance)
    case DistanceUnitType.METRES:
    default:
      return d3d;
  }
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

enum DistanceUnitType {
  METRES,
  KILOMETRES,
  MILES,
  NAUTICAL_MILES,
  FEET,
  YARDS,
  ASTRONOMICAL_UNITS,
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

enum SphereRadius {
  //
  //
  //

  EARTH(6371e3),
  EARTH_MOON(1737.4e3),
  MARS(3389.5e3);

  //
  //
  //

  final double radius;

  //
  //
  //

  const SphereRadius(this.radius);

  //
  //
  //

  double get inMetres => radius;
  double get inKilometres => radius / 1000;
  double get inMiles => radius / 1609.34;
  double get inNauticalMiles => radius / 1852;
  double get inFeet => radius * 3.28084;
  double get inYards => radius * 1.09361;
  double get inAstronomicalUnits => radius / 149597870700;
}
