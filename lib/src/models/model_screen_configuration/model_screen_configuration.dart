//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:flutter/material.dart' show Widget;

import '/_common.dart';

part '_model_screen_configuration.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    'arguments': 'Map<dynamic, dynamic>?',
    'is_accessible_only_if_logged_in': 'bool?',
    'is_accessible_only_if_logged_in_and_verified': 'bool?',
    'is_accessible_only_if_logged_out': 'bool?',
    'is_redirectable': 'bool?',
    'makeup': 'dynamic',
    'navigation_controls_widget': 'Widget?',
    'path': 'String?',
    'title': 'String?',
  },
)
abstract class _ModelScreenConfiguration extends ThisModel<ModelScreenConfiguration> {
  T? arg<T>(dynamic key) => letAs<T>(model.arguments?[key]);
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// Creates a [ModelScreenConfiguration] from the current base URL.
ModelScreenConfiguration currentBaseConfiguration() {
  return ModelScreenConfiguration(
    arguments: Uri.base.queryParameters,
    path: Uri.base.path,
  );
}

/// Creates a [ModelScreenConfiguration] from a [Uri].
ModelScreenConfiguration urlToScreenConfiguration({
  required Uri url,
  required bool isAccessibleOnlyIfLoggedIn,
  required bool isAccessibleOnlyIfLoggedInAndVerified,
  required bool isAccessibleOnlyIfLoggedOut,
  required bool isRedirectable,
  required dynamic makeup,
  required Widget? navigationControlsWidget,
  required String? title,
}) {
  final path = url.path;
  final parameters = <dynamic, dynamic>{...url.queryParameters};
  for (var n = 0; n < url.pathSegments.length; n++) {
    parameters[n] = url.pathSegments[n];
  }
  return ModelScreenConfiguration(
    arguments: parameters,
    isAccessibleOnlyIfLoggedIn: isAccessibleOnlyIfLoggedIn,
    isAccessibleOnlyIfLoggedInAndVerified: isAccessibleOnlyIfLoggedInAndVerified,
    isAccessibleOnlyIfLoggedOut: isAccessibleOnlyIfLoggedOut,
    isRedirectable: isRedirectable,
    path: path,
    makeup: makeup,
    navigationControlsWidget: navigationControlsWidget,
    title: title,
  );
}
