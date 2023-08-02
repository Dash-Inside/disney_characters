import 'package:dartz/dartz.dart';
import 'package:disney_characters/core/failure/failure.dart';
import 'package:disney_characters/src/domain/entities/character.dart';

abstract class CharacterRepository {
  /// [read] returns Either [Failure] if there is some errors or [Character] if there is no errors
  /// [read] takes [id] that used for search unique [Character]
  Future<Either<Failure, Character>> read({required int id});

  /// [readAll] returns Either [Failure] if there is some errors or [List<Character>] if there is no errors
  /// [readAll] takes [name] that used for search [List<Character>] by [name]
  Future<Either<Failure, List<Character>>> readAll({required String name});
}
