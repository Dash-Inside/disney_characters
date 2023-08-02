import 'dart:convert';

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
      "api.disneyapi.dev",
      "/character/$id",
    );
    final http.Response response = await http.get(url);
    final jsonResult = jsonDecode(response.body)['data'];
    return CharacterModel.fromMap(jsonResult);
  }

  @override
  Future<List<CharacterModel>> getModelsByName(String name) async {
    var url = Uri.https(
      "api.disneyapi.dev",
      "/character",
      {'name': name},
    );

    final http.Response response = await http.get(url);
    final jsonResult = jsonDecode(response.body)['data'];

    if (jsonResult is Map<String, dynamic>) {
      return [CharacterModel.fromMap(jsonResult)];
    } else {
      List<CharacterModel> models = [];

      for (var element in (jsonResult as List)) {
        models.add(CharacterModel.fromMap(element));
      }

      return models;
    }
  }
}
