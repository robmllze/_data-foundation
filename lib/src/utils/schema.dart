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

  // Media.

  static DataRef fileRef({
    String? fileId,
  }) {
    return DataRef(
      id: fileId,
      tableName: 'files',
      collection: const ['files'],
    );
  }

  // Invitations.

  static DataRef invitationsRef({
    String? invitationId,
  }) {
    return DataRef(
      id: invitationId,
      tableName: 'invitations',
      collection: const ['invitations'],
    );
  }

  // Events.

  static DataRef eventsRef({
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      tableName: 'events',
      collection: const ['events'],
    );
  }

  // Messages.

  static DataRef messagesRef({
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      tableName: 'messages',
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
      tableName: 'relationship_messages',
      collection: ['relationships', '$relationshipId', 'messages'],
    );
  }

  // Users.

  static DataRef usersRef({
    String? userId,
  }) {
    return DataRef(
      id: userId,
      tableName: 'users',
      collection: const ['users'],
    );
  }

  // User Pubs.

  static DataRef userPubsRef({
    String? userPid,
  }) {
    return DataRef(
      id: userPid,
      tableName: 'user_pubs',
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
      tableName: 'user_events',
      collection: ['user_pubs', '$userPid', 'events'],
    );
  }

  // Relationships.

  static DataRef relationshipsRef({
    String? relationshipId,
  }) {
    return DataRef(
      id: relationshipId,
      tableName: 'relationships',
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
      tableName: 'relationship_events',
      collection: ['relationships', '$relationshipId', 'events'],
    );
  }

  // Projects.

  static DataRef projectsRef({
    String? projectId,
  }) {
    return DataRef(
      id: projectId,
      tableName: 'projects',
      collection: const ['projects'],
    );
  }

  // Project Pubs.

  static DataRef projectPubsRef({
    String? projectPid,
  }) {
    return DataRef(
      id: projectPid,
      tableName: 'project_pubs',
      collection: const ['project_pubs'],
    );
  }

  // Jobs.

  static DataRef jobsRef({
    String? jobId,
  }) {
    return DataRef(
      id: jobId,
      tableName: 'jobs',
      collection: const ['jobs'],
    );
  }

  // Job Pubs.

  static DataRef jobPubsRef({
    String? jobPid,
  }) {
    return DataRef(
      id: jobPid,
      tableName: 'job_pubs',
      collection: const ['job_pubs'],
    );
  }

  // Organizations.

  static DataRef organizationsRef({
    String? organizationId,
  }) {
    return DataRef(
      id: organizationId,
      tableName: 'organizations',
      collection: const ['organizations'],
    );
  }

  // Organization Pubs.

  static DataRef organizationPubsRef({
    String? organizationPid,
  }) {
    return DataRef(
      id: organizationPid,
      tableName: 'organization_pubs',
      collection: const ['organization_pubs'],
    );
  }
}
