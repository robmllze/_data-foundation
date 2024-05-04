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
    ('id', String),
    ('deleted_at?', DateTime),
    ('deleted_by?', String),
    ('member_pids', Set<String>),
    ('uploaded_media_ids?', Set<String>),
    ('def_type?', EventDefType),
    ('def?', GenericModel),
    ('timeout?', int),
    ('when_read?', Map<String, DateTime>),
    ('when_archived?', Map<String, DateTime>),
    ('when_hidden?', Map<String, DateTime>),
    ('when_liked?', Map<String, DateTime>),
    ('when_received?', Map<String, DateTime>),
    ('when_sent?', Map<String, DateTime>),
  },
)
abstract class _ModelEvent extends ThisModel<ModelEvent> {
  //
  //
  //

  bool get didTimeout {
    final timeout = this.model.timeout;
    return timeout != null && timeout < DateTime.now().millisecondsSinceEpoch;
  }

  // Read.
  Iterable<DateTime> get datesRead => this.model.whenRead?.values ?? [];
  DateTime? get lastReadAt => getLastDate(this.datesRead);
  String? get lastReadBy =>
      this.model.whenRead?.entries.firstWhereOrNull((e) => e.value == this.lastReadAt)?.key;
  bool get isRead => this.model.whenRead?.nullIfEmpty != null;
  bool isReadBy(String id) => this.model.whenRead?.keys.contains(id) == true;

  // Archived.
  Iterable<DateTime> get datesArchived => this.model.whenArchived?.values ?? [];
  DateTime? get archivedAt => getFirstDate(this.datesArchived);
  String? get archivedBy =>
      this.model.whenArchived?.entries.firstWhereOrNull((e) => e.value == this.archivedAt)?.key;
  bool get isArchived => this.model.whenArchived?.nullIfEmpty != null;
  bool isArchivedBy({required String id}) => this.model.whenArchived?.keys.contains(id) == true;

  // Hidden.
  Iterable<DateTime> get datesHidden => this.model.whenHidden?.values ?? [];
  DateTime? get hiddenAt => getFirstDate(this.datesHidden);
  String? get hiddenBy =>
      this.model.whenHidden?.entries.firstWhereOrNull((e) => e.value == this.hiddenAt)?.key;
  bool get isHidden => this.model.whenHidden?.nullIfEmpty != null;
  bool isHiddenBy({required String id}) => this.model.whenHidden?.keys.contains(id) == true;

  // Liked.
  Iterable<DateTime> get datesLiked => this.model.whenLiked?.values ?? [];
  DateTime? get likedAt => getFirstDate(this.datesLiked);
  String? get likedBy =>
      this.model.whenLiked?.entries.firstWhereOrNull((e) => e.value == this.likedAt)?.key;
  bool get isLiked => this.model.whenLiked?.nullIfEmpty != null;
  bool isLikedBy({required String id}) => this.model.whenLiked?.keys.contains(id) == true;

  // Received.
  Iterable<DateTime> get datesReceived => this.model.whenReceived?.values ?? [];
  DateTime? get receivedAt => getFirstDate(this.datesReceived);
  String? get receivedBy =>
      this.model.whenReceived?.entries.firstWhereOrNull((e) => e.value == this.receivedAt)?.key;
  bool get isReceived => this.model.whenReceived?.nullIfEmpty != null;
  bool isReceivedBy({required String id}) => this.model.whenReceived?.keys.contains(id) == true;

  // Sent.
  Iterable<DateTime> get datesSent => this.model.whenSent?.values ?? [];
  DateTime? get sentAt => getFirstDate(this.datesSent);
  String? get sentBy =>
      this.model.whenSent?.entries.firstWhereOrNull((e) => e.value == this.sentAt)?.key;
  bool get isSent => this.model.whenSent?.nullIfEmpty != null;
  bool isSentBy({required String id}) => this.model.whenSent?.keys.contains(id) == true;
}
