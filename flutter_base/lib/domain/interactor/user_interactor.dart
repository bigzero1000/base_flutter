import 'package:flutter/cupertino.dart';
import 'package:flutter_base/data/data.dart';
import 'package:flutter_base/data/remote/dto/user_info_dto.dart';
import 'package:flutter_base/domain/transform/user_transform.dart';

class UserInteractor {
  Future<bool> authenticate({
    @required String userName,
    @required String password,
  }) async {

    final UserInfoDto userInfoDto = await api.authenticate(userName: userName, password: password);

    if (userInfoDto != null) {
      // save userInfo to database
      await localDb.saveUserInfo(toUserEntity(userInfoDto));
    }
    return userInfoDto != null;
  }

  Future<void> deleteAllData() async {
    await localDb.deleteUserInfo();
    return;
  }

}
