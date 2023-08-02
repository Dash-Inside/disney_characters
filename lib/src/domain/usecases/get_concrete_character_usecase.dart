import 'package:dartz/dartz.dart';

import 'package:disney_characters/core/failure/failure.dart';
import 'package:disney_characters/core/usecase/usecase.dart';
import 'package:disney_characters/src/domain/entities/character.dart';
import 'package:disney_characters/src/domain/repositories/character_repository.dart';

class GetConceteCharactersUseCase extends UseCase<Character, int> {
  final CharacterRepository characterRepository;
  GetConceteCharactersUseCase({
    required this.characterRepository,
  });

  @override
  Future<Either<Failure, Character>> call(int p) async {
    Either<Failure, Character> concreteCharacter = await characterRepository.read(id: p);
    return concreteCharacter;
  }
}
