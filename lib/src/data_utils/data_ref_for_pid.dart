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

/// Returns the [DataRef] for the given [pid]. The PID can be a user, job,
/// project, or organization PID.
DataRef dataRefForPid(String pid) {
  if (IdUtils.isUserPid(pid)) {
    return Schema.userPubsRef(userPid: pid);
  } else if (IdUtils.isJobPid(pid)) {
    return Schema.jobPubsRef(jobPid: pid);
  } else if (IdUtils.isProjectPid(pid)) {
    return Schema.projectPubsRef(projectPid: pid);
  } else if (IdUtils.isOrganizationPid(pid)) {
    return Schema.organizationPubsRef(organizationPid: pid);
  } else {
    throw Exception('Unknown pid: $pid');
  }
}
