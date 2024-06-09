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

part of 'model_map_tile.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ModelMapTile extends Model {
  //
  //
  //

  static const K_ACCESS_TOKEN = 'access_token';
  static const K_DARK_STYLE_ID = 'dark_style_id';
  static const K_IS_HIGH_DPI = 'is_high_dpi';
  static const K_LIGHT_STYLE_ID = 'light_style_id';
  static const K_SOURCE = 'source';
  static const K_TILE_SIZE = 'tile_size';
  static const K_USERNAME = 'username';
  static const K_X = 'x';
  static const K_Y = 'y';
  static const K_Z = 'z';

  static const CLASS = 'ModelMapTile';

  @override
  String get $class => CLASS;

  String? accessToken;
  String? darkStyleId;
  bool? isHighDpi;
  String? lightStyleId;
  String? source;
  int? tileSize;
  String? username;
  int? x;
  int? y;
  int? z;

  //
  //
  //

  ModelMapTile.empty();

  //
  //
  //

  factory ModelMapTile({
    required String accessToken,
    required String darkStyleId,
    bool? isHighDpi,
    required String lightStyleId,
    String? source,
    required int tileSize,
    required String username,
    int? x,
    int? y,
    int? z,
  }) {
    return ModelMapTile.b(
      accessToken: accessToken,
      darkStyleId: darkStyleId,
      isHighDpi: isHighDpi,
      lightStyleId: lightStyleId,
      source: source,
      tileSize: tileSize,
      username: username,
      x: x,
      y: y,
      z: z,
    );
  }

  //
  //
  //

  ModelMapTile.b({
    this.accessToken,
    this.darkStyleId,
    this.isHighDpi,
    this.lightStyleId,
    this.source,
    this.tileSize,
    this.username,
    this.x,
    this.y,
    this.z,
  }) {
    assert(accessToken != null);
    assert(darkStyleId != null);
    assert(lightStyleId != null);
    assert(tileSize != null);
    assert(username != null);
  }

  //
  //
  //

  factory ModelMapTile.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelMapTile.from: $e');
      rethrow;
    }
  }

  static ModelMapTile? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ModelMapTile.of(
    ModelMapTile other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'ModelMapTile.of: $e');
      rethrow;
    }
  }

  static ModelMapTile? ofOrNull(
    ModelMapTile? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory ModelMapTile.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'ModelMapTile.fromJsonString: $e');
      rethrow;
    }
  }

  static ModelMapTile? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ModelMapTile.fromJson(decoded);
      } else {
        return ModelMapTile.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ModelMapTile.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'ModelMapTile.fromJson: $e');
      rethrow;
    }
  }

  static ModelMapTile? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return ModelMapTile.empty()
        ..$accessToken = otherData?[K_ACCESS_TOKEN]
        ..$darkStyleId = otherData?[K_DARK_STYLE_ID]
        ..$isHighDpi = otherData?[K_IS_HIGH_DPI]
        ..$lightStyleId = otherData?[K_LIGHT_STYLE_ID]
        ..$source = otherData?[K_SOURCE]
        ..$tileSize = otherData?[K_TILE_SIZE]
        ..$username = otherData?[K_USERNAME]
        ..$x = otherData?[K_X]
        ..$y = otherData?[K_Y]
        ..$z = otherData?[K_Z];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ModelMapTile.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'ModelMapTile.fromUri: $e');
      rethrow;
    }
  }

  static ModelMapTile? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ModelMapTile.fromJson(uri.queryParameters);
      } else {
        return ModelMapTile.empty();
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
      final withNulls = <String, dynamic>{
        K_ACCESS_TOKEN: this.$accessToken,
        K_DARK_STYLE_ID: this.$darkStyleId,
        K_IS_HIGH_DPI: this.$isHighDpi,
        K_LIGHT_STYLE_ID: this.$lightStyleId,
        K_SOURCE: this.$source,
        K_TILE_SIZE: this.$tileSize,
        K_USERNAME: this.$username,
        K_X: this.$x,
        K_Y: this.$y,
        K_Z: this.$z,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'ModelMapTile.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return ModelMapTile.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (ModelMapTile.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = ModelMapTile.fromJson(otherData);
      if (other.accessToken != null) {
        this.accessToken = other.accessToken!;
      }
      if (other.darkStyleId != null) {
        this.darkStyleId = other.darkStyleId!;
      }
      if (other.isHighDpi != null) {
        this.isHighDpi = other.isHighDpi!;
      }
      if (other.lightStyleId != null) {
        this.lightStyleId = other.lightStyleId!;
      }
      if (other.source != null) {
        this.source = other.source!;
      }
      if (other.tileSize != null) {
        this.tileSize = other.tileSize!;
      }
      if (other.username != null) {
        this.username = other.username!;
      }
      if (other.x != null) {
        this.x = other.x!;
      }
      if (other.y != null) {
        this.y = other.y!;
      }
      if (other.z != null) {
        this.z = other.z!;
      }
    }
  }

  //
  //
  //

  // accessToken.
  String get accessTokenField => this.accessToken!;
  set accessTokenField(String v) => this.accessToken = v;
  @protected
  dynamic get $accessToken => this.accessToken?.toString().trim().nullIfEmpty;
  @protected
  set $accessToken(v) => this.accessToken = v?.toString().trim().nullIfEmpty;

  // darkStyleId.
  String get darkStyleIdField => this.darkStyleId!;
  set darkStyleIdField(String v) => this.darkStyleId = v;
  @protected
  dynamic get $darkStyleId => this.darkStyleId?.toString().trim().nullIfEmpty;
  @protected
  set $darkStyleId(v) => this.darkStyleId = v?.toString().trim().nullIfEmpty;

  // isHighDpi.
  bool? get isHighDpiField => this.isHighDpi;
  set isHighDpiField(bool? v) => this.isHighDpi = v;
  @protected
  dynamic get $isHighDpi => this.isHighDpi;
  @protected
  set $isHighDpi(v) => this.isHighDpi = letBool(v);

  // lightStyleId.
  String get lightStyleIdField => this.lightStyleId!;
  set lightStyleIdField(String v) => this.lightStyleId = v;
  @protected
  dynamic get $lightStyleId => this.lightStyleId?.toString().trim().nullIfEmpty;
  @protected
  set $lightStyleId(v) => this.lightStyleId = v?.toString().trim().nullIfEmpty;

  // source.
  String? get sourceField => this.source;
  set sourceField(String? v) => this.source = v;
  @protected
  dynamic get $source => this.source?.toString().trim().nullIfEmpty;
  @protected
  set $source(v) => this.source = v?.toString().trim().nullIfEmpty;

  // tileSize.
  int get tileSizeField => this.tileSize!;
  set tileSizeField(int v) => this.tileSize = v;
  @protected
  dynamic get $tileSize => this.tileSize;
  @protected
  set $tileSize(v) => this.tileSize = letInt(v);

  // username.
  String get usernameField => this.username!;
  set usernameField(String v) => this.username = v;
  @protected
  dynamic get $username => this.username?.toString().trim().nullIfEmpty;
  @protected
  set $username(v) => this.username = v?.toString().trim().nullIfEmpty;

  // x.
  int? get xField => this.x;
  set xField(int? v) => this.x = v;
  @protected
  dynamic get $x => this.x;
  @protected
  set $x(v) => this.x = letInt(v);

  // y.
  int? get yField => this.y;
  set yField(int? v) => this.y = v;
  @protected
  dynamic get $y => this.y;
  @protected
  set $y(v) => this.y = letInt(v);

  // z.
  int? get zField => this.z;
  set zField(int? v) => this.z = v;
  @protected
  dynamic get $z => this.z;
  @protected
  set $z(v) => this.z = letInt(v);
}
