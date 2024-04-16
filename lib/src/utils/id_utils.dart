//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:uuid/uuid.dart' show Uuid;

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class IdUtils {
  //
  //
  //

  static const SEPARATOR = '-';
  static const EVENT_ID_PPREFIX = 'E';
  static const RELATIONSHIP_ID_PPREFIX = 'R';
  static const JOB_PID_PPREFIX = 'PJ';
  static const ORGANIZATION_PID_PPREFIX = 'PO';
  static const PROJECT_PID_PPREFIX = 'PP';
  static const USER_PID_PREFIX = 'PU';

  //
  //
  //

  IdUtils._();

  //
  //
  //

  static String newUserPid({required String userId}) {
    return toUserPid(userId: userId);
  }

  static String toUserPid({required String userId}) {
    return '$USER_PID_PREFIX$SEPARATOR${_mapString1('${userId.substring(1, 4)}$userId')}';
  }

  static String toUserId({required String userPid}) {
    return _unmapString1(userPid.substring('$USER_PID_PREFIX$SEPARATOR'.length)).substring(3);
  }

  static bool isUserPid(String id) {
    return id.startsWith(USER_PID_PREFIX);
  }

  //
  //
  //

  static String newEventId() {
    return newId(EVENT_ID_PPREFIX);
  }

  static bool isEventId(String id) {
    return id.startsWith(EVENT_ID_PPREFIX);
  }

  //
  //
  //

  static String newRelationshipId() {
    return newId(RELATIONSHIP_ID_PPREFIX);
  }

  static bool isRelationshipId(String id) {
    return id.startsWith(RELATIONSHIP_ID_PPREFIX);
  }

  //
  //
  //

  static String newOrganizationPid() {
    return newId(ORGANIZATION_PID_PPREFIX);
  }

  static String toOrganizationPid({required String organizationId}) {
    return '$ORGANIZATION_PID_PPREFIX$SEPARATOR${_mapString1('${organizationId.substring(1, 4)}$organizationId')}';
  }

  static String toOrganizationId({required String organizationPid}) {
    return _unmapString1(
      organizationPid.substring('$ORGANIZATION_PID_PPREFIX$SEPARATOR'.length),
    ).substring(3);
  }

  static bool isOrganizationPid(String id) {
    return id.startsWith(ORGANIZATION_PID_PPREFIX);
  }

  //
  //
  //

  static String newProjectPid() {
    return newId(PROJECT_PID_PPREFIX);
  }

  static String toProjectPid({required String projectId}) {
    return '$PROJECT_PID_PPREFIX$SEPARATOR${_mapString1('${projectId.substring(1, 4)}$projectId')}';
  }

  static String toProjectId({required String projectPid}) {
    return _unmapString1(
      projectPid.substring('$PROJECT_PID_PPREFIX$SEPARATOR'.length),
    ).substring(3);
  }

  static bool isProjectPid(String id) {
    return id.startsWith(PROJECT_PID_PPREFIX);
  }

  //
  //
  //

  static String newJobPid() {
    return newId(JOB_PID_PPREFIX);
  }

  static String toJobPid({required String jobId}) {
    return '$JOB_PID_PPREFIX$SEPARATOR${_mapString1('${jobId.substring(1, 4)}$jobId')}';
  }

  static String toJobId({required String jobPid}) {
    return _unmapString1(
      jobPid.substring('$JOB_PID_PPREFIX$SEPARATOR'.length),
    ).substring(3);
  }

  static bool isJobPid(String id) {
    return id.startsWith(JOB_PID_PPREFIX);
  }

  //
  //
  //

  static String newId([String prefix = '']) {
    return '${prefix.isNotEmpty ? "${prefix.toUpperCase()}$SEPARATOR" : ""}${const Uuid().v1().replaceAll('-', '')}';
  }

  static String getPrefix(String id) {
    final parts = id.split(SEPARATOR);
    return parts.length > 1 ? parts[0] : '';
  }
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

String _mapString1(String input) {
  return String.fromCharCodes(
    input.codeUnits.map((c) => _mapChar1(c, input.length)),
  );
}

int _mapChar1(int charCode, int shift) {
  if (charCode >= 48 && charCode <= 57) {
    // '0'-'9'
    return 48 + (charCode - 48 + shift) % 10;
  } else if (charCode >= 65 && charCode <= 90) {
    // 'A'-'Z'
    return 65 + (charCode - 65 + shift) % 26;
  } else if (charCode >= 97 && charCode <= 122) {
    // 'a'-'z'
    return 97 + (charCode - 97 + shift) % 26;
  }
  return charCode;
}

String _unmapString1(String input) {
  return String.fromCharCodes(
    input.codeUnits.map((c) => _unmapChar1(c, input.length)),
  );
}

int _unmapChar1(int charCode, int shift) {
  if (charCode >= 48 && charCode <= 57) {
    // '0'-'9'
    return 48 + (charCode - 48 - shift + 10) % 10;
  } else if (charCode >= 65 && charCode <= 90) {
    // 'A'-'Z'
    return 65 + (charCode - 65 - shift + 26) % 26;
  } else if (charCode >= 97 && charCode <= 122) {
    // 'a'-'z'
    return 97 + (charCode - 97 - shift + 26) % 26;
  }
  return charCode;
}
