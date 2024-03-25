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

  static ModelUserPermissions get _false {
    return ModelUserPermissions(
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

  static ModelUserPermissions get empty {
    return ModelUserPermissions();
  }

  static ModelUserPermissions get addMinimal {
    return ModelUserPermissions(minimalPermit: true, minimalRequest: true);
  }

  static ModelUserPermissions get removeMinimal {
    return ModelUserPermissions(minimalPermit: false, minimalRequest: false);
  }

  static ModelUserPermissions get addMessaging {
    return ModelUserPermissions(messagingPermit: true, messagingRequest: true);
  }

  static ModelUserPermissions get removeMessaging {
    return ModelUserPermissions(messagingPermit: false, messagingRequest: false);
  }

  static ModelUserPermissions get addReadOnlyPermit {
    return ModelUserPermissions(readOnlyPermit: true);
  }

  static ModelUserPermissions get removeReadOnlyPermit {
    return ModelUserPermissions(readOnlyPermit: false);
  }

  static ModelUserPermissions get addReadOnlyRequest {
    return ModelUserPermissions(readOnlyRequest: true);
  }

  static ModelUserPermissions get removeReadOnlyRequest {
    return ModelUserPermissions(readOnlyRequest: false);
  }

  static ModelUserPermissions get addEditorPermit {
    return ModelUserPermissions(readOnlyPermit: true, editorPermit: true);
  }

  static ModelUserPermissions get removeEditorPermit {
    return ModelUserPermissions(readOnlyPermit: false, editorPermit: false);
  }

  static ModelUserPermissions get addEditorRequest {
    return ModelUserPermissions(readOnlyRequest: true, editorRequest: true);
  }

  static ModelUserPermissions get removeEditorRequest {
    return ModelUserPermissions(readOnlyRequest: false, editorRequest: false);
  }

  //
  //
  //

  static ModelUserPermissions get addNotificationPermit {
    return ModelUserPermissions(notificationPermit: true);
  }

  static ModelUserPermissions get addNotificationRequest {
    return ModelUserPermissions(notificationRequest: true);
  }

  static ModelUserPermissions get blocked {
    return _false;
  }

  static ModelUserPermissions get minimal {
    return blocked.copyWith(addMinimal).copyWith(addMessaging);
  }

  static ModelUserPermissions get readOnlyRequest {
    return minimal.copyWith(addReadOnlyRequest);
  }

  static ModelUserPermissions get readOnlyPermit {
    return minimal.copyWith(addReadOnlyPermit);
  }

  static ModelUserPermissions get editorRequest {
    return minimal.copyWith(addEditorRequest);
  }

  static ModelUserPermissions get editorPermit {
    return minimal.copyWith(addEditorPermit);
  }

  //
  //
  //

  static ModelUserPermissions permitFromAccesType(AccessType accessType) {
    switch (accessType) {
      case AccessType.EDITOR:
        return editorPermit;
      case AccessType.READ_ONLY:
        return readOnlyPermit;
      case AccessType.MINIMAL:
        return minimal;
    }
  }

  static ModelUserPermissions requestFromAccesType(AccessType accessType) {
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
