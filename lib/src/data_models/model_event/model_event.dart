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
    ...ENTRY_MODEL_FIELDS,
    ('relationship_id?', String),
    ('member_pids?', Set<String>),
    ('topic?', EventTopicType),
    ('body?', DataModel),
    ('timeout?', int),
    ('when_read?', Map<String, DateTime>),
    ('when_archived?', Map<String, DateTime>),
    ('when_hidden?', Map<String, DateTime>),
    ('when_liked?', Map<String, DateTime>),
    ('when_received?', Map<String, DateTime>),
  },
)
abstract class _ModelEvent extends Model implements EntryModel {}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension ModelEventExtension on ModelEvent {
  //
  //
  //

  bool get didTimeout {
    final timeout = this.timeout;
    return timeout != null && timeout < DateTime.now().millisecondsSinceEpoch;
  }

  // Read.
  Iterable<DateTime> get datesRead => this.whenRead?.values ?? [];
  DateTime? get lastReadAt => getLastDate(this.datesRead);
  String? get lastReadBy =>
      this.whenRead?.entries.firstWhereOrNull((e) => e.value == this.lastReadAt)?.key;
  bool get isRead => this.whenRead?.nullIfEmpty != null;
  bool isReadBy(String id) => this.whenRead?.keys.contains(id) == true;

  // Archived.
  Iterable<DateTime> get datesArchived => this.whenArchived?.values ?? [];
  DateTime? get archivedAt => getFirstDate(this.datesArchived);
  String? get archivedBy =>
      this.whenArchived?.entries.firstWhereOrNull((e) => e.value == this.archivedAt)?.key;
  bool get isArchived => this.whenArchived?.nullIfEmpty != null;
  bool isArchivedBy({required String id}) => this.whenArchived?.keys.contains(id) == true;

  // Hidden.
  Iterable<DateTime> get datesHidden => this.whenHidden?.values ?? [];
  DateTime? get hiddenAt => getFirstDate(this.datesHidden);
  String? get hiddenBy =>
      this.whenHidden?.entries.firstWhereOrNull((e) => e.value == this.hiddenAt)?.key;
  bool get isHidden => this.whenHidden?.nullIfEmpty != null;
  bool isHiddenBy({required String id}) => this.whenHidden?.keys.contains(id) == true;

  // Liked.
  Iterable<DateTime> get datesLiked => this.whenLiked?.values ?? [];
  DateTime? get likedAt => getFirstDate(this.datesLiked);
  String? get likedBy =>
      this.whenLiked?.entries.firstWhereOrNull((e) => e.value == this.likedAt)?.key;
  bool get isLiked => this.whenLiked?.nullIfEmpty != null;
  bool isLikedBy({required String id}) => this.whenLiked?.keys.contains(id) == true;

  // Received.
  Iterable<DateTime> get datesReceived => this.whenReceived?.values ?? [];
  DateTime? get receivedAt => getFirstDate(this.datesReceived);
  String? get receivedBy =>
      this.whenReceived?.entries.firstWhereOrNull((e) => e.value == this.receivedAt)?.key;
  bool get isReceived => this.whenReceived?.nullIfEmpty != null;
  bool isReceivedBy({required String id}) => this.whenReceived?.keys.contains(id) == true;

  // // Sent.
  // Iterable<DateTime> get datesSent => this.whenSent?.values ?? [];
  // DateTime? get sentAt => getFirstDate(this.datesSent);
  // String? get sentBy =>
  //     this.whenSent?.entries.firstWhereOrNull((e) => e.value == this.sentAt)?.key;
  // bool get isSent => this.whenSent?.nullIfEmpty != null;
  // bool isSentBy({required String id}) => this.whenSent?.keys.contains(id) == true;
}
