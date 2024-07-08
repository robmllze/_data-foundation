//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY 🇽🇾🇿 GEN - DO NOT MODIFY BY HAND
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

part of 'relationship_type.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension RelationshipTypeUtils on RelationshipType {
  RelationshipType get next {
    final index = (this.index + 1) % RelationshipType.values.length;
    return RelationshipType.values[index];
  }

  RelationshipType get previous {
    final index =
        (this.index - 1 + RelationshipType.values.length) % RelationshipType.values.length;
    return RelationshipType.values[index];
  }

  String trFromSection(String section, [Map args = const {}]) {
    return '${this.friendlyName}||$section.${this.name}'.tr(args: args);
  }

  String get friendlyName {
    return this.name.toSnakeCase().split('_').map((e) => e.capitalize()).join(' ');
  }
}