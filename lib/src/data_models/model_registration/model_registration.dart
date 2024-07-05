//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY XYZ_GENIE
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

part '_model_registration.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

const MODEL_REGISTRATION_FIELDS = {
  ('id?', String),
  ('ref?', DataRefModel),
  ('by?', String),
  ('at?', DateTime),
  ('ip_v4_address?', String),
  ('ip_v6_address?', String),
  ('location?', ModelLocation),
  ('enabled?', bool),
};

@GenerateModel(
  shouldInherit: true,
  fields: MODEL_REGISTRATION_FIELDS,
)
abstract class _ModelRegistration extends Model {}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class RegistrationListUtils<TModelRegistration extends ModelRegistration> {
  //
  //
  //

  final Iterable<TModelRegistration> _registrations;

  //
  //
  //

  const RegistrationListUtils(Iterable<TModelRegistration> registrations)
      : _registrations = registrations;

  //
  //
  //

  Iterable<DateTime> get dates {
    return this._registrations.map((e) => e.at).nonNulls;
  }

  DateTime? get firstDate {
    return getFirstDate(this.dates);
  }

  DateTime? get lastDate {
    return getLastDate(this.dates);
  }

  String? get firstId {
    return this._registrations.firstWhereOrNull((e) {
      return e == this.firstDate;
    })?.by;
  }

  String? get lastId {
    return this._registrations.firstWhereOrNull((e) {
      return e.at == this.lastDate;
    })?.by;
  }

  bool containsId(String? id) {
    return this._registrations.any((e) => e.by == id);
  }

  static bool registrationsContainsId(List<ModelRegistration>? registrations, String? id) {
    return registrations?.more.containsId(id) == true;
  }
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension MoreOnRegistrationListExtension<TModelRegistration extends ModelRegistration>
    on Iterable<TModelRegistration> {
  RegistrationListUtils get more => RegistrationListUtils(this);
}
