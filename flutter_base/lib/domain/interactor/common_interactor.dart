import 'package:flutter_base/data/data.dart';
import 'package:flutter_base/domain/pojo/pokemon.dart';
import 'package:flutter_base/domain/transform/pokemon_transform.dart';

class CommonInteractor {

  Future<List<Pokemon>> getPokemons() async {
    final listPokemonsDto = await api.getPokemons();
    return listPokemonsDto.map((pokemonDto) => toPokemon(pokemonDto)).toList();
  }

}
