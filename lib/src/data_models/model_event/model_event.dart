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

@GenerateModel(
  shouldInherit: true,
  fields: {
    ...ENTRY_MODEL_FIELDS,
    ('member_pids?', Set<String>),
    ('topic?', TopicType),
    ('body?', DataModel),
    ('expire_at?', DateTime),
    ('read_regs?', List<ModelRegistration>),
    ('archived_regs?', List<ModelRegistration>),
    ('hidden_regs?', List<ModelRegistration>),
    ('liked_regs?', List<ModelRegistration>),
    ('received_regs?', List<ModelRegistration>),
  },
)
abstract class _ModelEvent extends Model implements EntryModel {}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension ModelEventExtension on ModelEvent {
  //
  //
  //

  bool isExpired() {
    return this.expireAt != null && this.expireAt!.isAfter(DateTime.now());
  }

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
}
