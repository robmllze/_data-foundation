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

part '_model_relationship.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    'member_pids': 'Set<String>?',
    'def': 'GenericModel?',
    'def_type': 'RelationshipDefType?',
    'when_noted': 'Map<String, DateTime>?',
    'when_enabled': 'Map<String, DateTime>?',
    'when_disabled': 'Map<String, DateTime>?',
    'createdAt': 'DateTime?',
  },
)
abstract class _ModelRelationship extends ThisModel<ModelRelationship> {
  //
  //
  //

  DateTime? get firstNoted => getFirstDate(this.model.whenNoted?.values);
  DateTime? get firstEnabled => getFirstDate(this.model.whenEnabled?.values);
  DateTime? get firstDisabled => getFirstDate(this.model.whenDisabled?.values);

  DateTime? get lastNoted => getLastDate(this.model.whenNoted?.values);
  DateTime? get lastEnabled => getLastDate(this.model.whenEnabled?.values);
  DateTime? get lastDisabled => getLastDate(this.model.whenDisabled?.values);

  //
  //
  //

  /// Whether this relationship is marked as "enabled" by any Member.
  bool get isEnabled {
    final a = this.lastEnabled;
    final b = this.lastDisabled;
    if (a == null) {
      return false;
    }
    if (b == null || a.isAfter(b)) {
      return true;
    }
    return false;
  }

  /// Whether this relationship is marked as "enabled" by any Member.
  bool get isDisabled {
    final a = this.lastEnabled;
    final b = this.lastDisabled;
    if (b == null) {
      return false;
    }
    if (a == null || b.isAfter(a)) {
      return true;
    }
    return false;
  }

  /// Marks this relationship as "noted" for the Member with [memberPid].
  ///
  /// This can be used to indicate that the Member has noted, acknowledged or
  /// read this relationship.
  ///
  /// It is useful for tracking if this relationship is new to a Member or not.
  void markAsNotedFor(String memberPid) {
    this.model.whenNoted = {
      ...?this.model.whenNoted,
      memberPid: DateTime.now(),
    };
  }

  /// Whether this relationship is marked as "noted" for the Member with [memberPid].
  bool isMarkedAsNotedFor(String memberPid) {
    return this.model.whenNoted?[memberPid] == null;
  }

  /// Marks this relationship as "enabled" for the Member with [memberPid].
  ///
  /// This can be used to indicate that the relationship is "enabled" for the
  /// Member.
  ///
  /// If not explicitly marked as enabled or disabled then the relationship is
  /// assumed to be enabled.
  void markAsEnabledFor(String memberPid) {
    this.model.whenEnabled = {
      ...?this.model.whenEnabled,
      memberPid: DateTime.now(),
    };
  }

  /// Whether this relationship is marked as "enabled" for the Member with [memberPid].
  bool isMarkedAsEnabledFor(String memberPid) => this.model.whenEnabled?[memberPid] == null;

  /// Marks this relationship as "disabled" for the Member with [memberPid].
  ///
  /// This can be used to indicate that the relationship is "disabled" for the
  /// Member.
  ///
  /// It is useful for temporarily disabling a relationship for a Member.
  void markAsDisabledFor(String memberPid) {
    this.model.whenDisabled = {
      ...?this.model.whenDisabled,
      memberPid: DateTime.now(),
    };
  }

  /// Whether this relationship is marked as "disabled" for the Member with [memberPid].
  bool isMarkedAsDisabledFor(String memberPid) => this.model.whenDisabled?[memberPid] == null;

  /// Whether this relationship involves the Member with [memberPid].
  bool involvesMember(String memberPid) {
    return this.model.memberPids?.contains(memberPid) == true;
  }

  /// Returns the Member IDs of the other Members in this relationship.
  Iterable<String>? getOtherMemberPids(String currentMemberId) {
    return this.model.memberPids?.where((e) => e != currentMemberId);
  }

  /// Calls [callback] for each Member in this relationship.
  void forEachMember(void Function(String memberPid) callback) async {
    final memberPid = this.model.memberPids;
    final hasMembers = memberPid?.isNotEmpty == true;
    assert(hasMembers);
    if (hasMembers) {
      for (final e in memberPid!) {
        callback(e);
      }
    }
  }

  /// Extracts the member PIDS from this relationship that start with any of
  /// the [memberPidPrefixes].
  Set<String> extractMemberPids({
    required Iterable<String> memberPidPrefixes,
  }) {
    return this
            .model
            .memberPids
            ?.where((a) => memberPidPrefixes.any((b) => a.startsWith(b)))
            .toSet() ??
        {};
  }
}
