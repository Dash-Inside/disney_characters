import 'package:dartz/dartz.dart';
import 'package:disney_characters/src/domain/entities/character.dart';
import 'package:disney_characters/src/domain/repositories/character_repository.dart';
import 'package:disney_characters/src/domain/usecases/get_concrete_character_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<CharacterRepository>()])
import 'get_concrete_character_usecase_test.mocks.dart';

const int id = 666;
const Character character = Character(
  id: 666,
  name: 'Jeremy Birnbaum',
  cinemas: ["Star vs. the Forces of Evil"],
  imageLink: 'https://static.wikia.nocookie.net/disney/images/8/8b/Jeremy_Birnbaum.png',
);

void main() {
  test(
    'get_concrete_character_usecase_test',
    () async {
      // Act
      final CharacterRepository characterRepository = MockCharacterRepository();
      when(characterRepository.read(id: id)).thenAnswer((_) async {
        return const Right(character);
      });

      //Arrange
      final getConcreteCharacter = GetConceteCharactersUseCase(
        characterRepository: characterRepository,
      );
      final res = await getConcreteCharacter.call(id);

      //Assert
      verify(characterRepository.read(id: id)).called(1);
      expect(res, const Right(character));
    },
  );
}
