//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

abstract final class UserAndUserPermissionUtils {
  //
  //
  //

  static ModelConnectionPermissions get _false {
    return const ModelConnectionPermissions(
      editorPermit: false,
      editorRequest: false,
      minimalPermit: false,
      minimalRequest: false,
      messagingPermit: false,
      messagingRequest: false,
      notificationPermit: false,
      notificationRequest: false,
      readOnlyPermit: false,
      readOnlyRequest: false,
    );
  }

  static ModelConnectionPermissions get empty {
    return const ModelConnectionPermissions();
  }

  static ModelConnectionPermissions get addMinimal {
    return const ModelConnectionPermissions(minimalPermit: true, minimalRequest: true);
  }

  static ModelConnectionPermissions get removeMinimal {
    return const ModelConnectionPermissions(minimalPermit: false, minimalRequest: false);
  }

  static ModelConnectionPermissions get addMessaging {
    return const ModelConnectionPermissions(messagingPermit: true, messagingRequest: true);
  }

  static ModelConnectionPermissions get removeMessaging {
    return const ModelConnectionPermissions(messagingPermit: false, messagingRequest: false);
  }

  static ModelConnectionPermissions get addReadOnlyPermit {
    return const ModelConnectionPermissions(readOnlyPermit: true);
  }

  static ModelConnectionPermissions get removeReadOnlyPermit {
    return const ModelConnectionPermissions(readOnlyPermit: false);
  }

  static ModelConnectionPermissions get addReadOnlyRequest {
    return const ModelConnectionPermissions(readOnlyRequest: true);
  }

  static ModelConnectionPermissions get removeReadOnlyRequest {
    return const ModelConnectionPermissions(readOnlyRequest: false);
  }

  static ModelConnectionPermissions get addEditorPermit {
    return const ModelConnectionPermissions(readOnlyPermit: true, editorPermit: true);
  }

  static ModelConnectionPermissions get removeEditorPermit {
    return const ModelConnectionPermissions(readOnlyPermit: false, editorPermit: false);
  }

  static ModelConnectionPermissions get addEditorRequest {
    return const ModelConnectionPermissions(readOnlyRequest: true, editorRequest: true);
  }

  static ModelConnectionPermissions get removeEditorRequest {
    return const ModelConnectionPermissions(readOnlyRequest: false, editorRequest: false);
  }

  //
  //
  //

  static ModelConnectionPermissions get addNotificationPermit {
    return const ModelConnectionPermissions(notificationPermit: true);
  }

  static ModelConnectionPermissions get addNotificationRequest {
    return const ModelConnectionPermissions(notificationRequest: true);
  }

  static ModelConnectionPermissions get blocked {
    return _false;
  }

  static ModelConnectionPermissions get minimal {
    return blocked.copyWith(addMinimal).copyWith(addMessaging);
  }

  static ModelConnectionPermissions get readOnlyRequest {
    return minimal.copyWith(addReadOnlyRequest);
  }

  static ModelConnectionPermissions get readOnlyPermit {
    return minimal.copyWith(addReadOnlyPermit);
  }

  static ModelConnectionPermissions get editorRequest {
    return minimal.copyWith(addEditorRequest);
  }

  static ModelConnectionPermissions get editorPermit {
    return minimal.copyWith(addEditorPermit);
  }

  //
  //
  //

  static ModelConnectionPermissions permitFromAccesType(AccessType accessType) {
    switch (accessType) {
      case AccessType.EDITOR:
        return editorPermit;
      case AccessType.READ_ONLY:
        return readOnlyPermit;
      case AccessType.MINIMAL:
        return minimal;
    }
  }

  static ModelConnectionPermissions requestFromAccesType(AccessType accessType) {
    switch (accessType) {
      case AccessType.EDITOR:
        return editorRequest;
      case AccessType.READ_ONLY:
        return readOnlyRequest;
      case AccessType.MINIMAL:
        return minimal;
    }
  }
}
