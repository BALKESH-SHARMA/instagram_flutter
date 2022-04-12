import 'package:flutter/material.dart';
import 'package:instagram_flutter/model/user.dart';
import 'package:instagram_flutter/resources/auth_method.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethod _authMethods = AuthMethod();
  User get getUser {
    return _user!;
  }

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
