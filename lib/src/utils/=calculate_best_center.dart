//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// Calculates the best center for a set of [locations]. This is the geometric
/// center unless the distance to the closest marker is greater than the
/// [threshold], then the closest marker is used. The [unit] is the unit of
/// the threshold.
ModelLocation calculateBestCenter({
  required Set<ModelLocation> locations,
  required double threshold,
  required DistanceUnitType unit,
}) {
  if (locations.isEmpty) {
    return ModelLocation(latitude: 0.0, longitude: 0.0);
  }
  var center = calculateGeometricCenter(locations);
  var closestMarker = locations.first;
  var minDistance = calculateHavershire3DDistance(
    location1: center,
    location2: closestMarker,
    unit: unit,
  );
  for (final marker in locations.skip(1)) {
    final distance = calculateHavershire3DDistance(
      location1: center,
      location2: marker,
      unit: unit,
    );
    if (distance < minDistance) {
      closestMarker = marker;
      minDistance = distance;
    }
  }
  if (minDistance > threshold) {
    center = closestMarker;
  }
  return center;
}
