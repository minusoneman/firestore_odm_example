// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class Movie {
  Movie({
    this.genre,
    required this.likes,
  }) {
    _$assertMovie(this);
  }

  @Min(0)
  final int likes;
  final List<String>? genre;
}

@firestoreSerializable
class ChildMovie extends Movie {
  ChildMovie({
    required super.likes,
  });
}

@Collection<Movie>('firestore-example-app')
@Collection<ChildMovie>('child-movies')
final moviesRef = MovieCollectionReference();
