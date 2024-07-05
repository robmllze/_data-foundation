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

  bool get isReadByAnyone => this.readRegs?.more.hasValue(true) == true;
  bool get isArchivedByAnyone => this.archivedRegs?.more.hasValue(true) == true;
  bool get isHiddenByAnyone => this.hiddenRegs?.more.hasValue(true) == true;
  bool get isLikedByAnyone => this.likedRegs?.more.hasValue(true) == true;
  bool get isReceivedByAnyone => this.receivedRegs?.more.hasValue(true) == true;

  //
  //
  //

  bool isReadBy(String? id) => this.readRegs?.more.valueBy(id) == true;
  bool isArchivedBy(String? id) => this.archivedRegs?.more.valueBy(id) == true;
  bool isHiddenBy(String? id) => this.hiddenRegs?.more.valueBy(id) == true;
  bool isLikedBy(String? id) => this.likedRegs?.more.valueBy(id) == true;
  bool isReceivedBy(String? id) => this.receivedRegs?.more.valueBy(id) == true;
}
