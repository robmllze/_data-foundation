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
  //
  //
  //

  /// A user is connected to another user, representing a direct relationship.
  USER_AND_USER('${IdUtils.USER_PID_PREFIX}_'),

  /// A user is assigned to a job.
  USER_AND_JOB('${IdUtils.USER_PID_PREFIX}_' '${IdUtils.JOB_PID_PREFIX}_'),

  /// A user joins or is associated with a project.
  USER_AND_PROJECT('${IdUtils.USER_PID_PREFIX}_' '${IdUtils.PROJECT_PID_PREFIX}_'),

  /// A user creates or joins an organization.
  USER_AND_ORGANIZATION('${IdUtils.USER_PID_PREFIX}_' '${IdUtils.ORGANIZATION_PID_PREFIX}_'),

  /// A job is created within a project.
  JOB_AND_PROJECT('${IdUtils.PROJECT_PID_PREFIX}_' '${IdUtils.ORGANIZATION_PID_PREFIX}_'),

  /// An organization creates or owns projects.
  PROJECT_AND_ORGANIZATION('${IdUtils.PROJECT_PID_PREFIX}_' '${IdUtils.ORGANIZATION_PID_PREFIX}_');

  //
  //
  //

  final String code;

  const RelationshipDefType(this.code);

  //
  //
  //

  static String? memberPidsToCode(Set<String>? memberPids) {
    if (memberPids == null) return null;
    final memberPidPrefixes = memberPids.map((e) => e.split('_').firstOrNull).toSet();
    final hasUserPidPrefix = memberPidPrefixes.contains(IdUtils.USER_PID_PREFIX);
    final hasJobPidPrefix = memberPidPrefixes.contains(IdUtils.JOB_PID_PREFIX);
    final hasProjectPidPrefix = memberPidPrefixes.contains(IdUtils.PROJECT_PID_PREFIX);
    final hasOrganizationPidPrefix = memberPidPrefixes.contains(IdUtils.ORGANIZATION_PID_PREFIX);
    final code = '${hasUserPidPrefix ? '${IdUtils.USER_PID_PREFIX}_' : ''}'
        '${hasJobPidPrefix ? '${IdUtils.JOB_PID_PREFIX}_' : ''}'
        '${hasProjectPidPrefix ? '${IdUtils.PROJECT_PID_PREFIX}_' : ''}'
        '${hasOrganizationPidPrefix ? '${IdUtils.ORGANIZATION_PID_PREFIX}_' : ''}';
    return code;
  }

  //
  //
  //

  static List<RelationshipDefType> fromMemberPids(Set<String>? memberPids) {
    final code = memberPidsToCode(memberPids);
    if (code == null) return [];
    final result = <RelationshipDefType>[];
    for (final value in RelationshipDefType.values) {
      if (code.contains(value.code)) {
        result.add(value);
      }
    }
    return result;
  }
}
