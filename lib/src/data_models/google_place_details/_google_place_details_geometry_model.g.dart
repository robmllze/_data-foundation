//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY 🇽🇾🇿 GEN - DO NOT MODIFY BY HAND
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

// ignore_for_file: annotate_overrides
// ignore_for_file: invalid_null_aware_operator
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_non_null_assertion
// ignore_for_file: unnecessary_null_comparison
// ignore_for_file: unnecessary_question_mark
// ignore_for_file: unnecessary_this

part of 'google_place_details.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class GooglePlaceDetailsGeometryModel extends _GooglePlaceDetailsGeometryModel {
  //
  //
  //

  static const CLASS_NAME = 'GooglePlaceDetailsGeometryModel';

  @override
  String get $className => CLASS_NAME;

  final GooglePlaceDetailsLocationModel? location;
  final GooglePlaceDetailsViewportModel? viewport;

  //
  //
  //

  const GooglePlaceDetailsGeometryModel({
    required this.location,
    required this.viewport,
  });

  const GooglePlaceDetailsGeometryModel.c2({
    this.location,
    this.viewport,
  });

  factory GooglePlaceDetailsGeometryModel.c3({
    GooglePlaceDetailsLocationModel? location,
    GooglePlaceDetailsViewportModel? viewport,
  }) {
    assert(location != null);
    assert(viewport != null);
    return GooglePlaceDetailsGeometryModel(
      location: location,
      viewport: viewport,
    );
  }

  factory GooglePlaceDetailsGeometryModel.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsGeometryModel.from: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsGeometryModel? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory GooglePlaceDetailsGeometryModel.of(
    GooglePlaceDetailsGeometryModel other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsGeometryModel.of: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsGeometryModel? ofOrNull(
    GooglePlaceDetailsGeometryModel? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory GooglePlaceDetailsGeometryModel.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsGeometryModel.fromJsonString: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsGeometryModel? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return GooglePlaceDetailsGeometryModel.fromJson(decoded);
      } else {
        return const GooglePlaceDetailsGeometryModel.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory GooglePlaceDetailsGeometryModel.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsGeometryModel.fromJson: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsGeometryModel? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final location0 = otherData?['location'];
      final location = () {
        final a = letMap<String, dynamic>(location0);
        return a != null ? GooglePlaceDetailsLocationModel.fromJson(a) : null;
      }();
      final viewport0 = otherData?['viewport'];
      final viewport = () {
        final a = letMap<String, dynamic>(viewport0);
        return a != null ? GooglePlaceDetailsViewportModel.fromJson(a) : null;
      }();
      return GooglePlaceDetailsGeometryModel(
        location: location,
        viewport: viewport,
      );
    } catch (e) {
      return null;
    }
  }

  factory GooglePlaceDetailsGeometryModel.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsGeometryModel.fromUri: $e');
      rethrow;
    }
  }

  static GooglePlaceDetailsGeometryModel? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return GooglePlaceDetailsGeometryModel.fromJson(uri.queryParameters);
      } else {
        return const GooglePlaceDetailsGeometryModel.c2();
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
      final location0 = this.location?.toJson();
      final viewport0 = this.viewport?.toJson();
      final withNulls = mergeMapsDeep([
        {
          'location': location0,
        },
        {
          'viewport': viewport0,
        },
      ]).mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'GooglePlaceDetailsGeometryModel.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  GooglePlaceDetailsGeometryModel copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return GooglePlaceDetailsGeometryModel.fromJson(c);
  }

  //
  //
  //

  // location.
  GooglePlaceDetailsLocationModel get locationField => this.location!;

  // viewport.
  GooglePlaceDetailsViewportModel get viewportField => this.viewport!;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class GooglePlaceDetailsGeometryModelFieldNames {
  //
  //
  //

  static const location = 'location';
  static const viewport = 'viewport';

  //
  //
  //

  const GooglePlaceDetailsGeometryModelFieldNames._();
}
