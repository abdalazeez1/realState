import 'package:flutter/material.dart';

abstract class IStorageService {
  String? get token;
  Future<bool> setToken(String token);


  Future<bool> clearUser();

  ThemeMode get getTheme;

  bool get registeredUser;

}
