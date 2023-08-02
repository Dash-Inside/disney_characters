// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:disney_characters/core/failure/failure.dart';
import 'package:disney_characters/src/data/datasource/disney_datasource.dart';
import 'package:disney_characters/src/data/failures/character_failures.dart';
import 'package:disney_characters/src/data/models/character_mode.dart';
import 'package:disney_characters/src/domain/repositories/character_repository.dart';

class DisneyCharacterRepositoryImpl implements CharacterRepository {
  final DisneyDatasource disneyDatasource;

  DisneyCharacterRepositoryImpl({
    required this.disneyDatasource,
  });

  @override
  Future<Either<Failure, CharacterModel>> read({required int id}) async {
    try {
      final CharacterModel getChar = await disneyDatasource.getModelByID(id as String);
      return Right(getChar);
    } catch (_) {
      return const Left(CharacterServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<CharacterModel>>> readAll({required String name}) async {
    try {
      final getList = await disneyDatasource.getModelsByName(name);
      return Right(getList);
    } catch (_) {
      return const Left(CharacterServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<CharacterModel>>> readAllByFilm({required String film}) async {
    try {
      return Right(await disneyDatasource.getModelByFilm(film));
    } catch (_) {
      return const Left(CharacterServerFailure());
    }
  }
}
