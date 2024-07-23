//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY XYZ_GENIE
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

part '_model_pubspec.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  keyStringCase: LOWER_SNAKE_CASE,
  fields: {
    Field(fieldName: 'name', fieldType: String),
    Field(fieldName: 'description', fieldType: String),
    Field(fieldName: 'publish_to', fieldType: String),
    Field(fieldName: 'environment', fieldType: Map<String, dynamic>),
    Field(fieldName: 'environment.sdk', fieldType: String),
    Field(fieldName: 'dependencies', fieldType: Map<String, dynamic>),
    Field(fieldName: 'dependency_overrides', fieldType: Map<String, dynamic>),
    Field(fieldName: 'dev_dependencies', fieldType: Map<String, dynamic>),
    Field(fieldName: 'flutter', fieldType: Map<String, dynamic>),
  },
)
abstract class _ModelPubspec extends Model {
  const _ModelPubspec();
}
