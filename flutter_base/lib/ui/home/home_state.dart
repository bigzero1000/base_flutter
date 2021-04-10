import 'package:flutter_base/common/exception.dart';
import 'package:flutter_base/domain/pojo/pokemon.dart';
import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

class HomeDataState extends ScreenDataState {
  final bool isInit;
  final bool isLoading;
  final List<Pokemon> pokemons;
  final AppException error;

  const HomeDataState({this.isInit, this.isLoading, this.error, this.pokemons});

  HomeDataState copy({bool isInit, bool isLoading, AppException error, List<Pokemon> dataPokemon}) {
    return HomeDataState(
        isInit: isInit ?? this.isInit,
        isLoading: isLoading ?? this.isLoading,
        pokemons: dataPokemon ?? pokemons,
        error: error);
  }
}
