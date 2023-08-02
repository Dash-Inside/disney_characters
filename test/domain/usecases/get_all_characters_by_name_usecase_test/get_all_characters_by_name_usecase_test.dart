import 'package:dartz/dartz.dart';
import 'package:disney_characters/src/domain/entities/character.dart';
import 'package:disney_characters/src/domain/repositories/character_repository.dart';
import 'package:disney_characters/src/domain/usecases/get_all_characters_by_name_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<CharacterRepository>()])
import 'get_all_characters_by_name_usecase_test.mocks.dart';

const int id = 5195;
const String name = 'Lilo Pelekai';
const List<String> cinemas = [
  "Lilo & Stitch",
  "Lilo & Stitch 2: Stitch Has a Glitch",
  "Stitch! The Movie",
  "Leroy & Stitch",
  "Once Upon a Halloween",
  "Ralph Breaks the Internet",
  "Lilo & Stitch (live-action film)",
  "Lilo & Stitch: The Series",
  "Stitch!",
  "Stitch & Ai",
  "A Poem Is...",
  "It's a Small World: The Animated Series",
  "At Home With Olaf"
];
const String imageLink = 'https://static.wikia.nocookie.net/disney/images/1/1f/Profile_-_Lilo.png';

final List<Character> test1 = [character];

// const DisneyCharacterRepositoryImpl disneyDatasource = ;

const Character character = Character(id: id, name: name, cinemas: cinemas, imageLink: imageLink);
void main() {
  group('get_all_characters_by_name_usecase_test', () {
    test('_', () async {
      // Act
      final CharacterRepository characterRepository = MockCharacterRepository();
      when(characterRepository.readAll(name: name)).thenAnswer((_) async {
        return Right(test1);
      });
      // Arrange
      final GetAllCharactersByNameUseCase getAllCharactersByNameUseCase = GetAllCharactersByNameUseCase(
        characterRepository: characterRepository,
      );
      final res = await getAllCharactersByNameUseCase.call(name);

      // Assert
      verify(characterRepository.readAll(name: name)).called(1);
      expect(res, Right(test1));
    });
  });
}
