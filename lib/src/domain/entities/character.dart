// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Character {
  final String name;
  final List<String> cinemas;
  final String imageLink;
  Character({
    required this.name,
    required this.cinemas,
    required this.imageLink,
  });

  Character copyWith({
    String? name,
    List<String>? cinemas,
    String? imageLink,
  }) {
    return Character(
      name: name ?? this.name,
      cinemas: cinemas ?? this.cinemas,
      imageLink: imageLink ?? this.imageLink,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'cinemas': cinemas,
      'imageLink': imageLink,
    };
  }

  factory Character.fromMap(Map<String, dynamic> map) {
    return Character(
      name: map['name'] as String,
      cinemas: List<String>.from((map['cinemas'] as List<String>)),
      imageLink: map['imageLink'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Character.fromJson(String source) =>
      Character.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Character(name: $name, cinemas: $cinemas, imageLink: $imageLink)';

  @override
  bool operator ==(covariant Character other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        listEquals(other.cinemas, cinemas) &&
        other.imageLink == imageLink;
  }

  @override
  int get hashCode => name.hashCode ^ cinemas.hashCode ^ imageLink.hashCode;
}
