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

  static const EVENT_ID_PPREFIX = 'E';
  static const ORGANIZATION_PUB_ID_PPREFIX = 'O';
  static const PROVIDER_ID_PREFIX = 'P';
  static const RELATIONSHIP_ID_PPREFIX = 'R';
  static const USER_PUB_ID_PREFIX = 'P';

  //
  //
  //

  IdUtils._();

  //
  //
  //

  static String newUserPubId({required String userId}) {
    return toUserPubId(userId: userId);
  }

  static String toUserPubId({required String userId}) {
    return '$USER_PUB_ID_PREFIX-${_mapString1('${userId.substring(1, 4)}$userId')}';
  }

  static String toUserId({required String userPubId}) {
    return _unmapString1(userPubId.substring('$USER_PUB_ID_PREFIX-'.length)).substring(3);
  }

  //
  //
  //

  static String newEventId() {
    return newId(EVENT_ID_PPREFIX);
  }

  //
  //
  //

  static String newProviderId() {
    return newId(PROVIDER_ID_PREFIX);
  }

  //
  //
  //

  static String newRelationshipId() {
    return newId(RELATIONSHIP_ID_PPREFIX);
  }

  //
  //
  //

  static String newOrganizationPubId() {
    return newId(ORGANIZATION_PUB_ID_PPREFIX);
  }

  static String toOrganizationPubId({required String organizationId}) {
    return '$ORGANIZATION_PUB_ID_PPREFIX-${_mapString1('${organizationId.substring(1, 4)}$organizationId')}';
  }

  static String toOrganizationId({required String organizationPubId}) {
    return _unmapString1(organizationPubId.substring('$ORGANIZATION_PUB_ID_PPREFIX-'.length))
        .substring(3);
  }

  //
  //
  //

  static String newId([String prefix = '']) {
    return '${prefix.isNotEmpty ? "${prefix.toUpperCase()}-" : ""}${const Uuid().v1().replaceAll('-', '')}';
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
