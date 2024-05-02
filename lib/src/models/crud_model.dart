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

abstract class CrudModel<T extends Model> extends ThisModel<T> {
  //
  //
  //

  // Create.
  Map<String, DateTime>? get whenCreated => null;
  Iterable<DateTime> get datesCreated => this.whenCreated?.values ?? [];
  DateTime? get createdAt => getFirstDate(this.datesCreated);
  String? get createdById =>
      this.whenCreated?.entries.firstWhereOrNull((e) => e.value == this.createdAt)?.key;
  bool get isCreated => this.whenCreated?.nullIfEmpty != null;
  bool isCreatedBy(String id) => this.whenCreated?.keys.contains(id) == true;

  // Read.
  Map<String, DateTime>? get whenRead => null;
  Iterable<DateTime> get datesRead => this.whenRead?.values ?? [];
  DateTime? get lastReadAt => getLastDate(this.datesRead);
  String? get lastReadById =>
      this.whenRead?.entries.firstWhereOrNull((e) => e.value == this.createdAt)?.key;
  bool get isRead => this.whenRead?.nullIfEmpty != null;
  bool isReadBy(String id) => this.whenRead?.keys.contains(id) == true;

  // Update.
  Map<String, DateTime>? get whenUpdated => null;
  Iterable<DateTime> get datesUpdated => this.whenUpdated?.values ?? [];
  DateTime? get lastUpdatedAt => getLastDate(this.datesUpdated);
  String? get lastUpdatedById =>
      this.whenUpdated?.entries.firstWhereOrNull((e) => e.value == this.createdAt)?.key;
  bool get isUpdated => this.whenUpdated?.nullIfEmpty != null;
  bool isUpdatedBy(String id) => this.whenUpdated?.keys.contains(id) == true;

  // Delete.
  Map<String, DateTime>? get whenDeleted => null;
  Iterable<DateTime> get datesDeleted => this.whenDeleted?.values ?? [];
  DateTime? get deletedAt => getFirstDate(datesDeleted);
  String? get deletedById =>
      this.whenDeleted?.entries.firstWhereOrNull((e) => e.value == this.createdAt)?.key;
  bool get isDeleted => this.whenDeleted?.nullIfEmpty != null;
  bool isDeletedBy(String id) => this.whenDeleted?.keys.contains(id) == true;
}
