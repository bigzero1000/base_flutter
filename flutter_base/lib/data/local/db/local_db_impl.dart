import 'dart:convert';
import 'package:flutter_base/data/local/db/local_db.dart';
import 'package:flutter_base/data/local/entity/user_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDbImpl implements LocalDb {
  final _keyUserInfo = "userInfo";
  SharedPreferences _prefs;

  @override
  Future<void> saveUserInfo(UserEntity userInfo) async {
    _prefs = await SharedPreferences.getInstance();
    _prefs.setString(_keyUserInfo, jsonEncode(userInfo));
  }

  @override
  Future<void> deleteUserInfo() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs.remove(_keyUserInfo);
  }

}
