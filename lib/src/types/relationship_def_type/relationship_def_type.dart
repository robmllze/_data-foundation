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
  /// A relationship between a user and an organization.
  USER_AND_ORGANIZATION,

  /// A relationship between a connections, i.e. a user and another user.
  USER_AND_USER,
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

RelationshipDefType? findRelationshipDefTypeFromMemberIds(Set<String>? memberIds) {
  if (memberIds != null) {
    final prefixes = memberIds.map((e) => IdUtils.getPrefix(e)).toSet();

    // Contains at least 1 memberId with the USER_PUB_ID_PREFIX prefix.
    if (prefixes.contains(IdUtils.USER_PUB_ID_PREFIX) && prefixes.length == 1) {
      return RelationshipDefType.USER_AND_USER;
    }
    // Contains at least 1 memberId with the USER_PUB_ID_PREFIX, and ontains at
    // least 1 memberId with the ORGANIZATION_PUB_ID_PPREFIX.
    if (prefixes.contains(IdUtils.USER_PUB_ID_PREFIX) &&
        prefixes.contains(IdUtils.ORGANIZATION_PUB_ID_PPREFIX) &&
        prefixes.length == 2) {
      return RelationshipDefType.USER_AND_ORGANIZATION;
    }
  }
  return null;
}
