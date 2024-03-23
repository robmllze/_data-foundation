//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licensing details can be found in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:uuid/uuid.dart' show Uuid;

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class IdUtils {
  //
  //
  //

  static const PUB_ID_PREFIX = 'P';
  static const EVENT_ID_PPREFIX = 'E';
  static const PROVIDER_ID_PREFIX = 'P';
  static const RELATIONSHIP_ID_PPREFIX = 'R';

  //
  //
  //

  IdUtils._();

  //
  //
  //

  static String newPubId({required String userId}) {
    return mapUserIdToPubId(userId: userId);
  }

  static bool isPubId(String id) {
    return id.startsWith('$PUB_ID_PREFIX-');
  }

  //
  //
  //

  static String newEventId() {
    return _newId(EVENT_ID_PPREFIX);
  }

  static bool isEventId(String id) {
    return id.startsWith('$EVENT_ID_PPREFIX-');
  }

  //
  //
  //

  static String newProviderId() {
    return _newId(PROVIDER_ID_PREFIX);
  }

  static bool isProviderId(String id) {
    return id.startsWith('$PROVIDER_ID_PREFIX-');
  }

  //
  //
  //

  static String newRelationshipId() {
    return _newId(RELATIONSHIP_ID_PPREFIX);
  }

  static bool isRelationshipId(String id) {
    return id.startsWith('$RELATIONSHIP_ID_PPREFIX-');
  }

  //
  //
  //

  static String _newId(String prefix) {
    return '${prefix.toUpperCase()}-${const Uuid().v1().replaceAll('-', '')}';
  }

  static String mapUserIdToPubId({required String userId}) {
    return '$PUB_ID_PREFIX-${_mapString1('${userId.substring(1, 4)}$userId')}';
  }

  static String mapPubIdToUserId({required String userPubId}) {
    return _unmapString1(userPubId.substring('$PUB_ID_PREFIX-'.length)).substring(3);
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
