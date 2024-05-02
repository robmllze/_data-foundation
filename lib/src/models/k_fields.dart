//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

abstract final class KFields {
  //
  //
  //

  KFields._();

  //
  //
  //

  static const pid = {'pid': 'String?'};

  static const display_name = {'display_name': 'String?'};
  static const display_name_searchable = {'display_name_searchable': 'Searchable-String?'};

  static const title = {'title': 'String?'};
  static const title_searchable = {'title_searchable': 'Searchable-String?'};

  static const email = {'email': 'Searchable-String?'};

  static const created_at = {'created_at': 'DateTime?'};
  static const created_by = {'created_by': 'String?'};
  static const expires_at = {'expires_at': 'DateTime?'};
  static const deleted_at = {'deleted_at': 'DateTime?'};
  static const deleted_by = {'deleted_by': 'String?'};

  static const uploaded_media_ids = {'uploaded_media_ids': 'Set<String?>?'};

  static const primary_address = {'primary_address': 'ModelAddressEntry?'};
  static const other_addresses = {'other_addresses': 'Map<DateTime?, ModelAddressEntry>?'};

  static const primary_phone = {'primary_phone': 'ModelPhoneEntry?'};
  static const other_phones = {'other_phones': 'Map<DateTime?, ModelPhoneEntry>?'};

  static const primary_email = {'primary_email': 'ModelEmailEntry?'};
  static const other_emails = {'other_emails': 'Map<DateTime?, ModelEmailEntry>?'};

  static const description = {'description': 'String?'};

  static const member_pids = {'member_pids': 'Set<String>?'};

  static const seed = {'seed': 'String?'};
}
