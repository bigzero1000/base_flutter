import 'package:flutter/material.dart';
import 'package:flutter_base/navigation/navigation.dart';
import 'package:flutter_base/ui/app/app_data_state.dart';
import 'package:flutter_base/ui/app/app_event.dart';
import 'package:flutter_base/ui/app/app_event_processor.dart';
import 'package:flutter_base/ui/flash/splash_screen.dart';
import 'package:flutter_base/ui/home/home_screen.dart';
import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

AppEventProcessor appEventProcessor;

class MyApp extends CoreScreen<AppEvent, AppDataState, AppEventProcessor> {
  @override
  Widget buildScreen(
      BuildContext context, AppEventProcessor processor, AppDataState state) {
    return Scaffold(
      body: _getScreen(state),
    );
  }

  @override
  AppEventProcessor createEventProcessor(AppDataState state) {
    appEventProcessor = AppEventProcessor(state);
    appEventProcessor.raiseEvent(AppStarted());
    return appEventProcessor;
  }

  @override
  void handleDataStateChange(
      BuildContext context, AppEventProcessor processor, AppDataState state) {
    // if (state.currentState == AppState.home) {
    //   debugPrint("go to Home");
    //   navigateToHomeScreen(context);
    // }
    if (state.currentState == AppState.login) {
      navigateToLoginScreen(context);
    }
  }

  @override
  AppDataState initScreenState() {
    return AppDataState(AppState.initial);
  }

  Widget _getScreen(AppDataState state) {
    switch(state.currentState) {
      case AppState.home:
        return HomeScreen();
      default:
        return SplashScreen();
    }
  }
}
