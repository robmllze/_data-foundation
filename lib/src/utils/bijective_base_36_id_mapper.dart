//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'dart:convert';
import 'package:crypto/crypto.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class BijectiveBase36IdMapper {
  //
  //
  //

  final String seed;
  late final Digest digest = generateDigestFromSeed(seed);

  //
  //
  //

  BijectiveBase36IdMapper({
    required this.seed,
  });

  //
  //
  //

  String mapId(String id) {
    return bijectiveStringTransformationV1(
      source: id,
      digest: digest,
      charList: BASE_36_CHAR_LIST_A,
    );
  }

  //
  //
  //

  String reverseMapId(String id) {
    return reverseBijectiveStringTransformationV1(
      source: id,
      digest: digest,
      charList: BASE_36_CHAR_LIST_A,
    );
  }
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

const BASE_36_CHAR_LIST_A = '09a7px4d6iejkyl1g5no2r3bvchfuzw8mqst';
const BASE_36_CHAR_LIST_B = '0123456789abcdefghijklmnopqrstuvwxyz';

/// Maps [source] to a unique string using a bijective transformation.
String bijectiveStringTransformationV1({
  required String source,
  required Digest digest,
  required String charList,
}) {
  final k = _removeDashesFromString(source);
  final indexes = _stringToIndexes(k, charList);
  final max = charList.length - 1;
  final mappedIndexes = indexes.map((i) => _bijectiveTransformationV1(i, max, digest));
  final result = _indexesToString(mappedIndexes, charList);
  final resultWithDashes = _addDashesToString(result, [8, 12, 16, 20]);
  return resultWithDashes;
}

/// Unmaps [source] that was previously mapped using [bijectiveStringTransformationV1].
String reverseBijectiveStringTransformationV1({
  required String source,
  required Digest digest,
  required String charList,
}) {
  final k = _removeDashesFromString(source);
  final indexes = _stringToIndexes(k, charList);
  final max = charList.length - 1;
  final mappedIndexes = indexes.map((i) => _reverseBijectiveTransformationV1(i, max, digest));
  final result = _indexesToString(mappedIndexes, charList);
  final resultWithDashes = _addDashesToString(result, [8, 12, 16, 20]);
  return resultWithDashes;
}

/// Converts string to a list of indices based on [charList].
Iterable<int> _stringToIndexes(String input, String charList) {
  return input.split('').map((c) {
    var index = charList.indexOf(c);
    if (index == -1) {
      throw FormatException('Invalid character: $c');
    }
    return index;
  });
}

/// Converts a list of indices back to a string using [charList].
String _indexesToString(Iterable<int> indexes, String charList) {
  return String.fromCharCodes(
    indexes.map((i) {
      if (i < 0 || i >= charList.length) {
        throw FormatException('Invalid index: $i');
      }
      return charList.codeUnitAt(i);
    }),
  );
}

/// Adds dashes to the given [source] string at the given [positions].
String _addDashesToString(String source, List<int> positions) {
  positions.sort((a, b) => b.compareTo(a));
  for (var position in positions) {
    if (position < source.length) {
      source = '${source.substring(0, position)}-${source.substring(position)}';
    }
  }

  return source;
}

/// Removes dashes from the given [source] string.
String _removeDashesFromString(String source) {
  return source.replaceAll('-', '');
}

/// Maps [x] to a unique number using a bijective transformation.
int _bijectiveTransformationV1(
  int x,
  int max,
  Digest digest,
) {
  final a = _generateAFromDigest(digest, max, 0);
  final b = _generateBFromDigest(digest, max, 8);
  final y = _bijectiveTransformation(x, max, a, b);
  return y;
}

int _bijectiveTransformation(int x, int max, int a, int b) {
  return (a * x + b) % (max + 1);
}

/// Unmaps [y] that was previously mapped using [_bijectiveTransformationV1].
int _reverseBijectiveTransformationV1(
  int y,
  int max,
  Digest digest,
) {
  final a = _generateAFromDigest(digest, max, 0);
  final b = _generateBFromDigest(digest, max, 8);
  final x = _reverseBijectiveTransformation(y, max, a, b);
  return x;
}

int _reverseBijectiveTransformation(int y, int max, int a, int b) {
  final aInverse = _modularInverse(a, max + 1);
  var n = (aInverse * (y - b)) % (max + 1);
  if (n < 0) n += (max + 1);
  return n;
}

/// Finds the modular inverse of the given number [a] with the given [modulus].
int _modularInverse(int a, int modulus) {
  var m0 = modulus, x0 = 0, x1 = 1;
  while (a > 1) {
    var q = a ~/ modulus;
    var t = modulus;
    modulus = a % modulus;
    a = t;
    t = x0;
    x0 = x1 - q * x0;
    x1 = t;
  }
  if (x1 < 0) x1 += m0;
  return x1;
}

/// Generates a valid value for 'a' from the given [digest].
int _generateAFromDigest(Digest digest, int max, int offset) {
  var modulus = max + 1;
  var a = _generateInt32FromDigest(digest, offset) % modulus;
  while (a <= 1 || _gcd(a, modulus) != 1) {
    a = (a + 1) % modulus;
  }
  return a;
}

/// Returns the greatest common divisor of two numbers [a] and [b].
int _gcd(int a, int b) {
  while (b != 0) {
    var t = b;
    b = a % b;
    a = t;
  }
  return a;
}

/// Generates a valid value for 'b' from the given [digest].
int _generateBFromDigest(Digest digest, int max, int offset) {
  return _generateInt32FromDigest(digest, offset) % (max + 1);
}

/// Generates a 32-bit integer from the given [digest] at the given [offset].
int _generateInt32FromDigest(Digest digest, int offset) {
  final source = _wrappableSubstring(digest.toString(), offset, 8);
  final seed = int.parse(source, radix: 16);
  return seed;
}

/// Returns a substring of the given [source] string starting at the given
/// [start] index and wrapping around to the beginning of the string if
/// necessary. Both [start] and [length] can be negative.
String _wrappableSubstring(String source, int start, int length) {
  start = start % source.length;
  if (start < 0) start += source.length;
  var substring = '';
  int currentIndex;
  for (var i = 0; i < length; i++) {
    currentIndex = (start + i) % source.length;
    substring += source[currentIndex];
  }
  return substring;
}

/// Generates a SHA256 digest from the given [password].
Digest generateDigestFromSeed(String password) {
  final bytes = utf8.encode(password);
  final digest = sha256.convert(bytes);
  return digest;
}
