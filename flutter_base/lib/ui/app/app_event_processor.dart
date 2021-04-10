

import 'package:flutter/cupertino.dart';
import 'package:flutter_base/ui/app/app_data_state.dart';
import 'package:flutter_base/ui/app/app_event.dart';
import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

class AppEventProcessor extends EventToStateProcessor<AppEvent, AppDataState> {
  AppEventProcessor(AppDataState initialState) : super(initialState);

  @override
  Stream<AppDataState> processEvent(AppEvent event) async* {
    if (event is AppStarted) {
      await Future.delayed(const Duration(milliseconds: 2000));
      yield AppDataState(AppState.login);
    }
    if (event is LoggedIn) {
      debugPrint(" handler logined");
      yield AppDataState(AppState.home);
    }
  }
}
