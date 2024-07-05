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
    ('relationship_id?', String),
    ('member_pids?', Set<String>),
    ('topic?', TopicType),
    ('body?', DataModel),
    ('timeout?', int),
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

  bool get didTimeout {
    final timeout = this.timeout;
    return timeout != null && timeout < DateTime.now().millisecondsSinceEpoch;
  }

  //
  //
  //

  bool get isReadByAnyone => this.readRegs?.isNotEmpty == true;
  bool get isArchivedByAnyone => this.archivedRegs?.isNotEmpty == true;
  bool get isHiddenByAnyone => this.hiddenRegs?.isNotEmpty == true;
  bool get isLikedByAnyone => this.likedRegs?.isNotEmpty == true;
  bool get isReceivedByAnyone => this.receivedRegs?.isNotEmpty == true;

  //
  //
  //

  bool isReadBy(String? id) => RegistrationListUtils.registrationsContainsId(this.readRegs, id);
  bool isArchivedBy(String? id) =>
      RegistrationListUtils.registrationsContainsId(this.archivedRegs, id);
  bool isHiddenBy(String? id) => RegistrationListUtils.registrationsContainsId(this.hiddenRegs, id);
  bool isLikedBy(String? id) => RegistrationListUtils.registrationsContainsId(this.likedRegs, id);
  bool isReceivedBy(String? id) =>
      RegistrationListUtils.registrationsContainsId(this.receivedRegs, id);
}
