//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY XYZ_GENIE
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

part '_model_address.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    'created_at': 'DateTime?', // Date and time of creation
    'creator_id': 'String?', // ID of the user who created this record
    'name': 'String?', // Name of the recipient
    'address_line_1': 'String?', // Primary address field (street address or P.O. box)
    'address_line_2': 'String?', // Secondary address field (apartment, suite, unit)
    'city': 'String?', // City or locality
    'state_or_province': 'String?', // State, province, or regional equivalent
    'postal_code': 'String?', // Postal or ZIP code
    'country': 'String?', // Country name
    'notes': 'String?', // Additional information or delivery instructions
  },
)
abstract class _ModelAddress extends ThisModel<ModelAddress> {
  //
  //
  //

  bool isCreatedBy({required String id}) => this.model.creatorId == id;
}
