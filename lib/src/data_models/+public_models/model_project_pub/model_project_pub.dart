//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY XYZ_GENIE
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'dart:ui';

import '/_common.dart';

part '_model_project_pub.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    ...PUBLIC_MODEL_FIELDS,
    ('when_opened?', Map<String, DateTime>),
    ('when_closed?', Map<String, DateTime>),
  },
)
abstract class _ModelProjectPub extends Model implements PublicModel {}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension ModelProjectPubExtension on ModelProjectPub {
  //
  //
  //

  // Opened.
  DateTime? get openedAt => getFirstDate(this.whenOpened?.values);
  String? get openedById =>
      this.whenOpened?.entries.firstWhereOrNull((e) => e.value == this.createdAt)?.key;
  bool get isOpened => this.whenOpened?.nullIfEmpty != null;
  bool isOpenedBy(String id) => this.whenOpened?.keys.contains(id) == true;

  // Closed.
  DateTime? get closedAt => getFirstDate(this.whenClosed?.values);
  String? get closedById =>
      this.whenClosed?.entries.firstWhereOrNull((e) => e.value == this.createdAt)?.key;
  bool isClosedBy(String id) => this.whenOpened?.keys.contains(id) == true;
}
