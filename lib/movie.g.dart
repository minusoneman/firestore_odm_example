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
    return _$MovieFromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Movie value,
    SetOptions? options,
  ) {
    return {..._$MovieToJson(value)}..remove('id');
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
    String poster,
    FieldValue posterFieldValue,
    int likes,
    FieldValue likesFieldValue,
    String title,
    FieldValue titleFieldValue,
    int year,
    FieldValue yearFieldValue,
    String runtime,
    FieldValue runtimeFieldValue,
    String rated,
    FieldValue ratedFieldValue,
    List<String>? genre,
    FieldValue genreFieldValue,
    Set<String>? tags,
    FieldValue tagsFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String poster,
    FieldValue posterFieldValue,
    int likes,
    FieldValue likesFieldValue,
    String title,
    FieldValue titleFieldValue,
    int year,
    FieldValue yearFieldValue,
    String runtime,
    FieldValue runtimeFieldValue,
    String rated,
    FieldValue ratedFieldValue,
    List<String>? genre,
    FieldValue genreFieldValue,
    Set<String>? tags,
    FieldValue tagsFieldValue,
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
    Object? poster = _sentinel,
    FieldValue? posterFieldValue,
    Object? likes = _sentinel,
    FieldValue? likesFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? year = _sentinel,
    FieldValue? yearFieldValue,
    Object? runtime = _sentinel,
    FieldValue? runtimeFieldValue,
    Object? rated = _sentinel,
    FieldValue? ratedFieldValue,
    Object? genre = _sentinel,
    FieldValue? genreFieldValue,
    Object? tags = _sentinel,
    FieldValue? tagsFieldValue,
  }) async {
    assert(
      poster == _sentinel || posterFieldValue == null,
      "Cannot specify both poster and posterFieldValue",
    );
    assert(
      likes == _sentinel || likesFieldValue == null,
      "Cannot specify both likes and likesFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      year == _sentinel || yearFieldValue == null,
      "Cannot specify both year and yearFieldValue",
    );
    assert(
      runtime == _sentinel || runtimeFieldValue == null,
      "Cannot specify both runtime and runtimeFieldValue",
    );
    assert(
      rated == _sentinel || ratedFieldValue == null,
      "Cannot specify both rated and ratedFieldValue",
    );
    assert(
      genre == _sentinel || genreFieldValue == null,
      "Cannot specify both genre and genreFieldValue",
    );
    assert(
      tags == _sentinel || tagsFieldValue == null,
      "Cannot specify both tags and tagsFieldValue",
    );
    final json = {
      if (poster != _sentinel)
        _$MovieFieldMap['poster']!:
            _$MoviePerFieldToJson.poster(poster as String),
      if (posterFieldValue != null)
        _$MovieFieldMap['poster']!: posterFieldValue,
      if (likes != _sentinel)
        _$MovieFieldMap['likes']!: _$MoviePerFieldToJson.likes(likes as int),
      if (likesFieldValue != null) _$MovieFieldMap['likes']!: likesFieldValue,
      if (title != _sentinel)
        _$MovieFieldMap['title']!: _$MoviePerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$MovieFieldMap['title']!: titleFieldValue,
      if (year != _sentinel)
        _$MovieFieldMap['year']!: _$MoviePerFieldToJson.year(year as int),
      if (yearFieldValue != null) _$MovieFieldMap['year']!: yearFieldValue,
      if (runtime != _sentinel)
        _$MovieFieldMap['runtime']!:
            _$MoviePerFieldToJson.runtime(runtime as String),
      if (runtimeFieldValue != null)
        _$MovieFieldMap['runtime']!: runtimeFieldValue,
      if (rated != _sentinel)
        _$MovieFieldMap['rated']!: _$MoviePerFieldToJson.rated(rated as String),
      if (ratedFieldValue != null) _$MovieFieldMap['rated']!: ratedFieldValue,
      if (genre != _sentinel)
        _$MovieFieldMap['genre']!:
            _$MoviePerFieldToJson.genre(genre as List<String>?),
      if (genreFieldValue != null) _$MovieFieldMap['genre']!: genreFieldValue,
      if (tags != _sentinel)
        _$MovieFieldMap['tags']!:
            _$MoviePerFieldToJson.tags(tags as Set<String>?),
      if (tagsFieldValue != null) _$MovieFieldMap['tags']!: tagsFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? poster = _sentinel,
    FieldValue? posterFieldValue,
    Object? likes = _sentinel,
    FieldValue? likesFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? year = _sentinel,
    FieldValue? yearFieldValue,
    Object? runtime = _sentinel,
    FieldValue? runtimeFieldValue,
    Object? rated = _sentinel,
    FieldValue? ratedFieldValue,
    Object? genre = _sentinel,
    FieldValue? genreFieldValue,
    Object? tags = _sentinel,
    FieldValue? tagsFieldValue,
  }) {
    assert(
      poster == _sentinel || posterFieldValue == null,
      "Cannot specify both poster and posterFieldValue",
    );
    assert(
      likes == _sentinel || likesFieldValue == null,
      "Cannot specify both likes and likesFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      year == _sentinel || yearFieldValue == null,
      "Cannot specify both year and yearFieldValue",
    );
    assert(
      runtime == _sentinel || runtimeFieldValue == null,
      "Cannot specify both runtime and runtimeFieldValue",
    );
    assert(
      rated == _sentinel || ratedFieldValue == null,
      "Cannot specify both rated and ratedFieldValue",
    );
    assert(
      genre == _sentinel || genreFieldValue == null,
      "Cannot specify both genre and genreFieldValue",
    );
    assert(
      tags == _sentinel || tagsFieldValue == null,
      "Cannot specify both tags and tagsFieldValue",
    );
    final json = {
      if (poster != _sentinel)
        _$MovieFieldMap['poster']!:
            _$MoviePerFieldToJson.poster(poster as String),
      if (posterFieldValue != null)
        _$MovieFieldMap['poster']!: posterFieldValue,
      if (likes != _sentinel)
        _$MovieFieldMap['likes']!: _$MoviePerFieldToJson.likes(likes as int),
      if (likesFieldValue != null) _$MovieFieldMap['likes']!: likesFieldValue,
      if (title != _sentinel)
        _$MovieFieldMap['title']!: _$MoviePerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$MovieFieldMap['title']!: titleFieldValue,
      if (year != _sentinel)
        _$MovieFieldMap['year']!: _$MoviePerFieldToJson.year(year as int),
      if (yearFieldValue != null) _$MovieFieldMap['year']!: yearFieldValue,
      if (runtime != _sentinel)
        _$MovieFieldMap['runtime']!:
            _$MoviePerFieldToJson.runtime(runtime as String),
      if (runtimeFieldValue != null)
        _$MovieFieldMap['runtime']!: runtimeFieldValue,
      if (rated != _sentinel)
        _$MovieFieldMap['rated']!: _$MoviePerFieldToJson.rated(rated as String),
      if (ratedFieldValue != null) _$MovieFieldMap['rated']!: ratedFieldValue,
      if (genre != _sentinel)
        _$MovieFieldMap['genre']!:
            _$MoviePerFieldToJson.genre(genre as List<String>?),
      if (genreFieldValue != null) _$MovieFieldMap['genre']!: genreFieldValue,
      if (tags != _sentinel)
        _$MovieFieldMap['tags']!:
            _$MoviePerFieldToJson.tags(tags as Set<String>?),
      if (tagsFieldValue != null) _$MovieFieldMap['tags']!: tagsFieldValue,
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
  MovieQuery wherePoster({
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
  MovieQuery whereTitle({
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
  MovieQuery whereYear({
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
  MovieQuery whereRuntime({
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
  MovieQuery whereRated({
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
  MovieQuery whereTags({
    Set<String>? isEqualTo,
    Set<String>? isNotEqualTo,
    Set<String>? isLessThan,
    Set<String>? isLessThanOrEqualTo,
    Set<String>? isGreaterThan,
    Set<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    Set<String>? arrayContainsAny,
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

  MovieQuery orderByPoster({
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

  MovieQuery orderByTitle({
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

  MovieQuery orderByYear({
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

  MovieQuery orderByRuntime({
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

  MovieQuery orderByRated({
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

  MovieQuery orderByTags({
    bool descending = false,
    Set<String>? startAt,
    Set<String>? startAfter,
    Set<String>? endAt,
    Set<String>? endBefore,
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

  MovieQuery wherePoster({
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
        _$MovieFieldMap['poster']!,
        isEqualTo:
            isEqualTo != null ? _$MoviePerFieldToJson.poster(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$MoviePerFieldToJson.poster(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$MoviePerFieldToJson.poster(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MoviePerFieldToJson.poster(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MoviePerFieldToJson.poster(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MoviePerFieldToJson.poster(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$MoviePerFieldToJson.poster(e)),
        whereNotIn: whereNotIn?.map((e) => _$MoviePerFieldToJson.poster(e)),
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

  MovieQuery whereTitle({
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
        _$MovieFieldMap['title']!,
        isEqualTo:
            isEqualTo != null ? _$MoviePerFieldToJson.title(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$MoviePerFieldToJson.title(isNotEqualTo)
            : null,
        isLessThan:
            isLessThan != null ? _$MoviePerFieldToJson.title(isLessThan) : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MoviePerFieldToJson.title(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MoviePerFieldToJson.title(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MoviePerFieldToJson.title(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$MoviePerFieldToJson.title(e)),
        whereNotIn: whereNotIn?.map((e) => _$MoviePerFieldToJson.title(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MovieQuery whereYear({
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
        _$MovieFieldMap['year']!,
        isEqualTo:
            isEqualTo != null ? _$MoviePerFieldToJson.year(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$MoviePerFieldToJson.year(isNotEqualTo)
            : null,
        isLessThan:
            isLessThan != null ? _$MoviePerFieldToJson.year(isLessThan) : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MoviePerFieldToJson.year(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MoviePerFieldToJson.year(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MoviePerFieldToJson.year(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$MoviePerFieldToJson.year(e)),
        whereNotIn: whereNotIn?.map((e) => _$MoviePerFieldToJson.year(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MovieQuery whereRuntime({
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
        _$MovieFieldMap['runtime']!,
        isEqualTo:
            isEqualTo != null ? _$MoviePerFieldToJson.runtime(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$MoviePerFieldToJson.runtime(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$MoviePerFieldToJson.runtime(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MoviePerFieldToJson.runtime(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MoviePerFieldToJson.runtime(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MoviePerFieldToJson.runtime(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$MoviePerFieldToJson.runtime(e)),
        whereNotIn: whereNotIn?.map((e) => _$MoviePerFieldToJson.runtime(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MovieQuery whereRated({
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
        _$MovieFieldMap['rated']!,
        isEqualTo:
            isEqualTo != null ? _$MoviePerFieldToJson.rated(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$MoviePerFieldToJson.rated(isNotEqualTo)
            : null,
        isLessThan:
            isLessThan != null ? _$MoviePerFieldToJson.rated(isLessThan) : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MoviePerFieldToJson.rated(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MoviePerFieldToJson.rated(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MoviePerFieldToJson.rated(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$MoviePerFieldToJson.rated(e)),
        whereNotIn: whereNotIn?.map((e) => _$MoviePerFieldToJson.rated(e)),
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

  MovieQuery whereTags({
    Set<String>? isEqualTo,
    Set<String>? isNotEqualTo,
    Set<String>? isLessThan,
    Set<String>? isLessThanOrEqualTo,
    Set<String>? isGreaterThan,
    Set<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    Set<String>? arrayContainsAny,
  }) {
    return _$MovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MovieFieldMap['tags']!,
        isEqualTo:
            isEqualTo != null ? _$MoviePerFieldToJson.tags(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$MoviePerFieldToJson.tags(isNotEqualTo)
            : null,
        isLessThan:
            isLessThan != null ? _$MoviePerFieldToJson.tags(isLessThan) : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MoviePerFieldToJson.tags(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MoviePerFieldToJson.tags(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MoviePerFieldToJson.tags(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$MoviePerFieldToJson.tags({arrayContains}) as List?)!.single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$MoviePerFieldToJson.tags(arrayContainsAny) as Iterable<Object>?
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

  MovieQuery orderByPoster({
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
    final query = $referenceWithoutCursor.orderBy(_$MovieFieldMap['poster']!,
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

  MovieQuery orderByTitle({
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
    final query = $referenceWithoutCursor.orderBy(_$MovieFieldMap['title']!,
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

  MovieQuery orderByYear({
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
    final query = $referenceWithoutCursor.orderBy(_$MovieFieldMap['year']!,
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

  MovieQuery orderByRuntime({
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
    final query = $referenceWithoutCursor.orderBy(_$MovieFieldMap['runtime']!,
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

  MovieQuery orderByRated({
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
    final query = $referenceWithoutCursor.orderBy(_$MovieFieldMap['rated']!,
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

  MovieQuery orderByTags({
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
    final query = $referenceWithoutCursor.orderBy(_$MovieFieldMap['tags']!,
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
    return _$ChildMovieFromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    ChildMovie value,
    SetOptions? options,
  ) {
    return {..._$ChildMovieToJson(value)}..remove('id');
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
    String poster,
    FieldValue posterFieldValue,
    int likes,
    FieldValue likesFieldValue,
    String title,
    FieldValue titleFieldValue,
    int year,
    FieldValue yearFieldValue,
    String runtime,
    FieldValue runtimeFieldValue,
    String rated,
    FieldValue ratedFieldValue,
    List<String>? genre,
    FieldValue genreFieldValue,
    Set<String>? tags,
    FieldValue tagsFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String poster,
    FieldValue posterFieldValue,
    int likes,
    FieldValue likesFieldValue,
    String title,
    FieldValue titleFieldValue,
    int year,
    FieldValue yearFieldValue,
    String runtime,
    FieldValue runtimeFieldValue,
    String rated,
    FieldValue ratedFieldValue,
    List<String>? genre,
    FieldValue genreFieldValue,
    Set<String>? tags,
    FieldValue tagsFieldValue,
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
    Object? poster = _sentinel,
    FieldValue? posterFieldValue,
    Object? likes = _sentinel,
    FieldValue? likesFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? year = _sentinel,
    FieldValue? yearFieldValue,
    Object? runtime = _sentinel,
    FieldValue? runtimeFieldValue,
    Object? rated = _sentinel,
    FieldValue? ratedFieldValue,
    Object? genre = _sentinel,
    FieldValue? genreFieldValue,
    Object? tags = _sentinel,
    FieldValue? tagsFieldValue,
  }) async {
    assert(
      poster == _sentinel || posterFieldValue == null,
      "Cannot specify both poster and posterFieldValue",
    );
    assert(
      likes == _sentinel || likesFieldValue == null,
      "Cannot specify both likes and likesFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      year == _sentinel || yearFieldValue == null,
      "Cannot specify both year and yearFieldValue",
    );
    assert(
      runtime == _sentinel || runtimeFieldValue == null,
      "Cannot specify both runtime and runtimeFieldValue",
    );
    assert(
      rated == _sentinel || ratedFieldValue == null,
      "Cannot specify both rated and ratedFieldValue",
    );
    assert(
      genre == _sentinel || genreFieldValue == null,
      "Cannot specify both genre and genreFieldValue",
    );
    assert(
      tags == _sentinel || tagsFieldValue == null,
      "Cannot specify both tags and tagsFieldValue",
    );
    final json = {
      if (poster != _sentinel)
        _$ChildMovieFieldMap['poster']!:
            _$ChildMoviePerFieldToJson.poster(poster as String),
      if (posterFieldValue != null)
        _$ChildMovieFieldMap['poster']!: posterFieldValue,
      if (likes != _sentinel)
        _$ChildMovieFieldMap['likes']!:
            _$ChildMoviePerFieldToJson.likes(likes as int),
      if (likesFieldValue != null)
        _$ChildMovieFieldMap['likes']!: likesFieldValue,
      if (title != _sentinel)
        _$ChildMovieFieldMap['title']!:
            _$ChildMoviePerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$ChildMovieFieldMap['title']!: titleFieldValue,
      if (year != _sentinel)
        _$ChildMovieFieldMap['year']!:
            _$ChildMoviePerFieldToJson.year(year as int),
      if (yearFieldValue != null) _$ChildMovieFieldMap['year']!: yearFieldValue,
      if (runtime != _sentinel)
        _$ChildMovieFieldMap['runtime']!:
            _$ChildMoviePerFieldToJson.runtime(runtime as String),
      if (runtimeFieldValue != null)
        _$ChildMovieFieldMap['runtime']!: runtimeFieldValue,
      if (rated != _sentinel)
        _$ChildMovieFieldMap['rated']!:
            _$ChildMoviePerFieldToJson.rated(rated as String),
      if (ratedFieldValue != null)
        _$ChildMovieFieldMap['rated']!: ratedFieldValue,
      if (genre != _sentinel)
        _$ChildMovieFieldMap['genre']!:
            _$ChildMoviePerFieldToJson.genre(genre as List<String>?),
      if (genreFieldValue != null)
        _$ChildMovieFieldMap['genre']!: genreFieldValue,
      if (tags != _sentinel)
        _$ChildMovieFieldMap['tags']!:
            _$ChildMoviePerFieldToJson.tags(tags as Set<String>?),
      if (tagsFieldValue != null) _$ChildMovieFieldMap['tags']!: tagsFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? poster = _sentinel,
    FieldValue? posterFieldValue,
    Object? likes = _sentinel,
    FieldValue? likesFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? year = _sentinel,
    FieldValue? yearFieldValue,
    Object? runtime = _sentinel,
    FieldValue? runtimeFieldValue,
    Object? rated = _sentinel,
    FieldValue? ratedFieldValue,
    Object? genre = _sentinel,
    FieldValue? genreFieldValue,
    Object? tags = _sentinel,
    FieldValue? tagsFieldValue,
  }) {
    assert(
      poster == _sentinel || posterFieldValue == null,
      "Cannot specify both poster and posterFieldValue",
    );
    assert(
      likes == _sentinel || likesFieldValue == null,
      "Cannot specify both likes and likesFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      year == _sentinel || yearFieldValue == null,
      "Cannot specify both year and yearFieldValue",
    );
    assert(
      runtime == _sentinel || runtimeFieldValue == null,
      "Cannot specify both runtime and runtimeFieldValue",
    );
    assert(
      rated == _sentinel || ratedFieldValue == null,
      "Cannot specify both rated and ratedFieldValue",
    );
    assert(
      genre == _sentinel || genreFieldValue == null,
      "Cannot specify both genre and genreFieldValue",
    );
    assert(
      tags == _sentinel || tagsFieldValue == null,
      "Cannot specify both tags and tagsFieldValue",
    );
    final json = {
      if (poster != _sentinel)
        _$ChildMovieFieldMap['poster']!:
            _$ChildMoviePerFieldToJson.poster(poster as String),
      if (posterFieldValue != null)
        _$ChildMovieFieldMap['poster']!: posterFieldValue,
      if (likes != _sentinel)
        _$ChildMovieFieldMap['likes']!:
            _$ChildMoviePerFieldToJson.likes(likes as int),
      if (likesFieldValue != null)
        _$ChildMovieFieldMap['likes']!: likesFieldValue,
      if (title != _sentinel)
        _$ChildMovieFieldMap['title']!:
            _$ChildMoviePerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$ChildMovieFieldMap['title']!: titleFieldValue,
      if (year != _sentinel)
        _$ChildMovieFieldMap['year']!:
            _$ChildMoviePerFieldToJson.year(year as int),
      if (yearFieldValue != null) _$ChildMovieFieldMap['year']!: yearFieldValue,
      if (runtime != _sentinel)
        _$ChildMovieFieldMap['runtime']!:
            _$ChildMoviePerFieldToJson.runtime(runtime as String),
      if (runtimeFieldValue != null)
        _$ChildMovieFieldMap['runtime']!: runtimeFieldValue,
      if (rated != _sentinel)
        _$ChildMovieFieldMap['rated']!:
            _$ChildMoviePerFieldToJson.rated(rated as String),
      if (ratedFieldValue != null)
        _$ChildMovieFieldMap['rated']!: ratedFieldValue,
      if (genre != _sentinel)
        _$ChildMovieFieldMap['genre']!:
            _$ChildMoviePerFieldToJson.genre(genre as List<String>?),
      if (genreFieldValue != null)
        _$ChildMovieFieldMap['genre']!: genreFieldValue,
      if (tags != _sentinel)
        _$ChildMovieFieldMap['tags']!:
            _$ChildMoviePerFieldToJson.tags(tags as Set<String>?),
      if (tagsFieldValue != null) _$ChildMovieFieldMap['tags']!: tagsFieldValue,
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
  ChildMovieQuery wherePoster({
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
  ChildMovieQuery whereTitle({
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
  ChildMovieQuery whereYear({
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
  ChildMovieQuery whereRuntime({
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
  ChildMovieQuery whereRated({
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
  ChildMovieQuery whereTags({
    Set<String>? isEqualTo,
    Set<String>? isNotEqualTo,
    Set<String>? isLessThan,
    Set<String>? isLessThanOrEqualTo,
    Set<String>? isGreaterThan,
    Set<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    Set<String>? arrayContainsAny,
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

  ChildMovieQuery orderByPoster({
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

  ChildMovieQuery orderByTitle({
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

  ChildMovieQuery orderByYear({
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

  ChildMovieQuery orderByRuntime({
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

  ChildMovieQuery orderByRated({
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

  ChildMovieQuery orderByTags({
    bool descending = false,
    Set<String>? startAt,
    Set<String>? startAfter,
    Set<String>? endAt,
    Set<String>? endBefore,
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

  ChildMovieQuery wherePoster({
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
        _$ChildMovieFieldMap['poster']!,
        isEqualTo: isEqualTo != null
            ? _$ChildMoviePerFieldToJson.poster(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$ChildMoviePerFieldToJson.poster(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$ChildMoviePerFieldToJson.poster(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.poster(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChildMoviePerFieldToJson.poster(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.poster(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$ChildMoviePerFieldToJson.poster(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ChildMoviePerFieldToJson.poster(e)),
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

  ChildMovieQuery whereTitle({
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
        _$ChildMovieFieldMap['title']!,
        isEqualTo: isEqualTo != null
            ? _$ChildMoviePerFieldToJson.title(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$ChildMoviePerFieldToJson.title(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$ChildMoviePerFieldToJson.title(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.title(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChildMoviePerFieldToJson.title(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.title(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$ChildMoviePerFieldToJson.title(e)),
        whereNotIn: whereNotIn?.map((e) => _$ChildMoviePerFieldToJson.title(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChildMovieQuery whereYear({
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
        _$ChildMovieFieldMap['year']!,
        isEqualTo: isEqualTo != null
            ? _$ChildMoviePerFieldToJson.year(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$ChildMoviePerFieldToJson.year(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$ChildMoviePerFieldToJson.year(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.year(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChildMoviePerFieldToJson.year(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.year(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$ChildMoviePerFieldToJson.year(e)),
        whereNotIn: whereNotIn?.map((e) => _$ChildMoviePerFieldToJson.year(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChildMovieQuery whereRuntime({
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
        _$ChildMovieFieldMap['runtime']!,
        isEqualTo: isEqualTo != null
            ? _$ChildMoviePerFieldToJson.runtime(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$ChildMoviePerFieldToJson.runtime(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$ChildMoviePerFieldToJson.runtime(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.runtime(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChildMoviePerFieldToJson.runtime(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.runtime(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$ChildMoviePerFieldToJson.runtime(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ChildMoviePerFieldToJson.runtime(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChildMovieQuery whereRated({
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
        _$ChildMovieFieldMap['rated']!,
        isEqualTo: isEqualTo != null
            ? _$ChildMoviePerFieldToJson.rated(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$ChildMoviePerFieldToJson.rated(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$ChildMoviePerFieldToJson.rated(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.rated(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChildMoviePerFieldToJson.rated(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.rated(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$ChildMoviePerFieldToJson.rated(e)),
        whereNotIn: whereNotIn?.map((e) => _$ChildMoviePerFieldToJson.rated(e)),
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

  ChildMovieQuery whereTags({
    Set<String>? isEqualTo,
    Set<String>? isNotEqualTo,
    Set<String>? isLessThan,
    Set<String>? isLessThanOrEqualTo,
    Set<String>? isGreaterThan,
    Set<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    Set<String>? arrayContainsAny,
  }) {
    return _$ChildMovieQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChildMovieFieldMap['tags']!,
        isEqualTo: isEqualTo != null
            ? _$ChildMoviePerFieldToJson.tags(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$ChildMoviePerFieldToJson.tags(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$ChildMoviePerFieldToJson.tags(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.tags(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChildMoviePerFieldToJson.tags(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChildMoviePerFieldToJson.tags(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$ChildMoviePerFieldToJson.tags({arrayContains}) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$ChildMoviePerFieldToJson.tags(arrayContainsAny)
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

  ChildMovieQuery orderByPoster({
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
        .orderBy(_$ChildMovieFieldMap['poster']!, descending: descending);
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

  ChildMovieQuery orderByTitle({
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
        .orderBy(_$ChildMovieFieldMap['title']!, descending: descending);
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

  ChildMovieQuery orderByYear({
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
    final query = $referenceWithoutCursor.orderBy(_$ChildMovieFieldMap['year']!,
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

  ChildMovieQuery orderByRuntime({
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
        .orderBy(_$ChildMovieFieldMap['runtime']!, descending: descending);
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

  ChildMovieQuery orderByRated({
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
        .orderBy(_$ChildMovieFieldMap['rated']!, descending: descending);
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

  ChildMovieQuery orderByTags({
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
    final query = $referenceWithoutCursor.orderBy(_$ChildMovieFieldMap['tags']!,
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
  const Min(0).validate(instance.year, 'year');
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      genre:
          (json['genre'] as List<dynamic>?)?.map((e) => e as String).toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toSet(),
      likes: json['likes'] as int,
      poster: json['poster'] as String,
      rated: json['rated'] as String,
      runtime: json['runtime'] as String,
      title: json['title'] as String,
      year: json['year'] as int,
      id: json['id'] as String,
    );

const _$MovieFieldMap = <String, String>{
  'id': 'id',
  'poster': 'poster',
  'likes': 'likes',
  'title': 'title',
  'year': 'year',
  'runtime': 'runtime',
  'rated': 'rated',
  'genre': 'genre',
  'tags': 'tags',
};

// ignore: unused_element
abstract class _$MoviePerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? poster(String instance) => instance;
  // ignore: unused_element
  static Object? likes(int instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? year(int instance) => instance;
  // ignore: unused_element
  static Object? runtime(String instance) => instance;
  // ignore: unused_element
  static Object? rated(String instance) => instance;
  // ignore: unused_element
  static Object? genre(List<String>? instance) => instance;
  // ignore: unused_element
  static Object? tags(Set<String>? instance) => instance?.toList();
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'poster': instance.poster,
      'likes': instance.likes,
      'title': instance.title,
      'year': instance.year,
      'runtime': instance.runtime,
      'rated': instance.rated,
      'genre': instance.genre,
      'tags': instance.tags?.toList(),
    };

ChildMovie _$ChildMovieFromJson(Map<String, dynamic> json) => ChildMovie(
      id: json['id'] as String,
      likes: json['likes'] as int,
      poster: json['poster'] as String,
      rated: json['rated'] as String,
      runtime: json['runtime'] as String,
      title: json['title'] as String,
      year: json['year'] as int,
    );

const _$ChildMovieFieldMap = <String, String>{
  'id': 'id',
  'poster': 'poster',
  'likes': 'likes',
  'title': 'title',
  'year': 'year',
  'runtime': 'runtime',
  'rated': 'rated',
};

// ignore: unused_element
abstract class _$ChildMoviePerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? poster(String instance) => instance;
  // ignore: unused_element
  static Object? likes(int instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? year(int instance) => instance;
  // ignore: unused_element
  static Object? runtime(String instance) => instance;
  // ignore: unused_element
  static Object? rated(String instance) => instance;
}

Map<String, dynamic> _$ChildMovieToJson(ChildMovie instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster': instance.poster,
      'likes': instance.likes,
      'title': instance.title,
      'year': instance.year,
      'runtime': instance.runtime,
      'rated': instance.rated,
    };
