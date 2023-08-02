import 'package:disney_characters/src/data/models/character_mode.dart';

abstract class DisneyDatasource {
  Future<CharacterModel> getModelByID(String id);
  Future<List<CharacterModel>> getModelsByName(String name);
}

class DisneyDatasourceImpl implements DisneyDatasource {}
