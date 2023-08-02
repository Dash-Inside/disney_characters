import 'package:dartz/dartz.dart';

import 'package:disney_characters/core/failure/failure.dart';
import 'package:disney_characters/core/usecase/usecase.dart';
import 'package:disney_characters/src/domain/entities/character.dart';
import 'package:disney_characters/src/domain/repositories/character_repository.dart';

class GetConceteCharactersUseCase extends UseCase<Character, String> {
  final CharacterRepository characterRepository;
  GetConceteCharactersUseCase({
    required this.characterRepository,
  });

  @override
  Future<Either<Failure, Character>> call(String p) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
