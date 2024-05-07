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
      collectionPath: 'files',
    );
  }

  //
  //
  //

  // Invitations.

  static DataRef invitationsRef({
    String? invitationId,
  }) {
    return DataRef(
      id: invitationId,
      tableName: 'invitations',
      collectionPath: 'invitations',
    );
  }

  // Users.

  static DataRef usersRef({
    String? userId,
  }) {
    return DataRef(
      id: userId,
      tableName: 'users',
      collectionPath: 'users',
    );
  }

  // User Pubs.

  static DataRef userPubsRef({
    String? userPid,
  }) {
    return DataRef(
      id: userPid,
      tableName: 'user_pubs',
      collectionPath: 'user_pubs',
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
      collectionPath: 'user_pubs/$userPid/events',
    );
  }

  // Relationships.

  static DataRef relationshipsRef({
    String? relationshipId,
  }) {
    return DataRef(
      id: relationshipId,
      tableName: 'relationships',
      collectionPath: 'relationships',
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
      collectionPath: 'relationships/$relationshipId/events',
    );
  }

  // Relationship Messages.

  static DataRef relationshipMessagesRef({
    String? relationshipId,
    String? messageId,
  }) {
    return DataRef(
      id: messageId,
      tableName: 'relationship_messages',
      collectionPath: 'relationships/$relationshipId/messages',
    );
  }
  // Projects.

  static DataRef projectsRef({
    String? projectId,
  }) {
    return DataRef(
      id: projectId,
      tableName: 'projects',
      collectionPath: 'projects',
    );
  }

  // Project Pubs.

  static DataRef projectPubsRef({
    String? projectPid,
  }) {
    return DataRef(
      id: projectPid,
      tableName: 'project_pubs',
      collectionPath: 'project_pubs',
    );
  }

  // Project Events.

  static DataRef projectEventsRef({
    String? projectPid,
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      tableName: 'project_events',
      collectionPath: 'project_pubs/$projectPid/events',
    );
  }

  // Project Messages.

  static DataRef projectMessagesRef({
    String? projectPid,
    String? messageId,
  }) {
    return DataRef(
      id: messageId,
      tableName: 'project_messages',
      collectionPath: 'project_pubs/$projectPid/messages',
    );
  }

  // Jobs.

  static DataRef jobsRef({
    String? jobId,
  }) {
    return DataRef(
      id: jobId,
      tableName: 'jobs',
      collectionPath: 'jobs',
    );
  }

  // Job Pubs.

  static DataRef jobPubsRef({
    String? jobPid,
  }) {
    return DataRef(
      id: jobPid,
      tableName: 'job_pubs',
      collectionPath: 'job_pubs',
    );
  }

  // Job Events.

  static DataRef jobEventsRef({
    String? jobPid,
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      tableName: 'job_events',
      collectionPath: 'job_pubs/$jobPid/events',
    );
  }

  // Job Messages.

  static DataRef jobMessagesRef({
    String? jobPid,
    String? messageId,
  }) {
    return DataRef(
      id: messageId,
      tableName: 'job_messages',
      collectionPath: 'job_pubs/$jobPid/messages',
    );
  }

  // Organizations.

  static DataRef organizationsRef({
    String? organizationId,
  }) {
    return DataRef(
      id: organizationId,
      tableName: 'organizations',
      collectionPath: 'organizations',
    );
  }

  // Organization Pubs.

  static DataRef organizationPubsRef({
    String? organizationPid,
  }) {
    return DataRef(
      id: organizationPid,
      tableName: 'organization_pubs',
      collectionPath: 'organization_pubs',
    );
  }

  // Organization Events.

  static DataRef organizationEventsRef({
    String? organizationPid,
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      tableName: 'organization_events',
      collectionPath: 'organization_pubs/$organizationPid/events',
    );
  }

  // Organization Groups

  static DataRef organizationGroupsRef({
    String? organizationGroupId,
  }) {
    return DataRef(
      id: organizationGroupId,
      tableName: 'organization_groups',
      collectionPath: 'organization_groups',
    );
  }
}
