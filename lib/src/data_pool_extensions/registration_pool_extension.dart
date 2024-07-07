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
  Iterable<DateTime> get registrationDates => this.map((e) => e.registeredAt).nonNulls;

  /// Returns the earliest registration date ("registeredAt" property) in `this`.
  DateTime get earliestRegistrationDate => getFirstDate(this.registrationDates)!;

  /// Returns the latest registration date ("registeredAt" property) in `this`.
  DateTime get latestRegistrationDate => getLastDate(this.registrationDates)!;

  /// Returns the ID of the element in `this` with the earliest
  /// registration date ("registeredAt" property) in `this`.
  String get firstRegisteredById {
    final e1 = this.earliestRegistrationDate;
    return this.firstWhere((e) => e == e1).registeredBy!;
  }

  /// Returns the ID of the element in `this` with the latest
  /// registration date ("registeredAt" property) in `this`.
  String get lastRegisteredById {
    final e1 = this.latestRegistrationDate;
    return this.firstWhere((e) => e.registeredAt == e1).registeredBy!;
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

  /// Checks if any `impliesEnabled` property in `this` is `true`.
  bool isImpliedEnabledByAnyone() {
    return this.any((e) => e.impliesEnabled);
  }
}
