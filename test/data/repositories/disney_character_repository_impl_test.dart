import 'package:dartz/dartz.dart';
import 'package:disney_characters/core/failure/failure.dart';
import 'package:disney_characters/src/data/datasource/disney_datasource.dart';
import 'package:disney_characters/src/data/repository/disney_character_repository_impl.dart';
import 'package:disney_characters/src/domain/entities/character.dart';
import 'package:disney_characters/src/domain/repositories/character_repository.dart';
import 'package:flutter_test/flutter_test.dart';

const int id = 666;
const String name = 'Jeremy Birnbaum';
const Character character = Character(
  id: 666,
  name: 'Jeremy Birnbaum',
  cinemas: ["Star vs. the Forces of Evil"],
  imageLink: 'https://static.wikia.nocookie.net/disney/images/8/8b/Jeremy_Birnbaum.png',
);

void main() {
  group(
    'disney_character_repository_impl_test',
    () {
      test(
        'read',
        () async {
          //Act
          final DisneyDatasource disneyDatasource = DisneyDatasourceImpl();
          final CharacterRepository characterRepository = DisneyCharacterRepositoryImpl(
            disneyDatasource: disneyDatasource,
          );

          //Arrange
          final Either<Failure, Character> res = await characterRepository.read(id: id);

          //Assert
          expect(res, const Right(character));
        },
      );

      test(
        'readAll',
        () async {
          //Act
          final DisneyDatasource disneyDatasource = DisneyDatasourceImpl();
          final CharacterRepository characterRepository = DisneyCharacterRepositoryImpl(
            disneyDatasource: disneyDatasource,
          );

          //Arrange
          final Either<Failure, List<Character>> res = await characterRepository.readAll(name: name);

          //Assert
          expect(res, const Right([character]));
        },
      );
    },
  );
}
