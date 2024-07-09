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

part '_job_status_type.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateTypeUtils()

/// Represents the various status types for a construction job.
enum JobStatusType {
  /// Job has been created but no further action has been taken.
  CREATED,

  /// Job is in the planning stage.
  PLANNING,

  /// Job has been approved to proceed.
  APPROVED,

  /// Job has been scheduled to start on a specific date.
  SCHEDULED,

  /// Job is currently in progress.
  IN_PROGRESS,

  /// Job is currently on hold and not actively being worked on.
  ON_HOLD,

  /// Job has been completed.
  COMPLETED,

  /// Job has been inspected to ensure it meets required standards.
  INSPECTED,

  /// Job has been approved for payment.
  APPROVED_FOR_PAYMENT,

  /// Job has been closed and is no longer active.
  CLOSED,

  /// Job has been cancelled and will not be completed.
  CANCELLED,
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension IndexHueOnJobStatusTypeExtension on JobStatusType {
  double get indexHue {
    final hue = (index / JobStatusType.values.length) * 360;
    return hue;
  }
}
