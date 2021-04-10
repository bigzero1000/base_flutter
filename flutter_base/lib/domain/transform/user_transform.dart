import 'package:flutter_base/data/local/entity/user_entity.dart';
import 'package:flutter_base/data/remote/dto/user_info_dto.dart';
import 'package:flutter_base/domain/pojo/user_info.dart';

UserInfo toUserInfo(UserInfoDto fromObj) {
  if (fromObj == null) return null;
  return UserInfo(
      firstName: fromObj.firstName ?? "",
      lastName: fromObj.lastName ?? "",
      firstFuri: fromObj.firstFuri ?? "",
      lastFuri: fromObj.lastFuri ?? "",
      postalCode1: fromObj.zipCode.substring(0, 3) ?? "",
      postalCode2: fromObj.zipCode.substring(3, fromObj.zipCode.length) ?? "",
      street: fromObj.street ?? "",
      city: fromObj.city ?? "",
      prefecture: fromObj.prefecture ?? "",
      phone: fromObj.phone ?? "",
      mail: fromObj.mail ?? "",
      birthday: fromObj.birthday ?? "",
      gender: fromObj.gender ?? 1,
      saleNumber: fromObj.saleNumber ?? "");
}

UserInfoDto toUserInfoDto(UserInfo fromObj) {
  if (fromObj == null) return null;
  return UserInfoDto(
      firstName: fromObj.firstName ?? "",
      lastName: fromObj.lastName ?? "",
      firstFuri: fromObj.firstFuri ?? "",
      lastFuri: fromObj.lastFuri ?? "",
      zipCode: (fromObj.postalCode1 + fromObj.postalCode2) ?? "",
      street: fromObj.street ?? "",
      city: fromObj.city ?? "",
      prefecture: fromObj.prefecture ?? "",
      phone: fromObj.phone ?? "",
      mail: fromObj.mail ?? "",
      birthday: fromObj.birthday ?? "",
      gender: fromObj.gender ?? 1);
}

UserEntity toUserEntity(UserInfoDto fromObj) {
  if (fromObj == null) return null;
  return UserEntity(
      id: fromObj.id,
      token: fromObj.token,
      name: "abc");
}
