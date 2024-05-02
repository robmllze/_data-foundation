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

part '_model_event.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    ...KFields.when_created,
    ...KFields.when_read,
    ...KFields.member_pids,
    ...KFields.uploaded_media,
    'def_type': 'EventDefType?',
    'def': 'GenericModel?',
    'timeout': 'int?',
    'when_archived': 'Map<String, DateTime>?',
    'when_hidden': 'Map<String, DateTime>?',
    'when_liked': 'Map<String, DateTime>?',
    'when_received': 'Map<String, DateTime>?',
    'when_sent': 'Map<String, DateTime>?',
  },
)
abstract class _ModelEvent extends CrudModel<ModelEvent> {
  //
  //
  //

  bool get didTimeout {
    final timeout = this.model.timeout;
    return timeout != null && timeout < DateTime.now().millisecondsSinceEpoch;
  }

  // Archived.
  Iterable<DateTime> get datesArchived => this.model.whenArchived?.values ?? [];
  DateTime? get archivedAt => getFirstDate(this.datesArchived);
  String? get archivedById =>
      this.model.whenArchived?.entries.firstWhereOrNull((e) => e.value == this.createdAt)?.key;
  bool get isArchived => this.model.whenArchived?.nullIfEmpty != null;
  bool isArchivedBy({required String id}) => this.whenCreated?.keys.contains(id) == true;

  // Hidden.
  Iterable<DateTime> get datesHidden => this.model.whenHidden?.values ?? [];
  DateTime? get hiddenAt => getFirstDate(this.datesHidden);
  String? get hiddenById =>
      this.model.whenHidden?.entries.firstWhereOrNull((e) => e.value == this.createdAt)?.key;
  bool get isHidden => this.model.whenHidden?.nullIfEmpty != null;
  bool isHiddenBy({required String id}) => this.whenCreated?.keys.contains(id) == true;

  // Liked.
  Iterable<DateTime> get datesLiked => this.model.whenLiked?.values ?? [];
  DateTime? get likedAt => getFirstDate(this.datesLiked);
  String? get likedById =>
      this.model.whenLiked?.entries.firstWhereOrNull((e) => e.value == this.createdAt)?.key;
  bool get isLiked => this.model.whenLiked?.nullIfEmpty != null;
  bool isLikedBy({required String id}) => this.whenCreated?.keys.contains(id) == true;

  // Received.
  Iterable<DateTime> get datesReceived => this.model.whenReceived?.values ?? [];
  DateTime? get receivedAt => getFirstDate(this.datesReceived);
  String? get receivedById =>
      this.model.whenReceived?.entries.firstWhereOrNull((e) => e.value == this.createdAt)?.key;
  bool get isReceived => this.model.whenReceived?.nullIfEmpty != null;
  bool isReceivedBy({required String id}) => this.whenCreated?.keys.contains(id) == true;

  // Sent.
  Iterable<DateTime> get datesSent => this.model.whenSent?.values ?? [];
  DateTime? get sentAt => getFirstDate(this.datesSent);
  String? get sentById =>
      this.model.whenSent?.entries.firstWhereOrNull((e) => e.value == this.createdAt)?.key;
  bool get isSent => this.model.whenSent?.nullIfEmpty != null;
  bool isSentBy({required String id}) => this.whenCreated?.keys.contains(id) == true;
}
