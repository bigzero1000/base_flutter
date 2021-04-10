import 'dart:async';

import 'package:flutter_base/ui/pokemondetail/pokemon_detail_event.dart';
import 'package:flutter_base/ui/pokemondetail/pokemon_detail_state.dart';
import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

class PokemonDetailEventProcessor extends EventToStateProcessor<PokemonDetailEvent, PokemonDetailState> {
  PokemonDetailEventProcessor(PokemonDetailState initialState) : super(initialState);

  @override
  Stream<PokemonDetailState> processEvent(PokemonDetailEvent event) async* {}
}
