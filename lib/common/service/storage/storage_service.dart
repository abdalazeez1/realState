import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'i_storage_service.dart';

@LazySingleton(as: IStorageService)
class StorageService extends IStorageService {
  StorageService(this._preferences);

  final _tokenKey = "____token###";
  final _themeKey = "____theme###";
  late final SharedPreferences _preferences;

  @override
  Future<bool> setToken(String token) => _preferences.setString(_tokenKey, token);

  @override
  String? get token => _preferences.getString(_tokenKey);

  @override
  ThemeMode get getTheme {
    // final res = _preferences.getString(_themeKey);//todo  map res
    return ThemeMode.light;
  }

  @override
  Future<bool> setTheme(ThemeMode themeMode) => _preferences.setString(_themeKey, themeMode.name);

  @override
  Future<bool> clearUser() async {
    return await _preferences.remove(_tokenKey);
  }

  @override
  bool get registeredUser => token != null;
}
