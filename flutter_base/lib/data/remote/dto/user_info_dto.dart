import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(nullable: true, explicitToJson: true)
class UserInfoDto {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "token")
  String token;
  @JsonKey(name: "first_name")
  String firstName;
  @JsonKey(name: "last_name")
  String lastName;
  @JsonKey(name: "kana_first_name")
  String firstFuri;
  @JsonKey(name: "kana_last_name")
  String lastFuri;
  @JsonKey(name: "zip_code")
  String zipCode;
  @JsonKey(name: "address1")
  String prefecture;
  @JsonKey(name: "address2")
  String city;
  @JsonKey(name: "address3")
  String street;
  @JsonKey(name: "mail_address")
  String mail;
  @JsonKey(name: "mobile_phone_number")
  String phone;
  @JsonKey(name: "sales_person_number")
  String saleNumber;
  @JsonKey(name: "birthday")
  String birthday;
  @JsonKey(name: "gender")
  int gender;

  UserInfoDto(
      {this.id,
      this.token,
      this.firstName,
      this.lastName,
      this.firstFuri,
      this.lastFuri,
      this.zipCode,
      this.city,
      this.mail,
      this.phone,
      this.prefecture,
      this.street,
      this.saleNumber,
      this.birthday,
      this.gender});

  factory UserInfoDto.fromJson(Map<String, dynamic> json) =>
      userInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => userInfoDtoToJson(this);
}

UserInfoDto userInfoDtoFromJson(Map<String, dynamic> json) {
  return UserInfoDto(
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    firstFuri: json['kana_first_name'] as String,
    lastFuri: json['kana_last_name'] as String,
    zipCode: json['zip_code'] as String,
    city: json['address2'] as String,
    mail: json['mail_address'] as String,
    phone: json['mobile_phone_number'] as String,
    prefecture: json['address1'] as String,
    street: json['address3'] as String,
    saleNumber: (json['sales_person_number'] ?? "") as String,
    birthday: (json['birthday'] ?? "") as String,
    gender: (json['gender'] ?? 1) as int,
  );
}

Map<String, dynamic> userInfoDtoToJson(UserInfoDto fromObj) =>
    <String, dynamic>{
      'first_name': fromObj.firstName,
      'last_name': fromObj.lastName,
      'kana_first_name': fromObj.firstFuri,
      'kana_last_name': fromObj.lastFuri,
      'zip_code': fromObj.zipCode,
      'address2': fromObj.city,
      'mail_address': fromObj.mail,
      'mobile_phone_number': fromObj.phone,
      'address1': fromObj.prefecture,
      'address3': fromObj.street,
      'sales_person_number': fromObj.saleNumber,
      'birthday': fromObj.birthday,
      'gender': fromObj.gender
    };
