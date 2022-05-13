// To parse this JSON data, do
//
//     final loginRes ponse = loginResponseFromJson(jsonString);

import 'dart:convert';
import 'package:castor_app_v1/models/user.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    this.error,
    required this.message,
    required this.access,
    required this.refresh,
    required this.authenticatedUser,
  });

  dynamic error;
  String message;
  String access;
  String refresh;
  User authenticatedUser;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        error: json["error"],
        message: json["message"],
        access: json["access"],
        refresh: json["refresh"],
        authenticatedUser: User.fromJson(json["authenticatedUser"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "access": access,
        "refresh": refresh,
        "authenticatedUser": authenticatedUser.toJson(),
      };
}
