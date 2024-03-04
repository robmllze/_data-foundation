//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// X|Y|Z & Dev
//
// Copyright Ⓒ Robert Mollentze, xyzand.dev
//
// Licensing details can be found in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'utils/model_ref.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class Schema {
  //
  //
  //

  Schema._();

  //
  //
  //

  // Users.

  static DataRef usersRef({
    String? userId,
  }) {
    return DataRef(
      id: userId,
      tableName: "users",
      collectionPath: "users",
    );
  }

  // User Pubs.

  static DataRef userPubsRef({
    String? userPubId,
  }) {
    return DataRef(
      id: userPubId,
      tableName: "user_pubs",
      collectionPath: "user_pubs",
    );
  }

  // User Events.

  static DataRef userEventsRef({
    String? userPubId,
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      tableName: "user_events",
      collectionPath: "user_pubs/$userPubId/events",
    );
  }

  // Relationships.

  static DataRef relationshipsRef({
    String? relationshipId,
  }) {
    return DataRef(
      id: relationshipId,
      tableName: "relationships",
      collectionPath: "relationships",
    );
  }

  // Relationship Events.

  static DataRef relationshipEventsRef({
    String? relationshipId,
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      tableName: "relationship_events",
      collectionPath: "relationships/$relationshipId/events",
    );
  }

  // Relationship Messages.

  static DataRef relationshipMessagesRef({
    String? relationshipId,
    String? messageId,
  }) {
    return DataRef(
      id: messageId,
      tableName: "relationship_messages",
      collectionPath: "relationships/$relationshipId/messages",
    );
  }
  // Projects.

  static DataRef projectsRef({
    String? projectId,
  }) {
    return DataRef(
      id: projectId,
      tableName: "projects",
      collectionPath: "projects",
    );
  }

  // Project Pubs.

  static DataRef projectPubsRef({
    String? projectPubId,
  }) {
    return DataRef(
      id: projectPubId,
      tableName: "project_pubs",
      collectionPath: "project_pubs",
    );
  }

  // Project Events.

  static DataRef projectEventsRef({
    String? projectPubId,
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      tableName: "project_events",
      collectionPath: "project_pubs/$projectPubId/events",
    );
  }

  // Project Messages.

  static DataRef projectMessagesRef({
    String? projectPubId,
    String? messageId,
  }) {
    return DataRef(
      id: messageId,
      tableName: "project_messages",
      collectionPath: "project_pubs/$projectPubId/messages",
    );
  }

  // Jobs.

  static DataRef jobsRef({
    String? jobId,
  }) {
    return DataRef(
      id: jobId,
      tableName: "jobs",
      collectionPath: "jobs",
    );
  }

  // Job Pubs.

  static DataRef jobPubsRef({
    String? jobPubId,
  }) {
    return DataRef(
      id: jobPubId,
      tableName: "job_pubs",
      collectionPath: "job_pubs",
    );
  }

  // Job Events.

  static DataRef jobEventsRef({
    String? jobPubId,
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      tableName: "job_events",
      collectionPath: "job_pubs/$jobPubId/events",
    );
  }

  // Job Messages.

  static DataRef jobMessagesRef({
    String? jobPubId,
    String? messageId,
  }) {
    return DataRef(
      id: messageId,
      tableName: "job_messages",
      collectionPath: "job_pubs/$jobPubId/messages",
    );
  }

  // Organizations.

  static DataRef organizationsRef({
    String? organizationId,
  }) {
    return DataRef(
      id: organizationId,
      tableName: "organizations",
      collectionPath: "organizations",
    );
  }

  // Organization Pubs.

  static DataRef organizationPubsRef({
    String? organizationPubId,
  }) {
    return DataRef(
      id: organizationPubId,
      tableName: "organization_pubs",
      collectionPath: "organization_pubs",
    );
  }

  // Organization Events.

  static DataRef organizationEventsRef({
    String? organizationPubId,
    String? eventId,
  }) {
    return DataRef(
      id: eventId,
      tableName: "organization_events",
      collectionPath: "organization_pubs/$organizationPubId/events",
    );
  }

  // Organization Groups

  static DataRef organizationGroupsRef({
    String? organizationGroupId,
  }) {
    return DataRef(
      id: organizationGroupId,
      tableName: "organization_groups",
      collectionPath: "organization_groups",
    );
  }
}
