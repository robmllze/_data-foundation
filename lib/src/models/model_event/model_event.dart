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

import '/_common.dart';

part '_model_event.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    "pubIds": "Set<String>?",
    "timeout": "int?",
    "def": "Map<String, dynamic>?",
    "defType": "EventDefType?",
    "whenArchived": "Map<String, DateTime>?",
    "whenHidden": "Map<String, DateTime>?",
    "whenLiked": "Map<String, DateTime>?",
    "whenRead": "Map<String, DateTime>?",
    "whenReceived": "Map<String, DateTime>?",
    "whenSent": "Map<String, DateTime>?",
  },
)
abstract class _ModelEvent extends ThisModel<ModelEvent> {
  //
  //
  //

  String? get senderPubId => super.model.whenSent?.keys.firstOrNull;

  //
  //
  //

  bool get didTimeout {
    final timeout = this.model.timeout;
    return timeout != null && timeout < DateTime.now().millisecondsSinceEpoch;
  }

  //
  //
  //

  Iterable<DateTime>? get datesArchived => this.model.whenArchived?.values;
  Iterable<DateTime>? get datesHidden => this.model.whenHidden?.values;
  Iterable<DateTime>? get datesLiked => this.model.whenLiked?.values;
  Iterable<DateTime>? get datesRead => this.model.whenRead?.values;
  Iterable<DateTime>? get datesRecieved => this.model.whenReceived?.values;
  Iterable<DateTime>? get datesSent => this.model.whenSent?.values;

  //
  //
  //

  DateTime? get firstArchived => getFirstDate(this.datesArchived);
  DateTime? get firstHidden => getFirstDate(this.datesHidden);
  DateTime? get firstLiked => getFirstDate(this.datesLiked);
  DateTime? get firstRead => getFirstDate(this.datesRead);
  DateTime? get firstReceived => getFirstDate(this.datesRecieved);
  DateTime? get firstSent => getFirstDate(this.datesSent);

  DateTime? get lastArchived => getLastDate(this.datesArchived);
  DateTime? get lastHidden => getLastDate(this.datesHidden);
  DateTime? get lastLiked => getLastDate(this.datesLiked);
  DateTime? get lastRead => getLastDate(this.datesRead);
  DateTime? get lastReceived => getLastDate(this.datesRecieved);
  DateTime? get lastSent => getLastDate(this.datesSent);

  bool get isArchived => super.model.whenArchived?.isNotEmpty == true;
  bool get isHidden => super.model.whenHidden?.isNotEmpty == true;
  bool get isLiked => super.model.whenLiked?.isNotEmpty == true;
  bool get isRead => super.model.whenRead?.isNotEmpty == true;
  bool get isReceived => super.model.whenReceived?.isNotEmpty == true;
  bool get isSent => super.model.whenSent?.isNotEmpty == true;
}