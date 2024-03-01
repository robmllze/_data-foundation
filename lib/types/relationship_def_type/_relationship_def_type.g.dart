//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY XYZ_GEN - DO NOT MODIFY BY HAND
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

  String get translated {
    return "${this.name}||types.$this".tr();
  }

  String get friendlyName {
    return this
        .name
        .toSnakeCase()
        .split("_")
        .map((e) => e.capitalize())
        .join(" ");
  }
}
