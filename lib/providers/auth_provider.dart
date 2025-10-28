import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLoggedIn = false;
  String _username = "";

  bool get isLoggedIn => _isLoggedIn;
  String get username => _username;

  Future<bool> login(String username, String password) async {
    // Giả lập check login (bạn thay bằng API)
    if (username == "admin" && password == "123") {
      _isLoggedIn = true;
      _username = username;
      notifyListeners();
      return true;
    }
    return false;
  }

  void logout() {
    _isLoggedIn = false;
    _username = "";
    notifyListeners();
  }
}
