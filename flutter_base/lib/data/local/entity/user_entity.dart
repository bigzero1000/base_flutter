import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class UserEntity {
  final String id;
  String name;
  String token;

  UserEntity({@required this.id, this.name, @required this.token});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'token': token,
    };
  }
}
