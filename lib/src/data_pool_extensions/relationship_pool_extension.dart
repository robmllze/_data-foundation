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

extension RelationshipPoolExtension on Iterable<ModelRelationship> {
  //
  //
  //

  // --- Sorting ---------------------------------------------------------------

  // --- Filtering -------------------------------------------------------------

  Iterable<ModelRelationship> filterInTypes({
    required Iterable<RelationshipType> types,
  }) {
    if (types.isEmpty) return [];
    return this.where(
      (e) {
        final type = e.type;
        return type != null ? types.contains(type) : false;
      },
    );
  }

  //
  //
  //

  Iterable<ModelRelationship> filterInEveryMember({
    required Iterable<String> memberPids,
  }) {
    if (memberPids.isEmpty) return [];
    return this.where(
      (rel) {
        return memberPids.every((pid) {
          return rel.memberPids?.contains(pid) == true;
        });
      },
    );
  }

  //
  //
  //

  Iterable<ModelRelationship> filterInAnyMember({
    required Iterable<String> memberPids,
  }) {
    if (memberPids.isEmpty) return [];
    return this.where(
      (rel) {
        return memberPids.any((pid) {
          return rel.memberPids?.contains(pid) == true;
        });
      },
    );
  }

  //
  //
  //

  Iterable<String> allMemberPids() {
    return this.map((rel) => rel.memberPids ?? {}).tryReduce((a, b) => {...a, ...b})?.toSet() ?? {};
  }

  //
  //
  //

  Iterable<String> allIds() {
    return this.map((e) => e.id).nonNulls.toSet();
  }
}
