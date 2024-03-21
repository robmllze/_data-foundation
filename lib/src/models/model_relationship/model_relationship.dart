//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Copyright Ⓒ Robert Mollentze, xyzand.dev
//
// Licensing details can be found in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

part '_model_relationship.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    'memberIds': 'Set<String>?',
    'def': 'Map<String, dynamic>?',
    'defType': 'RelationshipDefType?',
    'whenNoted': 'Map<String, DateTime>?',
    'whenEnabled': 'Map<String, DateTime>?',
    'whenDisabled': 'Map<String, DateTime>?',
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

  /// Marks this relationship as "noted" for the Member with [memberId].
  ///
  /// This can be used to indicate that the Member has noted, acknowledged or
  /// read this relationship.
  ///
  /// It is useful for tracking if this relationship is new to a Member or not.
  void markAsNotedFor(String memberId) {
    super.model.whenNoted = {
      ...?super.model.whenNoted,
      memberId: DateTime.now(),
    };
  }

  /// Whether this relationship is marked as "noted" for the Member with [memberId].
  bool isMarkedAsNotedFor(String memberId) {
    return this.model.whenNoted?[memberId] == null;
  }

  /// Marks this relationship as "enabled" for the Member with [memberId].
  ///
  /// This can be used to indicate that the relationship is "enabled" for the
  /// Member.
  ///
  /// If not explicitly marked as enabled or disabled then the relationship is
  /// assumed to be enabled.
  void markAsEnabledFor(String memberId) {
    super.model.whenEnabled = {
      ...?super.model.whenEnabled,
      memberId: DateTime.now(),
    };
  }

  /// Whether this relationship is marked as "enabled" for the Member with [memberId].
  bool isMarkedAsEnabledFor(String memberId) => this.model.whenEnabled?[memberId] == null;

  /// Marks this relationship as "disabled" for the Member with [memberId].
  ///
  /// This can be used to indicate that the relationship is "disabled" for the
  /// Member.
  ///
  /// It is useful for temporarily disabling a relationship for a Member.
  void markAsDisabledFor(String memberId) {
    super.model.whenDisabled = {
      ...?super.model.whenDisabled,
      memberId: DateTime.now(),
    };
  }

  /// Whether this relationship is marked as "disabled" for the Member with [memberId].
  bool isMarkedAsDisabledFor(String memberId) => this.model.whenDisabled?[memberId] == null;

  /// Whether this relationship involves the Member with [memberId].
  bool involvesMember(String memberId) {
    return super.model.memberIds?.contains(memberId) == true;
  }

  /// Returns the Member IDs of the other Members in this relationship.
  Iterable<String>? getOtherMemberIds(String currentMemberId) {
    return super.model.memberIds?.where((e) => e != currentMemberId);
  }

  /// Calls [callback] for each Member in this relationship.
  void forEachMember(void Function(String) callback) async {
    final memberId = this.model.memberIds;
    final hasMembers = memberId?.isNotEmpty == true;
    assert(hasMembers);
    if (hasMembers) {
      for (final e in memberId!) {
        callback(e);
      }
    }
  }
}
