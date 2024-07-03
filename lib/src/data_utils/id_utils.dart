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
import 'package:xyz_security/xyz_security.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// A collection of utilities for generating and converting IDs and Public IDs
/// or PIDs.
final class IdUtils {
  //
  //
  //

  IdUtils._();

  //
  // Relationship ID
  //

  static const RELATIONSHIP_ID_PREFIX = 'r';

  static String newRelationshipId() => _newPidV4(prefix: RELATIONSHIP_ID_PREFIX);

  //
  // Event ID
  //

  static const EVENT_ID_PREFIX = 'e';

  static String newEventId() => _newPidV4(prefix: EVENT_ID_PREFIX);

  //
  // User PID
  //

  static const USER_PID_PREFIX = 'pu';

  static bool isUserPid(String pid) => hasPrefix(pid, USER_PID_PREFIX);

  static String idToBase16UserId({
    required String seed,
    required String userPid,
  }) {
    return pidToId(
      seed: seed,
      pid: userPid,
    );
  }

  static String idToUserPid({
    required String seed,
    required String userId,
  }) {
    return idToPid(
      seed: seed,
      id: userId,
      prefix: USER_PID_PREFIX,
    );
  }

  //
  // Job PID
  //

  static const JOB_PID_PREFIX = 'pj';

  static bool isJobPid(String pid) => hasPrefix(pid, JOB_PID_PREFIX);

  static String idToJobPid({
    required String seed,
    required String jobId,
  }) {
    return idToPid(
      seed: seed,
      id: jobId,
      prefix: JOB_PID_PREFIX,
    );
  }

  //
  // Project PID
  //

  static const PROJECT_PID_PREFIX = 'pp';

  static bool isProjectPid(String pid) => hasPrefix(pid, PROJECT_PID_PREFIX);

  static String idToProjectPid({
    required String seed,
    required String projectId,
  }) {
    return idToPid(
      seed: seed,
      id: projectId,
      prefix: PROJECT_PID_PREFIX,
    );
  }

  //
  // Organization PID
  //

  static const ORGANIZATION_PID_PREFIX = 'po';

  static bool isOrganizationPid(String pid) => hasPrefix(pid, ORGANIZATION_PID_PREFIX);

  static String idToOrganizationPid({
    required String seed,
    required String organizationId,
  }) {
    return idToPid(
      seed: seed,
      id: organizationId,
      prefix: ORGANIZATION_PID_PREFIX,
    );
  }

  //
  //
  //

  // ---------------------------------------------------------------------------

  //
  //
  //

  /// Converts an ID to a PID.
  static String idToPid({
    required String seed,
    required String id,
    String prefix = '',
  }) {
    final mapper = BijectiveUuidMapper(seed: seed, charList: BASE_62_CHAR_LIST);
    final b = mapper.map(id);
    return prefix.isNotEmpty ? '$prefix$_SEPARATOR$b' : b;
  }

  /// Converts a PID to an ID.
  static String pidToId({
    required String seed,
    required String pid,
  }) {
    final [_, b] = pid.split(_SEPARATOR);
    final mapper = BijectiveUuidMapper(seed: seed, charList: BASE_62_CHAR_LIST);
    return mapper.unmap(b);
  }

  /// Creates a new UUID v4.
  static String newUuidV4() {
    return const Uuid().v4();
  }

  /// Gets the prefix of an [id].
  static String getPrefix(String id) {
    final parts = id.split(_SEPARATOR);
    return parts.length > 1 ? parts[0] : '';
  }

  /// Checks if an [id] has a [prefix].
  static bool hasPrefix(String id, String prefix) {
    return getPrefix(id) == prefix;
  }

  /// Creates a new PID v4.
  static String _newPidV4({
    String prefix = '',
    String? seed,
  }) {
    final result = idToPid(
      seed: seed ?? newUuidV4(),
      id: newUuidV4(),
      prefix: prefix,
    );
    return result;
  }

  /// A separator of the prefix and the ID.
  static const _SEPARATOR = '_';

  /// Base 62 character list.
  /// Contains all the characters used in the base 62 encoding in a random order. They include
  /// 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ. Do not change this after
  /// release.
  static const BASE_62_CHAR_LIST = 'G62h4u5vkE1AolqVg7CsINSQOYayPWeRMxz3dKwrmtcn8UpXiL0fjDJHBZbT9F';
}
