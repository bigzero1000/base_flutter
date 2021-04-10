import 'package:flutter/material.dart';
import 'package:flutter_base/domain/pojo/pokemon.dart';
import 'package:flutter_base/ui/pokemondetail/pokemon_detail_event.dart';
import 'package:flutter_base/ui/pokemondetail/pokemon_detail_event_processor.dart';
import 'package:flutter_base/ui/pokemondetail/pokemon_detail_state.dart';
import 'package:flutter_base/ui/pokemondetail/widget/pokemon_detail.dart';
import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

class PokemonDetailScreen extends CoreScreen<PokemonDetailEvent,
    PokemonDetailState, PokemonDetailEventProcessor> {
  final Pokemon pokemonDetail;

  const PokemonDetailScreen(this.pokemonDetail);

  @override
  void handleDataStateChange(BuildContext context,
      PokemonDetailEventProcessor processor, PokemonDetailState state) {}

  @override
  PokemonDetailEventProcessor createEventProcessor(PokemonDetailState state) {
    return PokemonDetailEventProcessor(state);
  }

  @override
  Widget buildScreen(BuildContext context,
      PokemonDetailEventProcessor processor, PokemonDetailState state) {
    return PokemonDetail(pokemonDetail);
  }

  @override
  PokemonDetailState initScreenState() {
    return const PokemonDetailState(isInit: true, isLoading: false);
  }
}
