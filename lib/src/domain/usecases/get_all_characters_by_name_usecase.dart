import 'package:dartz/dartz.dart';

import 'package:disney_characters/core/failure/failure.dart';
import 'package:disney_characters/core/usecase/usecase.dart';
import 'package:disney_characters/src/domain/entities/character.dart';
import 'package:disney_characters/src/domain/repositories/character_repository.dart';

class GetAllCharactersByNameUseCase extends UseCase<List<Character>, String> {
  final CharacterRepository characterRepository;
  GetAllCharactersByNameUseCase({
    required this.characterRepository,
  });

  @override
  Future<Either<Failure, List<Character>>> call(String p) async {
    Either<Failure, List<Character>> listCharacter =
        await characterRepository.readAll(
      name: p,
    );

    return listCharacter;
  }
}
