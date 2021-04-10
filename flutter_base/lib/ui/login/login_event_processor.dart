import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_base/domain/domain.dart';
import 'package:flutter_base/ui/app/app_event.dart';
import 'package:flutter_base/ui/app/app_screen.dart';
import 'package:flutter_base/ui/login/login_event.dart';
import 'package:flutter_base/ui/login/login_state.dart';
import 'package:flutter_bloc_wrapper/flutter_bloc_wrapper.dart';

class LoginEventProcessor
    extends EventToStateProcessor<LoginEvent, LoginDataState> {
  LoginEventProcessor(LoginDataState initialState) : super(initialState);

  @override
  Stream<LoginDataState> processEvent(LoginEvent event) async* {
    if (event is LoginButtonPressedEvent) {
      yield currentState.copy(isInit: false, isLoading: true);
      var errorCodeUserName = '';
      var errorCodePassword = '';
      if (event.userName.isEmpty) {
        errorCodeUserName = 'user_name_empty';
      }
      if (event.password.isEmpty) {
        errorCodePassword = 'pass_empty';
      }
      if (errorCodeUserName.isNotEmpty || errorCodePassword.isNotEmpty) {
        yield currentState.copy(
            isLoading: false,
            errorCodeUserName: errorCodeUserName,
            errorCodePassword: errorCodePassword);
      } else {
        final userResponded = await userInteractor.authenticate(
            userName: event.userName, password: event.password);
        if (userResponded != null) {
          debugPrint("logined");
          appEventProcessor.raiseEvent(LoggedIn());
          yield currentState.copy(isInit: false, isLoading: false, isLoginSuccess: true);
        }
      }
    }
  }
}
