//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY XYZ_GENIE
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

part '_model_user.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  fields: {
    'user_types': 'Set<UserType>?',
    'when_last_logged_in': 'DateTime?',
    'user_pub_id': 'String?',
    'connection_uids': 'Set<String>?',
    'relationship_ids': 'Set<String>?',
    'did_send_welcome_email': 'bool?',
    'email_subscriptions': 'Set<String>?',
    'push_subscriptions': 'Set<String>?',
    'sms_subscriptions': 'Set<String>?',
  },
  shouldInherit: true,
)
// ignore: unused_element
abstract class _ModelUser extends ThisModel<ModelUser> {}
