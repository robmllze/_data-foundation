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

extension PublicPoolExtension<TModel extends PublicModel> on Iterable<TModel> {
  //
  //
  //

  // --- Sorting ---------------------------------------------------------------

  Iterable<TModel> byDisplayNameAscending() {
    return this.toList()
      ..sort((e0, e1) {
        final t0 = e0.displayName?.queryableValue ?? '';
        final t1 = e1.displayName?.queryableValue ?? '';
        final n = t0.compareTo(t1);
        return n;
      });
  }

  //
  //
  //

  Iterable<TModel> byDisplayNameDescending() {
    return byDisplayNameAscending().toList().reversed;
  }

  // --- Filtering -------------------------------------------------------------

  Iterable<TModel> filterInPartialNameOrEmail({
    required String partialNameOrEmail,
  }) {
    return this
        .filterInPartialEmail(partialEmail: partialNameOrEmail)
        .filterInPartialName(partialName: partialNameOrEmail);
  }

  //
  //
  //

  Iterable<TModel> filterInPartialName({
    required String partialName,
  }) {
    final query = partialName.toLowerCase();
    final results = this.where((user) {
      final name = user.displayName?.queryableValue;
      final cases = [
        if (name != null) ...[
          name.contains(query),
          query.contains(name),
        ],
      ];
      return cases.contains(true);
    });
    return results;
  }

  //
  //
  //

  Iterable<TModel> filterInPartialEmail({
    required String partialEmail,
  }) {
    final query = partialEmail.toLowerCase();
    final results = this.where((user) {
      final email = user.email?.queryableValue;
      final cases = [
        if (email != null) ...[
          email.contains(query),
          query.contains(email),
        ],
      ];
      return cases.contains(true);
    });
    return results;
  }

  //
  //
  //

  Iterable<TModel> filterInRelationship({
    required String relationshipId,
    required Iterable<ModelRelationship> relationshipPool,
    required Iterable<String> memberPidPrefixes,
  }) {
    final relationship = relationshipPool.firstWhereOrNull((e) => e.id == relationshipId);
    if (relationship != null) {
      final pids = relationship.extractMemberPidsByPrefixes(memberPidPrefixes);
      final result = pids.map((pid) => this.firstWhereOrNull((e) => e.id == pid)).nonNulls;
      return result;
    } else {
      return [];
    }
  }
}
