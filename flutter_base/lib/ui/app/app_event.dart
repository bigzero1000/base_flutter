import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

abstract class AppEvent extends ScreenEvent {
  const AppEvent();
}

class AppStarted extends AppEvent {}
class LoggedIn extends AppEvent {}