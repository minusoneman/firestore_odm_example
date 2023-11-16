// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class MovieCollectionReference
    implements
        MovieQuery,
        FirestoreCollectionReference<Movie, MovieQuerySnapshot> {
  factory MovieCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$MovieCollectionReference;

  static Movie fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$MovieFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Movie value,
    SetOptions? options,
  ) {
    return _$MovieToJson(value);
  }

  @override
  CollectionReference<Movie> get reference;

  @override
  MovieDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MovieDocumentReference> add(Movie value);
}

class _$MovieCollectionReference extends _$MovieQuery
    implements MovieCollectionReference {
  factory _$MovieCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$MovieCollectionReference._(
      firestore.collection('firestore-example-app').withConverter(
            fromFirestore: MovieCollectionReference.fromFirestore,
            toFirestore: MovieCollectionReference.toFirestore,
          ),
    );
  }

  _$MovieCollectionReference._(
    CollectionReference<Movie> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Movie> get reference =>
      super.reference as CollectionReference<Movie>;

  @override
  MovieDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return MovieDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<MovieDocumentReference> add(Movie value) {
    return reference.add(value).then((ref) => MovieDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MovieCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MovieDocumentReference
    extends FirestoreDocumentReference<Movie, MovieDocumentSnapshot> {
  factory MovieDocumentReference(DocumentReference<Movie> reference) =
      _$MovieDocumentReference;

  DocumentReference<Movie> get reference;

  /// A reference to the [MovieCollectionReference] containing this document.
  MovieCollectionReference get parent {
    return _$MovieCollectionReference(reference.firestore);
  }

  @override
  Stream<MovieDocumentSnapshot> snapshots();

  @override
  Future<MovieDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int likes,
    FieldValue likesFieldValue,
    List<String>? genre,
    FieldValue genreFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int likes,
    FieldValue likesFieldValue,
    List<String>? genre,
    FieldValue genreFieldValue,
  });
}

class _$MovieDocumentReference
    extends FirestoreDocumentReference<Movie, MovieDocumentSnapshot>
    implements MovieDocumentReference {
  _$MovieDocumentReference(this.reference);

  @override
  final DocumentReference<Movie> reference;

  /// A reference to the [MovieCollectionReference] containing this document.
  MovieCollectionReference get parent {
    return _$MovieCollectionReference(reference.firestore);
  }

  @override
  Stream<MovieDocumentSnapshot> snapshots() {
    return reference.snapshots().map(MovieDocumentSnapshot._);
  }

  @override
  Future<MovieDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MovieDocumentSnapshot._);
  }

  @override
  Future<MovieDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(MovieDocumentSnapshot._);
  }

  Future<void> update({
    Object? likes = _sentinel,
    FieldValue? likesFieldValue,
    Object? genre = _sentinel,
    FieldValue? genreFieldValue,
  }) async {
    assert(
      likes == _sentinel || likesFieldValue == null,
      "Cannot specify both likes and likesFieldValue",
    );
    assert(
      genre == _sentinel || genreFieldValue == null,
      "Cannot specify both genre and genreFieldValue",
    );
    final json = {
      if (likes != _sentinel)
        _$MovieFieldMap['likes']!: _$MoviePerFieldToJson.likes(likes as int),
      if (likesFieldValue != null) _$MovieFieldMap['likes']!: likesFieldValue,
      if (genre != _sentinel)
        _$MovieFieldMap['genre']!:
            _$MoviePerFieldToJson.genre(genre as List<String>?),
      if (genreFieldValue != null) _$MovieFieldMap['genre']!: genreFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? likes = _sentinel,
    FieldValue? likesFieldValue,
    Object? genre = _sentinel,
    FieldValue? genreFieldValue,
  }) {
    assert(
      likes == _sentinel || likesFieldValue == null,
      "Cannot specify both likes and likesFieldValue",
    );
    assert(
      genre == _sentinel || genreFieldValue == null,
      "Cannot specify both genre and genreFieldValue",
    );
    final json = {
      if (likes != _sentinel)
        _$MovieFieldMap['likes']!: _$MoviePerFieldToJson.likes(likes as int),
      if (likesFieldValue != null) _$MovieFieldMap['likes']!: likesFieldValue,
      if (genre != _sentinel)
        _$MovieFieldMap['genre']!:
            _$MoviePerFieldToJson.genre(genre as List<String>?),
      if (genreFieldValue != null) _$MovieFieldMap['genre']!: genreFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is MovieDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class MovieQuery implements QueryReference<Movie, MovieQuerySnapshot> {
  @override
  MovieQuery limit(int limit);

  @override
  MovieQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  MovieQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    MovieDocumentSnapshot? startAtDocument,
    MovieDocumentSnapshot? endAtDocument,
    MovieDocumentSnapshot? endBeforeDocument,
    MovieDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  MovieQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  MovieQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MovieQuery whereLikes({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  MovieQuery whereGenre({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  });

  MovieQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MovieDocumentSnapshot? startAtDocument,
    MovieDocumentSnapshot? endAtDocument,
    MovieDocumentSnapshot? endBeforeDocument,
    MovieDocumentSnapshot? startAfterDocument,
  });

  MovieQuery orderByLikes({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    MovieDocumentSnapshot? startAtDocument,
    MovieDocumentSnapshot? endAtDocument,
    MovieDocumentSnapshot? endBeforeDocument,
    MovieDocumentSnapshot? startAfterDocument,
  });

  MovieQuery orderByGenre({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    MovieDocumentSnapshot? startAtDocument,
    MovieDocumentSnapshot? endAtDocument,
    MovieDocumentSnapshot? endBeforeDocument,
    MovieDocumentSnapshot? startAfterDocument,
  });
}

class _$MovieQuery extends QueryReference<Movie, MovieQuerySnapshot>
    implements MovieQuery {
  _$MovieQuery(
    this._collection, {
    required Query<Movie> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<MovieQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(MovieQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<MovieQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MovieQuerySnapshot._fromQuerySnapshot);
  }

  @override
  MovieQuery limit(int limit) {
    return _$MovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MovieQuery limitToLast(int limit) {
    return _$MovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  MovieQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MovieDocumentSnapshot? startAtDocument,
    MovieDocumentSnapshot? endAtDocument,
    MovieDocumentSnapshot? endBeforeDocument,
    MovieDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$MovieQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MovieQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$MovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MovieQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MovieQuery whereLikes({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$MovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MovieFieldMap['likes']!,
        isEqualTo:
            isEqualTo != null ? _$MoviePerFieldToJson.likes(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$MoviePerFieldToJson.likes(isNotEqualTo)
            : null,
        isLessThan:
            isLessThan != null ? _$MoviePerFieldToJson.likes(isLessThan) : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MoviePerFieldToJson.likes(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MoviePerFieldToJson.likes(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MoviePerFieldToJson.likes(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$MoviePerFieldToJson.likes(e)),
        whereNotIn: whereNotIn?.map((e) => _$MoviePerFieldToJson.likes(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MovieQuery whereGenre({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  }) {
    return _$MovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MovieFieldMap['genre']!,
        isEqualTo:
            isEqualTo != null ? _$MoviePerFieldToJson.genre(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$MoviePerFieldToJson.genre(isNotEqualTo)
            : null,
        isLessThan:
            isLessThan != null ? _$MoviePerFieldToJson.genre(isLessThan) : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MoviePerFieldToJson.genre(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MoviePerFieldToJson.genre(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MoviePerFieldToJson.genre(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$MoviePerFieldToJson.genre([arrayContains]) as List?)!.single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$MoviePerFieldToJson.genre(arrayContainsAny) as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MovieQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MovieDocumentSnapshot? startAtDocument,
    MovieDocumentSnapshot? endAtDocument,
    MovieDocumentSnapshot? endBeforeDocument,
    MovieDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MovieQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MovieQuery orderByLikes({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MovieDocumentSnapshot? startAtDocument,
    MovieDocumentSnapshot? endAtDocument,
    MovieDocumentSnapshot? endBeforeDocument,
    MovieDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MovieFieldMap['likes']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MovieQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MovieQuery orderByGenre({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MovieDocumentSnapshot? startAtDocument,
    MovieDocumentSnapshot? endAtDocument,
    MovieDocumentSnapshot? endBeforeDocument,
    MovieDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MovieFieldMap['genre']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MovieQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$MovieQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MovieDocumentSnapshot extends FirestoreDocumentSnapshot<Movie> {
  MovieDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Movie> snapshot;

  @override
  MovieDocumentReference get reference {
    return MovieDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Movie? data;
}

class MovieQuerySnapshot
    extends FirestoreQuerySnapshot<Movie, MovieQueryDocumentSnapshot> {
  MovieQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory MovieQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Movie> snapshot,
  ) {
    final docs = snapshot.docs.map(MovieQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        MovieDocumentSnapshot._,
      );
    }).toList();

    return MovieQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<MovieDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    MovieDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<MovieDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Movie> snapshot;

  @override
  final List<MovieQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MovieDocumentSnapshot>> docChanges;
}

class MovieQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Movie>
    implements MovieDocumentSnapshot {
  MovieQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Movie> snapshot;

  @override
  final Movie data;

  @override
  MovieDocumentReference get reference {
    return MovieDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ChildMovieCollectionReference
    implements
        ChildMovieQuery,
        FirestoreCollectionReference<ChildMovie, ChildMovieQuerySnapshot> {
  factory ChildMovieCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ChildMovieCollectionReference;

  static ChildMovie fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ChildMovieFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ChildMovie value,
    SetOptions? options,
  ) {
    return _$ChildMovieToJson(value);
  }

  @override
  CollectionReference<ChildMovie> get reference;

  @override
  ChildMovieDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ChildMovieDocumentReference> add(ChildMovie value);
}

class _$ChildMovieCollectionReference extends _$ChildMovieQuery
    implements ChildMovieCollectionReference {
  factory _$ChildMovieCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ChildMovieCollectionReference._(
      firestore.collection('child-movies').withConverter(
            fromFirestore: ChildMovieCollectionReference.fromFirestore,
            toFirestore: ChildMovieCollectionReference.toFirestore,
          ),
    );
  }

  _$ChildMovieCollectionReference._(
    CollectionReference<ChildMovie> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ChildMovie> get reference =>
      super.reference as CollectionReference<ChildMovie>;

  @override
  ChildMovieDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ChildMovieDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ChildMovieDocumentReference> add(ChildMovie value) {
    return reference.add(value).then((ref) => ChildMovieDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ChildMovieCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ChildMovieDocumentReference
    extends FirestoreDocumentReference<ChildMovie, ChildMovieDocumentSnapshot> {
  factory ChildMovieDocumentReference(DocumentReference<ChildMovie> reference) =
      _$ChildMovieDocumentReference;

  DocumentReference<ChildMovie> get reference;

  /// A reference to the [ChildMovieCollectionReference] containing this document.
  ChildMovieCollectionReference get parent {
    return _$ChildMovieCollectionReference(reference.firestore);
  }

  @override
  Stream<ChildMovieDocumentSnapshot> snapshots();

  @override
  Future<ChildMovieDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int likes,
    FieldValue likesFieldValue,
    List<String>? genre,
    FieldValue genreFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int likes,
    FieldValue likesFieldValue,
    List<String>? genre,
    FieldValue genreFieldValue,
  });
}

class _$ChildMovieDocumentReference
    extends FirestoreDocumentReference<ChildMovie, ChildMovieDocumentSnapshot>
    implements ChildMovieDocumentReference {
  _$ChildMovieDocumentReference(this.reference);

  @override
  final DocumentReference<ChildMovie> reference;

  /// A reference to the [ChildMovieCollectionReference] containing this document.
  ChildMovieCollectionReference get parent {
    return _$ChildMovieCollectionReference(reference.firestore);
  }

  @override
  Stream<ChildMovieDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ChildMovieDocumentSnapshot._);
  }

  @override
  Future<ChildMovieDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ChildMovieDocumentSnapshot._);
  }

  @override
  Future<ChildMovieDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ChildMovieDocumentSnapshot._);
  }

  Future<void> update({
    Object? likes = _sentinel,
    FieldValue? likesFieldValue,
    Object? genre = _sentinel,
    FieldValue? genreFieldValue,
  }) async {
    assert(
      likes == _sentinel || likesFieldValue == null,
      "Cannot specify both likes and likesFieldValue",
    );
    assert(
      genre == _sentinel || genreFieldValue == null,
      "Cannot specify both genre and genreFieldValue",
    );
    final json = {
      if (likes != _sentinel)
        _$ChildMovieFieldMap['likes']!:
            _$ChildMoviePerFieldToJson.likes(likes as int),
      if (likesFieldValue != null)
        _$ChildMovieFieldMap['likes']!: likesFieldValue,
      if (genre != _sentinel)
        _$ChildMovieFieldMap['genre']!:
            _$ChildMoviePerFieldToJson.genre(genre as List<String>?),
      if (genreFieldValue != null)
        _$ChildMovieFieldMap['genre']!: genreFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? likes = _sentinel,
    FieldValue? likesFieldValue,
    Object? genre = _sentinel,
    FieldValue? genreFieldValue,
  }) {
    assert(
      likes == _sentinel || likesFieldValue == null,
      "Cannot specify both likes and likesFieldValue",
    );
    assert(
      genre == _sentinel || genreFieldValue == null,
      "Cannot specify both genre and genreFieldValue",
    );
    final json = {
      if (likes != _sentinel)
        _$ChildMovieFieldMap['likes']!:
            _$ChildMoviePerFieldToJson.likes(likes as int),
      if (likesFieldValue != null)
        _$ChildMovieFieldMap['likes']!: likesFieldValue,
      if (genre != _sentinel)
        _$ChildMovieFieldMap['genre']!:
            _$ChildMoviePerFieldToJson.genre(genre as List<String>?),
      if (genreFieldValue != null)
        _$ChildMovieFieldMap['genre']!: genreFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ChildMovieDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ChildMovieQuery
    implements QueryReference<ChildMovie, ChildMovieQuerySnapshot> {
  @override
  ChildMovieQuery limit(int limit);

  @override
  ChildMovieQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ChildMovieQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ChildMovieDocumentSnapshot? startAtDocument,
    ChildMovieDocumentSnapshot? endAtDocument,
    ChildMovieDocumentSnapshot? endBeforeDocument,
    ChildMovieDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ChildMovieQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ChildMovieQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ChildMovieQuery whereLikes({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  ChildMovieQuery whereGenre({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  });

  ChildMovieQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ChildMovieDocumentSnapshot? startAtDocument,
    ChildMovieDocumentSnapshot? endAtDocument,
    ChildMovieDocumentSnapshot? endBeforeDocument,
    ChildMovieDocumentSnapshot? startAfterDocument,
  });

  ChildMovieQuery orderByLikes({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    ChildMovieDocumentSnapshot? startAtDocument,
    ChildMovieDocumentSnapshot? endAtDocument,
    ChildMovieDocumentSnapshot? endBeforeDocument,
    ChildMovieDocumentSnapshot? startAfterDocument,
  });

  ChildMovieQuery orderByGenre({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    ChildMovieDocumentSnapshot? startAtDocument,
    ChildMovieDocumentSnapshot? endAtDocument,
    ChildMovieDocumentSnapshot? endBeforeDocument,
    ChildMovieDocumentSnapshot? startAfterDocument,
  });
}

class _$ChildMovieQuery
    extends QueryReference<ChildMovie, ChildMovieQuerySnapshot>
    implements ChildMovieQuery {
  _$ChildMovieQuery(
    this._collection, {
    required Query<ChildMovie> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ChildMovieQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ChildMovieQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ChildMovieQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ChildMovieQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ChildMovieQuery limit(int limit) {
    return _$ChildMovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChildMovieQuery limitToLast(int limit) {
    return _$ChildMovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ChildMovieQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChildMovieDocumentSnapshot? startAtDocument,
    ChildMovieDocumentSnapshot? endAtDocument,
    ChildMovieDocumentSnapshot? endBeforeDocument,
    ChildMovieDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$ChildMovieQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ChildMovieQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ChildMovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChildMovieQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ChildMovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChildMovieQuery whereLikes({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$ChildMovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChildMovieFieldMap['likes']!,
        isEqualTo: isEqualTo != null
            ? _$ChildMoviePerFieldToJson.likes(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$ChildMoviePerFieldToJson.likes(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$ChildMoviePerFieldToJson.likes(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.likes(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChildMoviePerFieldToJson.likes(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.likes(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$ChildMoviePerFieldToJson.likes(e)),
        whereNotIn: whereNotIn?.map((e) => _$ChildMoviePerFieldToJson.likes(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChildMovieQuery whereGenre({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  }) {
    return _$ChildMovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChildMovieFieldMap['genre']!,
        isEqualTo: isEqualTo != null
            ? _$ChildMoviePerFieldToJson.genre(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$ChildMoviePerFieldToJson.genre(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$ChildMoviePerFieldToJson.genre(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.genre(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChildMoviePerFieldToJson.genre(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.genre(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$ChildMoviePerFieldToJson.genre([arrayContains]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$ChildMoviePerFieldToJson.genre(arrayContainsAny)
                as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChildMovieQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChildMovieDocumentSnapshot? startAtDocument,
    ChildMovieDocumentSnapshot? endAtDocument,
    ChildMovieDocumentSnapshot? endBeforeDocument,
    ChildMovieDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChildMovieQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ChildMovieQuery orderByLikes({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChildMovieDocumentSnapshot? startAtDocument,
    ChildMovieDocumentSnapshot? endAtDocument,
    ChildMovieDocumentSnapshot? endBeforeDocument,
    ChildMovieDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ChildMovieFieldMap['likes']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChildMovieQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ChildMovieQuery orderByGenre({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChildMovieDocumentSnapshot? startAtDocument,
    ChildMovieDocumentSnapshot? endAtDocument,
    ChildMovieDocumentSnapshot? endBeforeDocument,
    ChildMovieDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ChildMovieFieldMap['genre']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChildMovieQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ChildMovieQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ChildMovieDocumentSnapshot extends FirestoreDocumentSnapshot<ChildMovie> {
  ChildMovieDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ChildMovie> snapshot;

  @override
  ChildMovieDocumentReference get reference {
    return ChildMovieDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ChildMovie? data;
}

class ChildMovieQuerySnapshot extends FirestoreQuerySnapshot<ChildMovie,
    ChildMovieQueryDocumentSnapshot> {
  ChildMovieQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ChildMovieQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ChildMovie> snapshot,
  ) {
    final docs = snapshot.docs.map(ChildMovieQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ChildMovieDocumentSnapshot._,
      );
    }).toList();

    return ChildMovieQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ChildMovieDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ChildMovieDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ChildMovieDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ChildMovie> snapshot;

  @override
  final List<ChildMovieQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ChildMovieDocumentSnapshot>> docChanges;
}

class ChildMovieQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ChildMovie>
    implements ChildMovieDocumentSnapshot {
  ChildMovieQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ChildMovie> snapshot;

  @override
  final ChildMovie data;

  @override
  ChildMovieDocumentReference get reference {
    return ChildMovieDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

void _$assertMovie(Movie instance) {
  const Min(0).validate(instance.likes, 'likes');
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      genre:
          (json['genre'] as List<dynamic>?)?.map((e) => e as String).toList(),
      likes: json['likes'] as int,
    );

const _$MovieFieldMap = <String, String>{
  'likes': 'likes',
  'genre': 'genre',
};

// ignore: unused_element
abstract class _$MoviePerFieldToJson {
  // ignore: unused_element
  static Object? likes(int instance) => instance;
  // ignore: unused_element
  static Object? genre(List<String>? instance) => instance;
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'likes': instance.likes,
      'genre': instance.genre,
    };

ChildMovie _$ChildMovieFromJson(Map<String, dynamic> json) => ChildMovie(
      likes: json['likes'] as int,
    );

const _$ChildMovieFieldMap = <String, String>{
  'likes': 'likes',
};

// ignore: unused_element
abstract class _$ChildMoviePerFieldToJson {
  // ignore: unused_element
  static Object? likes(int instance) => instance;
}

Map<String, dynamic> _$ChildMovieToJson(ChildMovie instance) =>
    <String, dynamic>{
      'likes': instance.likes,
    };
