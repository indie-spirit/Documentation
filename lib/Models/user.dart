import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.email,
    this.gender,
  });

  String id;
  String firstName;
  String lastName;
  int phoneNumber;
  String email;
  String gender;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    phoneNumber: json["phoneNumber"],
    email: json["email"],
    gender: json["gender"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "firstName": firstName,
    "lastName": lastName,
    "phoneNumber": phoneNumber,
    "email": email,
    "gender": gender,
  };
}
