import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static final CacheHelper _cacheHelper = CacheHelper._();
  factory CacheHelper() {
    init();
    return _cacheHelper;
  }
  CacheHelper._();

  static SharedPreferences? _sp;
  static init() async {
    _sp = await SharedPreferences.getInstance();
  }

  static Future<bool> putString(String key, String value) async {
    return await _sp!.setString(key, value);
  }


  static Future<bool> putInt(String key, int value) async {
    return await _sp!.setInt(key, value);
  }

  static Future<bool> putBool(String key, dynamic value) async {
    return await _sp!.setBool(key, value);
  }

  static Future<bool> putListOfString(String key, List<String> value) async {
    return await _sp!.setStringList(key, value);
  }

  // static Future<bool> pusModals(String key, ProfileModals value) async {
  //   return await _sp!.setString(key, jsonEncode(ProfileModals));
  // }


  static List<String>? getListOfString(String key) {
    return _sp!.getStringList(key);
  }

  static bool? getBool(String key) {
    return _sp!.getBool(key);
  }

  static int? getInt(String key) {
    return _sp!.getInt(key);
  }

  static String? getString(String key) {
    return _sp!.getString(key);
  }

  static Future<bool> remove(String key) async {
    return await _sp!.remove(key);
  }

  static Future<bool> clearAllSaved() async {
    return await _sp!.clear();
  }
}
