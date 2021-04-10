import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_base/domain/pojo/pokemon.dart';
import 'package:flutter_base/theme/images.dart';
import 'package:flutter_base/ui/home/widget/pokemon_card.dart';
import 'package:flutter_base/util/util.dart';

class PokemonGrid extends StatelessWidget {
  const PokemonGrid({
    @required this.pokemons,
    @required this.canLoadMore,
    this.controller,
    @required this.onRefresh,
    @required this.onSelectPokemon,
  });

  final ScrollController controller;
  final List<Pokemon> pokemons;
  final bool canLoadMore;
  final Future Function() onRefresh;
  final Function(int, Pokemon) onSelectPokemon;

  @override
  Widget build(BuildContext context) {
    final paddingBottom = context.responsive(max(context.padding.bottom, 28));

    return CustomScrollView(
      controller: controller,
      physics: const BouncingScrollPhysics(),
      slivers: [
        CupertinoSliverRefreshControl(
          onRefresh: onRefresh,
          builder: (_, __, ___, ____, _____) => const Image(
            image: AppImages.pikloader,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: 28,
            vertical: context.responsive(28),
          ),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.4,
              crossAxisSpacing: context.responsive(10),
              mainAxisSpacing: context.responsive(10),
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => PokemonCard(
                pokemons[index],
                index: index,
                onPress: () => onSelectPokemon(index, pokemons[index]),
              ),
              childCount: pokemons?.length ?? 0,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: canLoadMore
              ? Container(
                  padding: EdgeInsets.only(bottom: paddingBottom),
                  alignment: Alignment.center,
                  child: const Image(
                    image: AppImages.pikloader,
                  ),
                )
              : const SizedBox(),
        ),
      ],
    );
  }
}
