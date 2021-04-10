class PokemonDto {
  final String name;
  final String id;
  final String imageUrl;

  final String xDescription;

  final String yDescription;

  final String height;

  final String category;

  final String weight;

  final List<String> types;

  final List<String> weaknesses;

  final List<String> evolutions;

  final List<String> abilities;

  final num hp;

  final num attack;

  final num defense;

  final num specialAttack;

  final num specialDefense;

  final num speed;

  final num total;

  final String genderMalePercentage;

  final String genderFemalePercentage;

  final num genderless;

  final String cycles;

  final String eggGroups;

  final String evolvedFrom;

  final String reason;

  final String baseExp;

  PokemonDto(
    this.name,
    this.id,
    this.imageUrl,
    this.xDescription,
    this.yDescription,
    this.height,
    this.category,
    this.weight,
    this.types,
    this.weaknesses,
    this.evolutions,
    this.abilities,
    this.hp,
    this.attack,
    this.defense,
    this.specialAttack,
    this.specialDefense,
    this.speed,
    this.total,
    this.genderMalePercentage,
    this.genderFemalePercentage,
    this.genderless,
    this.cycles,
    this.eggGroups,
    this.evolvedFrom,
    this.reason,
    this.baseExp,
  );

  factory PokemonDto.fromJson(Map<String, dynamic> json) => _pokemonDtoFromJson(json);
}

PokemonDto _pokemonDtoFromJson(Map<String, dynamic> json) {
  return PokemonDto(
      json['name'] as String,
      json['id'] as String,
      json['imageurl'] as String,
      json['xdescription'] as String ?? '',
      json['ydescription'] as String ?? '',
      json['height'] as String ?? '',
      json['category'] as String ?? '',
      json['weight'] as String ?? '',
      (json['typeofpokemon'] as List)?.map((e) => e as String)?.toList(),
      (json['weaknesses'] as List)?.map((e) => e as String)?.toList() ?? [],
      (json['evolutions'] as List)?.map((e) => e as String)?.toList() ?? [],
      (json['abilities'] as List)?.map((e) => e as String)?.toList() ?? [],
      json['hp'] as num,
      json['attack'] as num,
      json['defense'] as num,
      json['special_attack'] as num,
      json['special_defense'] as num,
      json['speed'] as num,
      json['total'] as num,
      json['male_percentage'] as String,
      json['female_percentage'] as String,
      json['genderless'] as num,
      json['cycles'] as String ?? '',
      json['egg_groups'] as String,
      json['evolvedfrom'] as String,
      json['reason'] as String ?? '',
      json['base_exp'] as String ?? '0');
}
