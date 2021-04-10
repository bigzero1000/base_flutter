import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

class PokemonDetailState extends ScreenDataState {
  final bool isInit;
  final bool isLoading;

  const PokemonDetailState({this.isInit, this.isLoading});

  PokemonDetailState copy({bool isInit, bool isLoading}) {
    return PokemonDetailState(
      isInit: isInit ?? this.isInit,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
