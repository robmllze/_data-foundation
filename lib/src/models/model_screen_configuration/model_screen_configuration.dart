//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// X|Y|Z & Dev
//
// Copyright Ⓒ Robert Mollentze, xyzand.dev
//
// Licensing details can be found in the LICENSE file in the root directory.
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
    "arguments": "Map<dynamic, dynamic>?",
    "isAccessibleOnlyIfLoggedIn": "bool?",
    "isAccessibleOnlyIfLoggedInAndVerified": "bool?",
    "isAccessibleOnlyIfLoggedOut": "bool?",
    "isRedirectable": "bool?",
    "makeup": "dynamic",
    "navigationControlsWidget": "Widget?",
    "path": "String?",
    "title": "String?",
  },
)
abstract class _ModelScreenConfiguration
    extends ThisModel<ModelScreenConfiguration> {
  //
  //
  //

  T? arg<T>(dynamic key) => letAs<T>(model.arguments?[key]);
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

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
    isAccessibleOnlyIfLoggedInAndVerified:
        isAccessibleOnlyIfLoggedInAndVerified,
    isAccessibleOnlyIfLoggedOut: isAccessibleOnlyIfLoggedOut,
    isRedirectable: isRedirectable,
    path: path,
    makeup: makeup,
    navigationControlsWidget: navigationControlsWidget,
    title: title,
  );
}
