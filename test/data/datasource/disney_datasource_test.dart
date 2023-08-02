import 'package:disney_characters/src/data/datasource/disney_datasource.dart';
import 'package:disney_characters/src/data/models/character_mode.dart';
import 'package:flutter_test/flutter_test.dart';

const String id = '666';
const String name = 'Jeremy Birnbaum';
const CharacterModel characterModel = CharacterModel(
  id: 666,
  name: 'Jeremy Birnbaum',
  cinemas: ["Star vs. the Forces of Evil"],
  imageLink: 'https://static.wikia.nocookie.net/disney/images/8/8b/Jeremy_Birnbaum.png',
);

void main() {
  group(
    'disney_datasource_test',
    () {
      test(
        'getModelByID',
        () async {
          // Act
          final DisneyDatasource disneyDatasource = DisneyDatasourceImpl();

          // Arrange
          final CharacterModel res = await disneyDatasource.getModelByID(id);

          // Assert
          expect(res, characterModel);
        },
      );
      test(
        'getModelsByName',
        () async {
          // Act
          final DisneyDatasource disneyDatasource = DisneyDatasourceImpl();

          // Arrange
          final List<CharacterModel> res = await disneyDatasource.getModelsByName(name);
          // Assert
          expect(res, [characterModel]);
        },
      );
    },
  );
}
