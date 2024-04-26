//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:xyz_config/_common.dart';

import '/_common.dart';

part '_model_event.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    'created_at': 'DateTime?',
    'creator_id': 'String?',
    'def_type': 'EventDefType?',
    'def': 'GenericModel?',
    'pids': 'Set<String>?',
    'timeout': 'int?',
    'when_archived': 'Map<String, DateTime>?',
    'when_hidden': 'Map<String, DateTime>?',
    'when_liked': 'Map<String, DateTime>?',
    'when_read': 'Map<String, DateTime>?',
    'when_received': 'Map<String, DateTime>?',
    'when_sent': 'Map<String, DateTime>?',
  },
)
abstract class _ModelEvent extends ThisModel<ModelEvent> {
  //
  //
  //

  bool isCreatedBy(String userPid) => this.model.creatorId == userPid;

  //
  //
  //

  String? get senderPid => this.model.whenSent?.keys.firstOrNull;

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

  bool get isArchived => this.model.whenArchived?.isNotEmpty == true;
  bool get isHidden => this.model.whenHidden?.isNotEmpty == true;
  bool get isLiked => this.model.whenLiked?.isNotEmpty == true;
  bool get isRead => this.model.whenRead?.isNotEmpty == true;
  bool get isReceived => this.model.whenReceived?.isNotEmpty == true;
  bool get isSent => this.model.whenSent?.isNotEmpty == true;
}
