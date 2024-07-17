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

part '_model_event.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

const MODEL_EVENT_FIELDS = {
  ...MODEL_ENTRY_FIELDS,
  ('member_pids?', Set<String>),
  ('tags?', Set<String>),
  ('content_type?', ModelEnum),
  ('content?', Model),
  ('read_regs?', List<ModelRegistration>),
  ('archived_regs?', List<ModelRegistration>),
  ('hidden_regs?', List<ModelRegistration>),
  ('liked_regs?', List<ModelRegistration>),
  ('received_regs?', List<ModelRegistration>),
};

@GenerateModel(
  shouldInherit: true,
  fields: MODEL_EVENT_FIELDS,
)
abstract class _ModelEvent extends Model implements ModelEntry {
  const _ModelEvent();
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension ModelEventExtension on ModelEvent {
  //
  //
  //

  bool isReadByAnyone() {
    return this.readRegs?.isImpliedEnabledByAnyone() == true;
  }

  bool isArchivedByAnyone() {
    return this.archivedRegs?.isImpliedEnabledByAnyone() == true;
  }

  bool isHiddenByAnyone() {
    return this.hiddenRegs?.isImpliedEnabledByAnyone() == true;
  }

  bool isLikedByAnyone() {
    return this.likedRegs?.isImpliedEnabledByAnyone() == true;
  }

  bool isReceivedByAnyone() {
    return this.receivedRegs?.isImpliedEnabledByAnyone() == true;
  }

  bool isReadByAnyoneElse(String id) {
    return this.readRegs?.isImpliedEnabledByAnyoneElse(id) == true;
  }

  bool isArchivedByAnyoneElse(String id) {
    return this.archivedRegs?.isImpliedEnabledByAnyoneElse(id) == true;
  }

  bool isHiddenByAnyoneElse(String id) {
    return this.hiddenRegs?.isImpliedEnabledByAnyoneElse(id) == true;
  }

  bool isLikedByAnyoneElse(String id) {
    return this.likedRegs?.isImpliedEnabledByAnyoneElse(id) == true;
  }

  bool isReceivedByAnyoneElse(String id) {
    return this.receivedRegs?.isImpliedEnabledByAnyoneElse(id) == true;
  }

  bool isReadBy(String id) {
    return this.readRegs?.isImpliedEnabledBy(id) == true;
  }

  bool isArchivedBy(String id) {
    return this.archivedRegs?.isImpliedEnabledBy(id) == true;
  }

  bool isHiddenBy(String id) {
    return this.hiddenRegs?.isImpliedEnabledBy(id) == true;
  }

  bool isLikedBy(String id) {
    return this.likedRegs?.isImpliedEnabledBy(id) == true;
  }

  bool isReceivedBy(String id) {
    return this.receivedRegs?.isImpliedEnabledBy(id) == true;
  }

  bool doesInvolveMember(String memberPid) {
    return this.memberPids?.contains(memberPid) == true;
  }

  Set<String> extractMemberPidsByPrefixes(Iterable<String> prefixes) {
    final memberPids = this.memberPids ?? {};
    return prefixes.isNotEmpty
        ? memberPids.where((a) => prefixes.any((b) => a.startsWith(b))).toSet()
        : memberPids;
  }
}
