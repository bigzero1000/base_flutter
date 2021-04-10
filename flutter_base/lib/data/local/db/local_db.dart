import 'package:flutter_base/data/local/entity/user_entity.dart';

abstract class LocalDb {
  Future<void> saveUserInfo(UserEntity userInfo);

  Future<void> deleteUserInfo();

}
