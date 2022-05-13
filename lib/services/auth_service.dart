import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:castor_app_v1/global/environment.dart';
import '../models/login_response.dart';
import '../models/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService with ChangeNotifier {
  User? user;
  bool _authenticated = false;

  // Create storage (private method beacause i need this function only in AuthService)
  final _storage = new FlutterSecureStorage();

  bool get authenticated => _authenticated;
  set authenticated(bool value) {
    _authenticated = value;
    notifyListeners();
  }

  //Getters from token static method

  static Future<String?> getToken() async {
    final _storage = new FlutterSecureStorage();
    final token = await _storage.read(key: 'access');
    return token;
  }

  static Future<void> deleteToken() async {
    final _storage = new FlutterSecureStorage();
    await _storage.delete(key: 'access');
  }

  Future<bool> login(String email, String password) async {
    authenticated = true;

    final data = {'email': email, 'password': password};

    final uri = Uri.parse('${Environment.apiUrl}/users/login/');
    final resp = await http.post(uri,
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});
    authenticated = false;
    print(resp.body);

    if (resp.statusCode == 200) {
      final loginResponse = loginResponseFromJson(resp.body);
      this.user = loginResponse.authenticatedUser;

      await _saveToken(loginResponse.access);

      return true;
    } else {
      return false;
    }
  }

  Future register(String nombre, String email, String password) async {
    _authenticated = true;

    final data = {'nombre': nombre, 'email': email, 'password': password};

    final uri = Uri.parse('${Environment.apiUrl}/dtc-user-info');
    final resp = await http.post(uri,
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});
    print(resp.body);
    _authenticated = false;
  }

  Future _saveToken(String token) async {
    // Write value
    return await _storage.write(key: 'access', value: token);
  }

  Future logout() async {
    await _storage.delete(key: 'access');
  }
}
