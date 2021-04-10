
import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

abstract class HomeEvent extends ScreenEvent {
  const HomeEvent();
}

class LoadDataEvent extends HomeEvent {}
