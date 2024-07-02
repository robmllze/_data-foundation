//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY 🇽🇾🇿 GEN - DO NOT MODIFY BY HAND
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

part of 'relationship_def_type.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension RelationshipDefTypeUtils on RelationshipDefType {
  RelationshipDefType get next {
    final index = (this.index + 1) % RelationshipDefType.values.length;
    return RelationshipDefType.values[index];
  }

  RelationshipDefType get previous {
    final index = (this.index - 1 + RelationshipDefType.values.length) %
        RelationshipDefType.values.length;
    return RelationshipDefType.values[index];
  }

  String trFromSection(String section, [Map args = const {}]) {
    return '${this.friendlyName}||$section.${this.name}'.tr(args: args);
  }

  String get friendlyName {
    return this
        .name
        .toSnakeCase()
        .split('_')
        .map((e) => e.capitalize())
        .join(' ');
  }
}