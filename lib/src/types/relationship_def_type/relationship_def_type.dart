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

part '_relationship_def_type.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateTypeUtils()
enum RelationshipDefType {
  /// An organization creates or owns projects.
  ORGANIZATION_AND_PROJECT,

  /// A user creates or joins an organization.
  ORGANIZATION_AND_USER,

  /// A job is created within a project.
  JOB_AND_PROJECT,

  /// A user is assigned to a job.
  JOB_AND_USER,

  /// A user joins or is associated with a project.
  PROJECT_AND_USER,

  /// A user is connected to another user, representing a direct relationship.
  USER_AND_USER,
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

RelationshipDefType? findRelationshipDefTypeFromMemberPids(Set<String>? memberPids) {
  if (memberPids != null) {
    final prefixes = memberPids.map((e) => IdUtils.getPrefix(e)).toSet();

    // Contains at least 1 memberId with the USER_PUB_ID_PREFIX prefix.
    if (prefixes.contains(IdUtils.USER_PID_PREFIX) && prefixes.length == 1) {
      return RelationshipDefType.USER_AND_USER;
    }
    // Contains at least 1 memberId with the USER_PUB_ID_PREFIX, and ontains at
    // least 1 memberId with the ORGANIZATION_PUB_ID_PPREFIX.
    if (prefixes.contains(IdUtils.USER_PID_PREFIX) &&
        prefixes.contains(IdUtils.ORGANIZATION_PID_PPREFIX) &&
        prefixes.length == 2) {
      return RelationshipDefType.ORGANIZATION_AND_USER;
    }
  }
  return null;
}
