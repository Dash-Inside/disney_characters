import 'package:disney_characters/src/domain/entities/character.dart';

import 'dart:convert';

class CharacterModel extends Character {
  const CharacterModel(
      {required super.id,
      required super.name,
      required super.cinemas,
      required super.imageLink});

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    List<String> films = (map["films"] as List<String>);
    List<String> short = (map["shortFilms"] as List<String>);
    List<String> tvShow = (map["tvShows"] as List<String>);
    return CharacterModel(
      id: (map['_id'] as int),
      name: (map['Name'] as String),
      cinemas: (films + short + tvShow),
      imageLink: (map['imageUrl'] as String),
    );
  }

  factory CharacterModel.fromJson(String source) {
    return CharacterModel.fromMap(json.decode(source) as Map<String, dynamic>);
  }

  CharacterModel copyWith(
    int? id,
    String? name,
    List<String>? cinemas,
    String? imageLink,
  ) {
    return CharacterModel(
        id: id ?? this.id,
        name: name ?? this.name,
        cinemas: cinemas ?? this.cinemas,
        imageLink: imageLink ?? this.imageLink);
  }
}
