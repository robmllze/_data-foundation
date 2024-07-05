//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'dart:ui';

import '/_common.dart';

part '_model_relationship.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    ...PUBLIC_MODEL_FIELDS,
    ('member_pids?', Set<String>),
    ('disabled_regs?', List<ModelRegistration>),
    ('enabled_regs?', List<ModelRegistration>),
    ('noted_regs?', List<ModelRegistration>),
    ('type?', RelationshipType),
    ('body?', DataModel),
  },
)
abstract class _ModelRelationship extends Model implements PublicModel {}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension ModelRelationshipExtension on ModelRelationship {
  //
  //
  //

  /// Whether this relationship is marked as "enabled" by any Member.
  bool get isEnabled {
    final a = this.enabledRegs?.more.lastDate;
    final b = this.disabledRegs?.more.lastDate;
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
    final a = this.enabledRegs?.more.lastDate;
    final b = this.disabledRegs?.more.lastDate;
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
    if (!this.isMarkedAsNotedFor(memberPid)) {
      (this.notedRegs ?? []).add(
        ModelRegistration(
          by: memberPid,
          at: DateTime.now(),
        ),
      );
    }
  }

  /// Whether this relationship is marked as "noted" for the Member with [memberPid].
  bool isMarkedAsNotedFor(String memberPid) {
    return this.notedRegs?.any((e) => e.by == memberPid) == true;
  }

  /// Marks this relationship as "enabled" for the Member with [memberPid].
  ///
  /// This can be used to indicate that the relationship is "enabled" for the
  /// Member.
  ///
  /// If not explicitly marked as enabled or disabled then the relationship is
  /// assumed to be enabled.
  void markAsEnabledFor(String memberPid) {
    if (!this.isMarkedAsEnabledFor(memberPid)) {
      (this.enabledRegs ?? []).add(
        ModelRegistration(
          by: memberPid,
          at: DateTime.now(),
        ),
      );
    }
  }

  /// Whether this relationship is marked as "enabled" for the Member with [memberPid].
  bool isMarkedAsEnabledFor(String memberPid) {
    return this.enabledRegs?.any((e) => e.by == memberPid) == true;
  }

  /// Marks this relationship as "disabled" for the Member with [memberPid].
  ///
  /// This can be used to indicate that the relationship is "disabled" for the
  /// Member.
  ///
  /// It is useful for temporarily disabling a relationship for a Member.
  void markAsDisabledFor(String memberPid) {
    if (!this.isMarkedAsDisabledFor(memberPid)) {
      (this.disabledRegs ?? []).add(
        ModelRegistration(
          by: memberPid,
          at: DateTime.now(),
        ),
      );
    }
  }

  /// Whether this relationship is marked as "disabled" for the Member with [memberPid].
  bool isMarkedAsDisabledFor(String memberPid) {
    return this.disabledRegs?.any((e) => e.by == memberPid) == true;
  }

  /// Whether this relationship involves the Member with [memberPid].
  bool involvesMember(String memberPid) {
    return this.memberPids?.contains(memberPid) == true;
  }

  /// Returns the Member IDs of the other Members in this relationship.
  Iterable<String>? getOtherMemberPids(String currentMemberId) {
    return this.memberPids?.where((e) => e != currentMemberId);
  }

  /// Calls [callback] for each Member in this relationship.
  void forEachMember(void Function(String memberPid) callback) async {
    final memberPid = this.memberPids;
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
    final memberPids = this.memberPids ?? {};
    return memberPidPrefixes.isNotEmpty
        ? memberPids.where((a) => memberPidPrefixes.any((b) => a.startsWith(b))).toSet()
        : memberPids;
  }
}
