import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

class AppDataState extends ScreenDataState {
  final AppState currentState;

  const AppDataState(this.currentState);
}

enum AppState { initial, home, login }
