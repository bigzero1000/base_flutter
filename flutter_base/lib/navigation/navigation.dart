import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/domain/pojo/pokemon.dart';
import 'package:flutter_base/ui/home/home_screen.dart';
import 'package:flutter_base/ui/login/login_screen.dart';
import 'package:flutter_base/ui/pokemondetail/pokemon_detail_screen.dart';
import 'fade_page_route.dart';

void navigateBack(BuildContext context) {
  return Navigator.pop(context);
}

void navigateToRoot({BuildContext context}) {
  Navigator.of(context).popUntil((route) => route.isFirst);
}

void popToRootAndPush(BuildContext context, MaterialPageRoute route) {
  Navigator.of(context).popUntil((route) => route.isFirst);
  Navigator.push(context, route);
}

void navigateToHomeScreen(BuildContext context) {
  Navigator.pushReplacement(context, FadeRoute(HomeScreen()));
}

void navigateToLoginScreen(BuildContext context) {
  Navigator.push(context, FadeRoute(LoginScreen()));
}

void navigateToPokemonDetail(BuildContext context, Pokemon pokemon) {
  Navigator.of(context).push(FadeRoute(PokemonDetailScreen(pokemon)));
}



