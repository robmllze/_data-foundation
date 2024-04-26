//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:uuid/uuid.dart';

import '/_common.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class IdUtility {
  //
  //
  //

  static const EVENT_ID_PPREFIX = 'E';
  static const RELATIONSHIP_ID_PPREFIX = 'R';
  static const JOB_PID_PPREFIX = 'PJ';
  static const ORGANIZATION_PID_PPREFIX = 'PO';
  static const PROJECT_PID_PPREFIX = 'PP';
  static const USER_PID_PREFIX = 'PU';

  //
  //
  //

  final String seed;

  late final mapper = BijectiveBase36IdMapper(seed: this.seed);

  //
  //
  //

  IdUtility({required this.seed});

  //
  //
  //

  String idToPid({
    required String id36,
    String prefix = '',
  }) {
    final a = prefix.nullIfEmpty;
    final b = mapper.mapId(id36);
    final pid = [a, b].nonNulls.join('_');
    return pid;
  }

  //
  //
  //

  String pidToId({required String pid36}) {
    final [_, b] = pid36.split('_');
    final id = mapper.reverseMapId(b);
    return id;
  }

  //
  //

  static String newUuidV4() {
    return const Uuid().v4();
  }

  //
  //
  //

  static String _newPidV4({
    String prefix = '',
    String? seed,
  }) {
    final src = newUuidV4();
    final result = IdUtility(seed: seed ?? src).idToPid(
      id36: src,
      prefix: prefix,
    );
    return result;
  }

  //
  //
  //

  static String getPrefix(String id) {
    final parts = id.split('-');
    return parts.length > 1 ? parts[0] : '';
  }

  //
  //
  //

  static bool hasPrefix(String id, String prefix) {
    return getPrefix(id) == prefix;
  }

  //
  //
  //

  static String newRelationshipId() {
    return _newPidV4(prefix: RELATIONSHIP_ID_PPREFIX);
  }

  static String newEventId() {
    return _newPidV4(prefix: EVENT_ID_PPREFIX);
  }

  static bool isUserPid(String pid) {
    return hasPrefix(pid, USER_PID_PREFIX);
  }

  static bool isJobPid(String pid) {
    return hasPrefix(pid, JOB_PID_PPREFIX);
  }

  static bool isProjectPid(String pid) {
    return hasPrefix(pid, PROJECT_PID_PPREFIX);
  }

  static bool isOrganizationPid(String pid) {
    return hasPrefix(pid, ORGANIZATION_PID_PPREFIX);
  }

  String idToUserPid({required String userId}) {
    return this.idToPid(id36: userId, prefix: USER_PID_PREFIX);
  }

  String idToJobPid({required String jobId}) {
    return this.idToPid(id36: jobId, prefix: JOB_PID_PPREFIX);
  }

  String idToProjectPid({required String projectId}) {
    return this.idToPid(id36: projectId, prefix: PROJECT_PID_PPREFIX);
  }

  String idToOrganizationPid({required String organizationId}) {
    return this.idToPid(id36: organizationId, prefix: ORGANIZATION_PID_PPREFIX);
  }
}
