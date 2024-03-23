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

  static ModelUserAndUserPermissions get _false {
    return ModelUserAndUserPermissions(
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

  static ModelUserAndUserPermissions get empty {
    return ModelUserAndUserPermissions();
  }

  static ModelUserAndUserPermissions get addMinimal {
    return ModelUserAndUserPermissions(minimalPermit: true, minimalRequest: true);
  }

  static ModelUserAndUserPermissions get removeMinimal {
    return ModelUserAndUserPermissions(minimalPermit: false, minimalRequest: false);
  }

  static ModelUserAndUserPermissions get addMessaging {
    return ModelUserAndUserPermissions(messagingPermit: true, messagingRequest: true);
  }

  static ModelUserAndUserPermissions get removeMessaging {
    return ModelUserAndUserPermissions(messagingPermit: false, messagingRequest: false);
  }

  static ModelUserAndUserPermissions get addReadOnlyPermit {
    return ModelUserAndUserPermissions(readOnlyPermit: true);
  }

  static ModelUserAndUserPermissions get removeReadOnlyPermit {
    return ModelUserAndUserPermissions(readOnlyPermit: false);
  }

  static ModelUserAndUserPermissions get addReadOnlyRequest {
    return ModelUserAndUserPermissions(readOnlyRequest: true);
  }

  static ModelUserAndUserPermissions get removeReadOnlyRequest {
    return ModelUserAndUserPermissions(readOnlyRequest: false);
  }

  static ModelUserAndUserPermissions get addEditorPermit {
    return ModelUserAndUserPermissions(readOnlyPermit: true, editorPermit: true);
  }

  static ModelUserAndUserPermissions get removeEditorPermit {
    return ModelUserAndUserPermissions(readOnlyPermit: false, editorPermit: false);
  }

  static ModelUserAndUserPermissions get addEditorRequest {
    return ModelUserAndUserPermissions(readOnlyRequest: true, editorRequest: true);
  }

  static ModelUserAndUserPermissions get removeEditorRequest {
    return ModelUserAndUserPermissions(readOnlyRequest: false, editorRequest: false);
  }

  //
  //
  //

  static ModelUserAndUserPermissions get addNotificationPermit {
    return ModelUserAndUserPermissions(notificationPermit: true);
  }

  static ModelUserAndUserPermissions get addNotificationRequest {
    return ModelUserAndUserPermissions(notificationRequest: true);
  }

  static ModelUserAndUserPermissions get blocked {
    return _false;
  }

  static ModelUserAndUserPermissions get minimal {
    return blocked.copyWith(addMinimal).copyWith(addMessaging);
  }

  static ModelUserAndUserPermissions get readOnlyRequest {
    return minimal.copyWith(addReadOnlyRequest);
  }

  static ModelUserAndUserPermissions get readOnlyPermit {
    return minimal.copyWith(addReadOnlyPermit);
  }

  static ModelUserAndUserPermissions get editorRequest {
    return minimal.copyWith(addEditorRequest);
  }

  static ModelUserAndUserPermissions get editorPermit {
    return minimal.copyWith(addEditorPermit);
  }

  //
  //
  //

  static ModelUserAndUserPermissions permitFromAccesType(AccessType accessType) {
    switch (accessType) {
      case AccessType.EDITOR:
        return editorPermit;
      case AccessType.READ_ONLY:
        return readOnlyPermit;
      case AccessType.MINIMAL:
        return minimal;
    }
  }

  static ModelUserAndUserPermissions requestFromAccesType(AccessType accessType) {
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