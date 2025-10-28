import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Storage {
  static const _key = "auth_token";
  final _storage = const FlutterSecureStorage();
  
  Future<void> save(String token) => _storage.write(key: _key, value: token);

  Future<String?> read() => _storage.read(key: _key);

  Future<void> clear() => _storage.delete(key: _key);

  static Future<void> saveToken(String accessToken) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('accessToken', accessToken);
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('accessToken');
  }

  static Future<void> removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('accessToken');
  }
}
