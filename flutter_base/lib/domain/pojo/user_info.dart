class UserInfo {
  String id;
  String token;
  String firstName;
  String lastName;
  String firstFuri;
  String lastFuri;
  String postalCode1;
  String postalCode2;
  String prefecture;
  String city;
  String street;
  String mail;
  String phone;
  String pass;
  String saleNumber;
  String birthday;
  int gender;
  bool agreeUpdateData;
  String dateOfBirth;
  String monthOfBirth;
  String yearOfBirth;

  UserInfo(
      {this.id,
      this.token,
      this.firstName,
      this.lastName,
      this.firstFuri,
      this.lastFuri,
      this.postalCode1,
      this.postalCode2,
      this.prefecture,
      this.city,
      this.street,
      this.mail,
      this.phone,
      this.pass,
      this.saleNumber,
      this.birthday,
      this.gender,
      this.agreeUpdateData,
      this.dateOfBirth,
      this.monthOfBirth,
      this.yearOfBirth});
}
