import 'package:todo_app/login/c_login.dart';
import 'package:flutter/material.dart';

class UILoginLogin {
  final id = ValueNotifier<String?>(null);

  final userName = TextEditingController();
  final password = TextEditingController();
  final controller = LoginController();

  void fetchData() async {
    id.value = null;
    id.value = await controller.loginUser(userName.text, password.text);
  }
}
