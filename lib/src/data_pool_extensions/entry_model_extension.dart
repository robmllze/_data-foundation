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

extension EntryModelPoolExtension<TModel extends EntryModel> on Iterable<TModel> {
  //
  //
  //

  // --- Sorting ---------------------------------------------------------------

  Iterable<TModel> byDisplayNameAscending() {
    return this.toList()
      ..sort((e0, e1) {
        final t0 = e0.displayNameSearchable ?? e0.displayName ?? '';
        final t1 = e1.displayNameSearchable ?? e1.displayName ?? '';
        final n = t0.compareTo(t1);
        return n;
      });
  }

  //
  //
  //

  Iterable<TModel> byDisplayNameDescending() {
    return this.byDisplayNameAscending().toList().reversed;
  }

  //
  //
  //

  Iterable<TModel> byCreatedAtAscending() {
    return this.toList()
      ..sort((e0, e1) {
        final now = DateTime.now();
        final d0 = e0.createdGReg?.registeredAt ?? now;
        final d1 = e1.createdGReg?.registeredAt ?? now;
        final n = d0.compareTo(d1);
        return n;
      });
  }

  //
  //
  //

  Iterable<TModel> byCreatedAtDescending() {
    return this.byCreatedAtAscending().toList().reversed;
  }
}
