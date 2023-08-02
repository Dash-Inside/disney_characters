// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:disney_characters/src/data/datasource/disney_datasource.dart';
import 'package:disney_characters/src/domain/repositories/character_repository.dart';

class DisneyCharacterRepositoryImpl implements CharacterRepository {
  final DisneyDatasource disneyDatasource;

  DisneyCharacterRepositoryImpl({
    required this.disneyDatasource,
  });
}
