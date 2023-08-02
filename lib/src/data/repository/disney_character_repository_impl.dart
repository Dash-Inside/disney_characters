// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:disney_characters/core/failure/failure.dart';
import 'package:disney_characters/src/data/datasource/disney_datasource.dart';
import 'package:disney_characters/src/data/failures/character_failures.dart';
//import 'package:disney_characters/src/data/models/character_mode.dart';
import 'package:disney_characters/src/domain/entities/character.dart';
import 'package:disney_characters/src/domain/repositories/character_repository.dart';

class DisneyCharacterRepositoryImpl implements CharacterRepository {
  final DisneyDatasource disneyDatasource;

  DisneyCharacterRepositoryImpl({
    required this.disneyDatasource,
  });

  @override
  Future<Either<Failure, Character>> read({required int id}) async {
    try {
      final getChar = await disneyDatasource.getModelByID(id as String);
      return Right(getChar);
    } catch (e) {
      return const Left(CharacterServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Character>>> readAll({required String name}) async {
    try {
      final getList = await disneyDatasource.getModelsByName(name);
      return Right(getList);
    } catch (e) {
      return const Left(CharacterServerFailure());
    }
  }
}
