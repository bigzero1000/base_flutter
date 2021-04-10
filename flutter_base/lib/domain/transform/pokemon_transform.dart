import 'package:flutter_base/data/remote/dto/pokemon_dto.dart';
import 'package:flutter_base/domain/pojo/pokemon.dart';

Pokemon toPokemon(PokemonDto fromObj) {
  if (fromObj == null) return null;
  return Pokemon(
      fromObj.name,
      fromObj.id,
      fromObj.imageUrl,
      fromObj.xDescription,
      fromObj.yDescription,
      fromObj.height,
      fromObj.category,
      fromObj.weight,
      fromObj.types,
      fromObj.weaknesses,
      fromObj.evolutions,
      fromObj.abilities,
      fromObj.hp,
      fromObj.attack,
      fromObj.defense,
      fromObj.specialAttack,
      fromObj.specialDefense,
      fromObj.speed,
      fromObj.total,
      fromObj.genderMalePercentage,
      fromObj.genderFemalePercentage,
      fromObj.genderless,
      fromObj.cycles,
      fromObj.eggGroups,
      fromObj.evolvedFrom,
      fromObj.reason,
      fromObj.baseExp);
}
