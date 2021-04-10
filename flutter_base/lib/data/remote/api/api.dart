import 'package:flutter_base/data/remote/dto/pokemon_dto.dart';
import 'package:flutter_base/data/remote/dto/user_info_dto.dart';
import 'package:meta/meta.dart';

abstract class Api {

  Future<UserInfoDto> authenticate({
    @required String userName,
    @required String password,
  });

  Future<List<PokemonDto>> getPokemons() ;

}
