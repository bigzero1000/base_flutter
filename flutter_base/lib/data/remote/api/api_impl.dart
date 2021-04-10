
import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base/common/exception.dart';
import 'package:flutter_base/data/remote/api/api.dart';
import 'package:flutter_base/data/remote/dto/pokemon_dto.dart';
import 'package:flutter_base/data/remote/dto/user_info_dto.dart';
import 'package:http/http.dart' as http;

typedef ParseDataFunction<T> = T Function(http.Response response);

class ApiImpl implements Api {
  static const int httpStatusOk = 200;
  static const int httpStatusUnauthenticated = 401;


  final Connectivity connectivity = Connectivity();

  Future<bool> isConnected() async {
    final connectivityResult = await connectivity.checkConnectivity();
    return connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi;
  }

  @override
  Future<UserInfoDto> authenticate({String userName, String password}) async {
    final fakeUser = UserInfoDto(
      id: "1",
      token: "9c47f9b360375a36cceaac577d052d23",
    );
    return Future.delayed(const Duration(seconds: 1), () => fakeUser);
  }

  Future<T> callApi<T>(Future<http.Response> apiResponse,
      ParseDataFunction<T> parseDataFunction) async {
    if (!await isConnected()) {
      throw AppException.noInternet(message: 'No network');
    }
    final respond = await apiResponse.catchError((error) {
      throw AppException.withMessage(message: error.toString());
    });
    return handleRespond(respond, parseDataFunction);
  }

  T handleRespond<T>(
      http.Response response, ParseDataFunction<T> parseDataFunction) {
    switch (response.statusCode) {
      case httpStatusOk:
        try {
          return parseDataFunction.call(response);
        } catch (error) {
          throw AppException.withMessage(message: error.toString());
        }
        break;
      default:
        throw AppException.unknown();
    }
  }

  @override
  Future<List<PokemonDto>> getPokemons() async {
    final data = await rootBundle.loadString('assets/pokemons.json');
    final jsonResult = jsonDecode(data) as List;
    final listPokemons = jsonResult.map((e) => PokemonDto.fromJson(e as Map<String, dynamic>)).toList();
    return listPokemons;
  }
}
