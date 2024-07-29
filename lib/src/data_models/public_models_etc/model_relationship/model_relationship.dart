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
    ...MODEL_EVENT_FIELDS,
    ('type?', RelationshipType),
    ('deny_device_notifications?', Map<String, Set<String>>),
    ('deny_email_notifications?', Map<String, Set<String>>),
    ('deny_text_notifications?', Map<String, Set<String>>),
  },
)
abstract class _ModelRelationship extends Model implements ModelEvent {
  const _ModelRelationship();
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension ModelRelationshipExtension on ModelRelationship {
  //
  //
  //

  bool doesADenyDeviceNotificationsFromB({
    required String pidA,
    required String pidB,
  }) {
    final members = this.denyDeviceNotifications?[pidA];
    final bDenied = members?.contains(pidB) == true;
    return bDenied;
  }

  bool doesADenyEmailNotificationsFromB({
    required String pidA,
    required String pidB,
  }) {
    final members = this.denyEmailNotifications?[pidA];
    final bDenied = members?.contains(pidB) == true;
    return bDenied;
  }

  bool doesADenyTextNotificationsFromB({
    required String pidA,
    required String pidB,
  }) {
    final members = this.denyTextNotifications?[pidA];
    final bDenied = members?.contains(pidB) == true;
    return bDenied;
  }

  // /// Whether this relationship is marked as "enabled" by any Member.
  // bool get isEnabled {
  //   final a = this.enabledRegs?.latestRegistrationDate;
  //   final b = this.disabledRegs?.latestRegistrationDate;
  //   if (a == null) {
  //     return false;
  //   }
  //   if (b == null || a.isAfter(b)) {
  //     return true;
  //   }
  //   return false;
  // }

  // /// Whether this relationship is marked as "enabled" by any Member.
  // bool get isDisabled {
  //   final a = this.enabledRegs?.latestRegistrationDate;
  //   final b = this.disabledRegs?.latestRegistrationDate;
  //   if (b == null) {
  //     return false;
  //   }
  //   if (a == null || b.isAfter(a)) {
  //     return true;
  //   }
  //   return false;
  // }

  // /// Marks this relationship as "noted" for the Member with [memberPid].
  // ///
  // /// This can be used to indicate that the Member has noted, acknowledged or
  // /// read this relationship.
  // ///
  // /// It is useful for tracking if this relationship is new to a Member or not.
  // void markAsNotedFor(String memberPid) {
  //   if (!this.isMarkedAsNotedFor(memberPid)) {
  //     (this.notedRegs ?? []).add(
  //       ModelRegistration(
  //         registeredBy: memberPid,
  //         registeredAt: DateTime.now(),
  //       ),
  //     );
  //   }
  // }

  // /// Whether this relationship is marked as "noted" for the Member with [memberPid].
  // bool isMarkedAsNotedFor(String memberPid) {
  //   return this.notedRegs?.any((e) => e.registeredBy == memberPid) == true;
  // }

  // /// Marks this relationship as "enabled" for the Member with [memberPid].
  // ///
  // /// This can be used to indicate that the relationship is "enabled" for the
  // /// Member.
  // ///
  // /// If not explicitly marked as enabled or disabled then the relationship is
  // /// assumed to be enabled.
  // void markAsEnabledFor(String memberPid) {
  //   if (!this.isMarkedAsEnabledFor(memberPid)) {
  //     (this.enabledRegs ?? []).add(
  //       ModelRegistration(
  //         registeredBy: memberPid,
  //         registeredAt: DateTime.now(),
  //       ),
  //     );
  //   }
  // }

  // /// Whether this relationship is marked as "enabled" for the Member with [memberPid].
  // bool isMarkedAsEnabledFor(String memberPid) {
  //   return this.enabledRegs?.any((e) => e.registeredBy == memberPid && e.impliesEnabled) == true;
  // }

  // /// Marks this relationship as "disabled" for the Member with [memberPid].
  // ///
  // /// This can be used to indicate that the relationship is "disabled" for the
  // /// Member.
  // ///
  // /// It is useful for temporarily disabling a relationship for a Member.
  // void markAsDisabledFor(String memberPid) {
  //   if (!this.isMarkedAsDisabledFor(memberPid)) {
  //     (this.disabledRegs ?? []).add(
  //       ModelRegistration(
  //         registeredBy: memberPid,
  //         registeredAt: DateTime.now(),
  //       ),
  //     );
  //   }
  // }

  // /// Whether this relationship is marked as "disabled" for the Member with [memberPid].
  // bool isMarkedAsDisabledFor(String memberPid) {
  //   return this.disabledRegs?.any((e) => e.registeredBy == memberPid && e.impliesEnabled) == true;
  // }
}
