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
    return ModelConnectionPermissions(
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
    return ModelConnectionPermissions();
  }

  static ModelConnectionPermissions get addMinimal {
    return ModelConnectionPermissions(minimalPermit: true, minimalRequest: true);
  }

  static ModelConnectionPermissions get removeMinimal {
    return ModelConnectionPermissions(minimalPermit: false, minimalRequest: false);
  }

  static ModelConnectionPermissions get addMessaging {
    return ModelConnectionPermissions(messagingPermit: true, messagingRequest: true);
  }

  static ModelConnectionPermissions get removeMessaging {
    return ModelConnectionPermissions(messagingPermit: false, messagingRequest: false);
  }

  static ModelConnectionPermissions get addReadOnlyPermit {
    return ModelConnectionPermissions(readOnlyPermit: true);
  }

  static ModelConnectionPermissions get removeReadOnlyPermit {
    return ModelConnectionPermissions(readOnlyPermit: false);
  }

  static ModelConnectionPermissions get addReadOnlyRequest {
    return ModelConnectionPermissions(readOnlyRequest: true);
  }

  static ModelConnectionPermissions get removeReadOnlyRequest {
    return ModelConnectionPermissions(readOnlyRequest: false);
  }

  static ModelConnectionPermissions get addEditorPermit {
    return ModelConnectionPermissions(readOnlyPermit: true, editorPermit: true);
  }

  static ModelConnectionPermissions get removeEditorPermit {
    return ModelConnectionPermissions(readOnlyPermit: false, editorPermit: false);
  }

  static ModelConnectionPermissions get addEditorRequest {
    return ModelConnectionPermissions(readOnlyRequest: true, editorRequest: true);
  }

  static ModelConnectionPermissions get removeEditorRequest {
    return ModelConnectionPermissions(readOnlyRequest: false, editorRequest: false);
  }

  //
  //
  //

  static ModelConnectionPermissions get addNotificationPermit {
    return ModelConnectionPermissions(notificationPermit: true);
  }

  static ModelConnectionPermissions get addNotificationRequest {
    return ModelConnectionPermissions(notificationRequest: true);
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
