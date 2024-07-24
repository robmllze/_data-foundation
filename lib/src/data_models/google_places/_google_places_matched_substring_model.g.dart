//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY 🇽🇾🇿 GEN - DO NOT MODIFY BY HAND
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

// ignore_for_file: annotate_overrides
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: invalid_null_aware_operator
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_non_null_assertion
// ignore_for_file: unnecessary_null_comparison
// ignore_for_file: unnecessary_this

part of 'google_places.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class GooglePlacesMatchedSubstringModel
    extends _GooglePlacesMatchedSubstringModel {
  //
  //
  //

  static const CLASS_NAME = 'GooglePlacesMatchedSubstringModel';

  @override
  String get $className => CLASS_NAME;

  final int? length;
  final int? offset;

  //
  //
  //

  const GooglePlacesMatchedSubstringModel({
    required this.length,
    required this.offset,
  });

  const GooglePlacesMatchedSubstringModel.c2({
    this.length,
    this.offset,
  });

  factory GooglePlacesMatchedSubstringModel.c3({
    int? length,
    int? offset,
  }) {
    assert(length != null);
    assert(offset != null);
    return GooglePlacesMatchedSubstringModel(
      length: length,
      offset: offset,
    );
  }

  factory GooglePlacesMatchedSubstringModel.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'GooglePlacesMatchedSubstringModel.from: $e');
      rethrow;
    }
  }

  static GooglePlacesMatchedSubstringModel? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory GooglePlacesMatchedSubstringModel.of(
    GooglePlacesMatchedSubstringModel other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'GooglePlacesMatchedSubstringModel.of: $e');
      rethrow;
    }
  }

  static GooglePlacesMatchedSubstringModel? ofOrNull(
    GooglePlacesMatchedSubstringModel? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory GooglePlacesMatchedSubstringModel.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'GooglePlacesMatchedSubstringModel.fromJsonString: $e');
      rethrow;
    }
  }

  static GooglePlacesMatchedSubstringModel? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return GooglePlacesMatchedSubstringModel.fromJson(decoded);
      } else {
        return const GooglePlacesMatchedSubstringModel.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory GooglePlacesMatchedSubstringModel.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'GooglePlacesMatchedSubstringModel.fromJson: $e');
      rethrow;
    }
  }

  static GooglePlacesMatchedSubstringModel? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final length0 = otherData?['length'];
      final length = letInt(length0);
      final offset0 = otherData?['offset'];
      final offset = letInt(offset0);
      return GooglePlacesMatchedSubstringModel(
        length: length,
        offset: offset,
      );
    } catch (e) {
      return null;
    }
  }

  factory GooglePlacesMatchedSubstringModel.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'GooglePlacesMatchedSubstringModel.fromUri: $e');
      rethrow;
    }
  }

  static GooglePlacesMatchedSubstringModel? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return GooglePlacesMatchedSubstringModel.fromJson(uri.queryParameters);
      } else {
        return const GooglePlacesMatchedSubstringModel.c2();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  @override
  Map<String, dynamic> toJson({
    dynamic defaultValue,
    bool includeNulls = false,
  }) {
    try {
      final length0 = this.length;
      final offset0 = this.offset;
      final withNulls = mergeMapsDeep([
        {
          'length': length0,
        },
        {
          'offset': offset0,
        },
      ]).mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'GooglePlacesMatchedSubstringModel.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  GooglePlacesMatchedSubstringModel copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return GooglePlacesMatchedSubstringModel.fromJson(c);
  }

  //
  //
  //

  // length.
  int get lengthField => this.length!;

  // offset.
  int get offsetField => this.offset!;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class GooglePlacesMatchedSubstringModelFieldNames {
  //
  //
  //

  static const length = 'length';
  static const offset = 'offset';

  //
  //
  //

  const GooglePlacesMatchedSubstringModelFieldNames._();
}
