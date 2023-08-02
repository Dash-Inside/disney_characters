// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  Future<Either<Failure, List<Character>>> call(String p) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
