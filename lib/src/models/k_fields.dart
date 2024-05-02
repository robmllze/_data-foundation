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
  static const display_name_searchable = {'display_name_searchable': 'LowerCase-String?'};

  static const title = {'title': 'String?'};
  static const title_searchable = {'title_searchable': 'LowerCase-String?'};

  static const email = {'email': 'String?'};
  static const email_searchable = {'email_searchable': 'LowerCase-String?'};

  static const when_created = {'when_created': 'Map<String, DateTime>?'};
  static const when_read = {'when_read': 'Map<String, DateTime>?'};
  static const when_updated = {'when_updated': 'Map<String, DateTime>?'};
  static const when_deleted = {'when_deleted': 'Map<String, DateTime>?'};

  static const uploaded_media = {'uploaded_media': 'Map<DateTime, ModelMediaEntry>?'};

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
