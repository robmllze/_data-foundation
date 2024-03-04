//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// X|Y|Z & Dev
//
// Copyright Ⓒ Robert Mollentze, xyzand.dev
//
// Licensing details can be found in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

class DataRef {
  //
  //
  //

  /// The id/primary key of the model.
  final String? id;

  /// The table name of the model for databases like DynamoDB.
  final String? tableName;

  /// The collection path of the model for databases like Firestore.
  final String? collectionPath;

  //
  //
  //

  const DataRef({
    this.id,
    this.tableName,
    this.collectionPath,
  });

  //
  //
  //

  /// The document path of the model for databases like Firestore.
  String get docPath => [this.collectionPath, this.id].nonNulls.join("/");

  //
  //
  //

  // The key of the model for databases like DynamoDB.
  String get key => "${this.tableName}/${this.id}";
}
