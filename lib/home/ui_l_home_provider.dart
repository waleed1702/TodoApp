import 'package:todo_app/home/c_home.dart';
import 'package:flutter/material.dart';

class UILogicHome extends ChangeNotifier {
  String? id;

  bool buttonEnable = true;

  final userName = TextEditingController();
  final password = TextEditingController();
  final controller = HomeController();

  UILogicHome() {
    userName.addListener(_updateButtonState);
    password.addListener(_updateButtonState);
  }

  void _updateButtonState() {
    notifyListeners();
  }

  Future<void> fetchData() async {
    buttonEnable = false;
    notifyListeners();
    id = await controller.loginUser(userName.text, password.text);
    buttonEnable = true;
    notifyListeners();
    if (id!.isNotEmpty) {}
  }
}
