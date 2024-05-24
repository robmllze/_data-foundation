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

/// A collection of database agnostic references to models, tables and
/// collections.
abstract final class Schema {
  //
  //
  //

  // Entries.

  static DataRef filesRef({
    String? fileId,
  }) {
    return DataRef(
      id: fileId,
      collection: const ['files'],
    );
  }

  static DataRef addressesRef({
    String? addressId,
  }) {
    return DataRef(
      id: addressId,
      collection: const ['addresses'],
    );
  }

  static DataRef emailsRef({
    String? emailId,
  }) {
    return DataRef(
      id: emailId,
      collection: const ['emails'],
    );
  }

  static DataRef notesRef({
    String? noteId,
  }) {
    return DataRef(
      id: noteId,
      collection: const ['notes'],
    );
  }

  static DataRef phoneRef({
    String? phoneId,
  }) {
    return DataRef(
      id: phoneId,
      collection: const ['phones'],
    );
  }

  // Invitations.

  static DataRef invitationsRef({
    String? invitationId,
  }) {
    return DataRef(
      id: invitationId,
      collection: const ['invitations'],
    );
  }

  // Events.

  static DataRef eventsRef({
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      collection: const ['events'],
    );
  }

  // Messages.

  static DataRef messagesRef({
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      collection: const ['messages'],
    );
  }

  // Relationship Messages.

  static DataRef relationshipMessageEventsRef({
    String? relationshipId,
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      collection: ['relationships', '$relationshipId', 'messages'],
    );
  }

  // Users.

  static DataRef usersRef({
    String? userId,
  }) {
    return DataRef(
      id: userId,
      collection: const ['users'],
    );
  }

  // User Pubs.

  static DataRef userPubsRef({
    String? userPid,
  }) {
    return DataRef(
      id: userPid,
      collection: const ['user_pubs'],
    );
  }

  // User Events.

  static DataRef userEventsRef({
    String? userPid,
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      collection: ['user_pubs', '$userPid', 'events'],
    );
  }

  // Relationships.

  static DataRef relationshipsRef({
    String? relationshipId,
  }) {
    return DataRef(
      id: relationshipId,
      collection: const ['relationships'],
    );
  }

  // Relationship Events.

  static DataRef relationshipEventsRef({
    String? relationshipId,
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      collection: ['relationships', '$relationshipId', 'events'],
    );
  }

  // Projects.

  static DataRef projectsRef({
    String? projectId,
  }) {
    return DataRef(
      id: projectId,
      collection: const ['projects'],
    );
  }

  // Project Pubs.

  static DataRef projectPubsRef({
    String? projectPid,
  }) {
    return DataRef(
      id: projectPid,
      collection: const ['project_pubs'],
    );
  }

  // Jobs.

  static DataRef jobsRef({
    String? jobId,
  }) {
    return DataRef(
      id: jobId,
      collection: const ['jobs'],
    );
  }

  // Job Pubs.

  static DataRef jobPubsRef({
    String? jobPid,
  }) {
    return DataRef(
      id: jobPid,
      collection: const ['job_pubs'],
    );
  }

  // Organizations.

  static DataRef organizationsRef({
    String? organizationId,
  }) {
    return DataRef(
      id: organizationId,
      collection: const ['organizations'],
    );
  }

  // Organization Pubs.

  static DataRef organizationPubsRef({
    String? organizationPid,
  }) {
    return DataRef(
      id: organizationPid,
      collection: const ['organization_pubs'],
    );
  }
}
