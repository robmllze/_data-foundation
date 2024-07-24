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

class GooglePlacesStructuredFormattingModel
    extends _GooglePlacesStructuredFormattingModel {
  //
  //
  //

  static const CLASS_NAME = 'GooglePlacesStructuredFormattingModel';

  @override
  String get $className => CLASS_NAME;

  final String? mainText;
  final List<GooglePlacesMatchedSubstringModel>? mainTextMatchedSubstrings;
  final String? secondaryText;

  //
  //
  //

  const GooglePlacesStructuredFormattingModel({
    required this.mainText,
    required this.mainTextMatchedSubstrings,
    required this.secondaryText,
  });

  const GooglePlacesStructuredFormattingModel.c2({
    this.mainText,
    this.mainTextMatchedSubstrings,
    this.secondaryText,
  });

  factory GooglePlacesStructuredFormattingModel.c3({
    String? mainText,
    List<GooglePlacesMatchedSubstringModel>? mainTextMatchedSubstrings,
    String? secondaryText,
  }) {
    assert(mainText != null);
    assert(mainTextMatchedSubstrings != null);
    assert(secondaryText != null);
    return GooglePlacesStructuredFormattingModel(
      mainText: mainText,
      mainTextMatchedSubstrings: mainTextMatchedSubstrings,
      secondaryText: secondaryText,
    );
  }

  factory GooglePlacesStructuredFormattingModel.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'GooglePlacesStructuredFormattingModel.from: $e');
      rethrow;
    }
  }

  static GooglePlacesStructuredFormattingModel? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory GooglePlacesStructuredFormattingModel.of(
    GooglePlacesStructuredFormattingModel other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'GooglePlacesStructuredFormattingModel.of: $e');
      rethrow;
    }
  }

  static GooglePlacesStructuredFormattingModel? ofOrNull(
    GooglePlacesStructuredFormattingModel? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory GooglePlacesStructuredFormattingModel.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'GooglePlacesStructuredFormattingModel.fromJsonString: $e');
      rethrow;
    }
  }

  static GooglePlacesStructuredFormattingModel? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return GooglePlacesStructuredFormattingModel.fromJson(decoded);
      } else {
        return const GooglePlacesStructuredFormattingModel.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory GooglePlacesStructuredFormattingModel.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'GooglePlacesStructuredFormattingModel.fromJson: $e');
      rethrow;
    }
  }

  static GooglePlacesStructuredFormattingModel? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final mainText0 = otherData?['main_text'];
      final mainText = mainText0?.toString().trim().nullIfEmpty;
      final mainTextMatchedSubstrings0 =
          otherData?['main_text_matched_substrings'];
      final mainTextMatchedSubstrings = letList(mainTextMatchedSubstrings0)
          ?.map(
            (p0) => () {
              final a = letMap<String, dynamic>(p0);
              return a != null
                  ? GooglePlacesMatchedSubstringModel.fromJson(a)
                  : null;
            }(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final secondaryText0 = otherData?['secondary_text'];
      final secondaryText = secondaryText0?.toString().trim().nullIfEmpty;
      return GooglePlacesStructuredFormattingModel(
        mainText: mainText,
        mainTextMatchedSubstrings: mainTextMatchedSubstrings,
        secondaryText: secondaryText,
      );
    } catch (e) {
      return null;
    }
  }

  factory GooglePlacesStructuredFormattingModel.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'GooglePlacesStructuredFormattingModel.fromUri: $e');
      rethrow;
    }
  }

  static GooglePlacesStructuredFormattingModel? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return GooglePlacesStructuredFormattingModel.fromJson(
            uri.queryParameters);
      } else {
        return const GooglePlacesStructuredFormattingModel.c2();
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
      final mainText0 = this.mainText?.trim().nullIfEmpty;
      final mainTextMatchedSubstrings0 = this
          .mainTextMatchedSubstrings
          ?.map(
            (p0) => p0?.toJson(),
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final secondaryText0 = this.secondaryText?.trim().nullIfEmpty;
      final withNulls = mergeMapsDeep([
        {
          'main_text': mainText0,
        },
        {
          'main_text_matched_substrings': mainTextMatchedSubstrings0,
        },
        {
          'secondary_text': secondaryText0,
        },
      ]).mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'GooglePlacesStructuredFormattingModel.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  GooglePlacesStructuredFormattingModel copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return GooglePlacesStructuredFormattingModel.fromJson(c);
  }

  //
  //
  //

  // mainText.
  String get mainTextField => this.mainText!;

  // mainTextMatchedSubstrings.
  List<GooglePlacesMatchedSubstringModel> get mainTextMatchedSubstringsField =>
      this.mainTextMatchedSubstrings!;

  // secondaryText.
  String get secondaryTextField => this.secondaryText!;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class GooglePlacesStructuredFormattingModelFieldNames {
  //
  //
  //

  static const mainText = 'main_text';
  static const mainTextMatchedSubstrings = 'main_text_matched_substrings';
  static const secondaryText = 'secondary_text';

  //
  //
  //

  const GooglePlacesStructuredFormattingModelFieldNames._();
}
