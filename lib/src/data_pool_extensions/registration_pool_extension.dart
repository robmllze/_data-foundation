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

extension RegistrationPoolExtension on Iterable<ModelRegistration> {
  //
  //
  //

  /// Returns all registration dates ("registeredAt" properties) in `this`.
  Iterable<DateTime> getRegistrationDates() => this.map((e) => e.registeredAt).nonNulls;

  /// Returns the earliest registration date ("registeredAt" property) in `this`.
  DateTime getEarliestRegistrationDate() => getFirstDate(this.getRegistrationDates())!;

  /// Returns the latest registration date ("registeredAt" property) in `this`.
  DateTime getLatestRegistrationDate() => getLastDate(this.getRegistrationDates())!;

  /// Returns the ID of the element in `this` with the earliest
  /// registration date ("registeredAt" property) in `this`.
  String get firstRegisteredById {
    final d = this.getEarliestRegistrationDate();
    return this.firstWhere((e) => e.registeredAt == d).registeredBy!;
  }

  /// Returns the ID of the element in `this` with the latest
  /// registration date ("registeredAt" property) in `this`.
  String get lastRegisteredById {
    final d = this.getLatestRegistrationDate();
    return this.firstWhere((e) => e.registeredAt == d).registeredBy!;
  }

  /// Returns the first element e in `this` where
  /// [registeredById] == e.registeredBy.
  ModelRegistration getRegistrationFor(String registeredById) {
    return this.firstWhere((e) => e.registeredBy == registeredById);
  }

  /// Returns the value of the `impliesEnabled` property of the element e in
  /// `this` where [registeredById] == e.registeredBy.
  bool isImpliedEnabledBy(String registeredById) {
    return this.getRegistrationFor(registeredById).impliesEnabled;
  }

  /// Considers the elements in `this` where
  /// [registeredById] != e.registeredBy, then checks if all their
  /// `impliesEnabled` properties are `true` or not.
  bool isImpliedEnabledByAnyoneElse(String registeredById) {
    return this
        .where((e) => e.registeredBy != null && e.registeredBy != registeredById)
        .any((e) => isImpliedEnabledBy(e.registeredBy!));
  }

  /// Checks if any `enabled` property in elements `this` implies
  /// true (its value is `true` or `null`) or not (its value is `false`).
  bool isImpliedEnabledByAnyone() {
    return this.any((e) => e.impliesEnabled);
  }
}
