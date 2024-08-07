//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY XYZ_GENIE
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

part '_public_model.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

const PUBLIC_MODEL_FIELDS = {
  ...MODEL_ENTRY_FIELDS,
  ('email?', ModelQueryable),
  ('address_entries?', Map<String, ModelAddressEntry>),
  ('email_entries?', Map<String, ModelEmailEntry>),
  ('file_entries?', Map<String, ModelFileEntry>),
  ('phone_entries?', Map<String, ModelPhoneEntry>),
  ('device_regs?', List<ModelDeviceRegistration>),
};

@GenerateModel(
  shouldInherit: true,
  fields: PUBLIC_MODEL_FIELDS,
)
abstract class _PublicModel extends Model implements ModelEntry, ModelDisplay {
  const _PublicModel();
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension PublicModelExtension on PublicModel {
  //
  //
  //

  /// Whether this model's [id] is not `null` and not empty.
  bool isIdNotEmpty() {
    return this.id != null && this.id!.isNotEmpty;
  }
  //
  //
  //

  /// Returns all the download URLs for the files in the public model if they
  /// exist, or`null`.
  Iterable<String>? get fileDownloadUrls {
    final a = this.sortedFilesByCreatedAt(ascending: false);
    final b = a?.map((e) => e.downloadUrl.toString()).nullIfEmpty;
    return b;
  }

  //
  //
  //

  /// Returns the avatar image download URL for the public model if it exists,
  /// or `null`.
  String? get avatarImageDownloadUrl {
    return this.avatarImage?.downloadUrl.toString();
  }

  //
  //
  //

  /// Returns the avatar image file entry for the public model if it exists, or
  /// `null`.
  ModelFileEntry? get avatarImage {
    final a = this.sortedFilesByCreatedAt(ascending: false);
    final b = a?.firstWhereOrNull((e) => e.isAvatarImage());
    return b;
  }

  //
  //
  //

  /// Whether the file with the given [fileId] has a `download_url` or not. The
  /// assumption is that if the file has a `download_url`, then it has been
  /// uploaded successfully and is available for download.
  bool isFileUploadingAssumtion(String fileId) {
    final a = this.fileEntries?[fileId];
    final b = a != null && a.downloadUrl == null;
    return b;
  }

  //
  //
  //

  /// Whether the avatar image is being uploaded or not. The assumption is that
  /// if the avatar image has a `download_url`, then it has been uploaded
  /// successfully and is available for download.
  bool isUploadingAvatarImageAssumtion() {
    final a = this.avatarImage;
    final b = a != null && a.downloadUrl == null;
    return b;
  }

  //
  //
  //

  Iterable<ModelFileEntry>? sortedFilesByCreatedAt({bool ascending = true}) {
    return this.fileEntries?.values.toList()
      ?..sort((a, b) {
        final now = DateTime.now();
        return (ascending ? 1 : -1) *
            (a.createdGReg?.registeredAt ?? now).compareTo((b.createdGReg?.registeredAt ?? now));
      });
  }

  //
  //
  //

  Iterable<ModelFileEntry>? get profileFiles {
    return this.sortedFilesByCreatedAt(ascending: false)?.where((e) => e.isProfileFile());
  }

  //
  //
  //

  Set<String> get notificationTokens =>
      this.deviceRegs?.map((e) => e.notificationToken).nonNulls.toSet() ?? {};
}
