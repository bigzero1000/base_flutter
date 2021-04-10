import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_base/common/exception.dart';
import 'package:flutter_base/domain/domain.dart';
import 'package:flutter_base/domain/pojo/pokemon.dart';
import 'package:flutter_base/ui/home/home_event.dart';
import 'package:flutter_base/ui/home/home_state.dart';
import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

class HomeEventProcessor extends EventToStateProcessor<HomeEvent, HomeDataState> {

  HomeEventProcessor(HomeDataState initialState) : super(initialState);

  @override
  Stream<HomeDataState> processEvent(HomeEvent event) async* {
    if (event is LoadDataEvent) {
      try {
        yield state.copy(isInit: false, isLoading: true);
        final dataPokemon = await commonInteractor.getPokemons();
        final data = <Pokemon>[];
        data.addAll(state.pokemons);
        data.addAll(dataPokemon);
        yield state.copy(isLoading: false, dataPokemon: data);
      } catch (error) {
        debugPrint("${error.toString()}");
        yield state.copy(isLoading: false, error: error as AppException);
      }
    }
  }
}
