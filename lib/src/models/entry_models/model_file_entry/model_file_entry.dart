//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY XYZ_GENIE
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

part '_model_file_entry.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    ...EntryBaseModel.FIELDS,
    ('name?', String),
    ('download_url?', Uri),
    ('storage_path?', String),
    ('definition_path?', List<String>),
    ('size?', int),
    ('extension?', T_LOWER_CASE_STRING),
  },
)
abstract class _ModelFileEntry extends EntryBaseModel<ModelFileEntry> {
  //
  //
  //

  bool isFlutterImageExtension() => this._isAnyExtension(FLUTTER_IMAGE_SUPPORTED_EXTENSIONS);
  bool isFlutterVideoExtension() => this._isAnyExtension(FLUTTER_VIDEO_SUPPORTED_EXTENSIONS);
  bool isAudioPlayersExtension() => this._isAnyExtension(AUDIOPLAYERS_SUPPORTED_EXTENSIONS);
  bool isSvgExtension() => this._isAnyExtension(['svg']);
  bool isPdfExtension() => this._isAnyExtension(['pdf']);
  bool isTextExtension() => this._isAnyExtension(['txt']);
  bool isJsonExtension() => this._isAnyExtension(['json', 'jsonc']);
  bool isCsvExtension() => this._isAnyExtension(['csv']);
  bool isYamlExtension() => this._isAnyExtension(['yaml', 'yml']);

  //
  //
  //

  bool _isAnyExtension(List<String> extensions) =>
      extensions.map((e) => e.toLowerCase()).contains(this.model.extension);

  //
  //
  //

  bool definitionPathStartsWith(List<String> a, [List<String> b = const []]) {
    final combinedPath = [...a, ...b];
    final definitionPath = this.model.definitionPath ?? [];
    if (definitionPath.length < combinedPath.length) {
      return false;
    }
    for (var i = 0; i < combinedPath.length; i++) {
      final a = definitionPath[i].trim().toLowerCase();
      final b = combinedPath[i].trim().toLowerCase();
      if (a != b) {
        return false;
      }
    }
    return true;
  }
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// See: https://api.flutter.dev/flutter/widgets/Image-class.html#:~:text=The%20following%20image%20formats%20are,WebP%2C%20BMP%2C%20and%20WBMP.
const FLUTTER_IMAGE_SUPPORTED_EXTENSIONS = [
  'png',
  'jpg',
  'jpeg',
  'gif',
  'webp',
  'bmp',
  'wbmp',
];

/// See: https://pub.dev/packages/video_player_web
const FLUTTER_VIDEO_SUPPORTED_EXTENSIONS = [
  'mp4',
  'webm',
  'ogg',
  'av1',
  'hevc',
];

// See: https://pub.dev/packages/audioplayers
const AUDIOPLAYERS_SUPPORTED_EXTENSIONS = [
  'mp3',
  'wav',
  'ogg',
  'aac',
  'm4a',
  'flac',
  'opus',
];