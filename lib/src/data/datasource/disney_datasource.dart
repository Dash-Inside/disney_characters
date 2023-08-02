import 'package:disney_characters/src/data/models/character_mode.dart';

import 'package:http/http.dart' as http;

abstract class DisneyDatasource {
  Future<CharacterModel> getModelByID(String id);
  Future<List<CharacterModel>> getModelsByName(String name);
}

class DisneyDatasourceImpl implements DisneyDatasource {
  @override
  Future<CharacterModel> getModelByID(String id) async {
    var url = Uri.https(
      "disneyapi.dev",
      "/character/$id",
    );
    final http.Response response = await http.get(url);
    return CharacterModel.fromJson(response.body);
  }

  @override
  Future<List<CharacterModel>> getModelsByName(String name) {
    // TODO: implement getModelsByName
    throw UnimplementedError();
  }
}
