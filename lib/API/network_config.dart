import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:indie/Models/user.dart';
class NetworkConfig{
  static final String baseUrl = "http://localhost:3000";
  static final String signIn = "/auth/signin";

  Future<User> login(String email, String password) async{
    if(email.length != 0 && password.length != 0){
      final Response response = await Dio().post(NetworkConfig.baseUrl + NetworkConfig.signIn, data: {
        "email": email,
        "password": password,
      });
      if(response.statusCode == 200){
        return User.fromJson(response.data);
      }
      else{
        print(response.statusCode.toString());
        throw Exception(response.statusCode.toString());
      }
    }
  }
}