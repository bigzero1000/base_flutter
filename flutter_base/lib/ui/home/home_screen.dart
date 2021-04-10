import 'package:flutter/material.dart';
import 'package:flutter_base/navigation/navigation.dart';
import 'package:flutter_base/ui/home/home_event.dart';
import 'package:flutter_base/ui/home/home_event_processor.dart';
import 'package:flutter_base/ui/home/home_state.dart';
import 'package:flutter_base/ui/home/widget/pokemon_grid.dart';
import 'package:flutter_base/view_common/loading_indicator_widget.dart';
import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

class HomeScreen
    extends CoreScreen<HomeEvent, HomeDataState, HomeEventProcessor> {
  @override
  void handleDataStateChange(
      BuildContext context, HomeEventProcessor processor, HomeDataState state) {
    if (state.error != null) {
      // Show error message
      debugPrint('Home Error ${state.error.message}');
    }
  }

  @override
  Widget buildScreen(
      BuildContext context, HomeEventProcessor processor, HomeDataState state) {
    if (state.isInit) {
      processor.raiseEvent(LoadDataEvent());
    }
    return Scaffold(
      backgroundColor: const Color(0xffF5F0E8),
      body: SafeArea(
        child: Stack(
          children: [
            _mainContentWidget(context, processor, state),
            if (state.isLoading) LoadingIndicatorWidget(),
          ],
        ),
      ),
    );
  }

  Widget _mainContentWidget(
      BuildContext context, HomeEventProcessor processor, HomeDataState state) {
    return PokemonGrid(
      pokemons: state.pokemons,
      canLoadMore: false,
      onRefresh: () async {
        debugPrint('onRefresh data');
      },
      onSelectPokemon: (index, pokemon) {
        navigateToPokemonDetail(context, pokemon);
      },
    );
  }

  @override
  HomeDataState initScreenState() {
    return const HomeDataState(isInit: true, isLoading: false, pokemons: []);
  }

  @override
  HomeEventProcessor createEventProcessor(HomeDataState state) {
    return HomeEventProcessor(state);
  }
}
