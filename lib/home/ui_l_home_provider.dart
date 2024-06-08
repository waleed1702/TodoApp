import 'package:todo_app/home/model/m_todo.dart';
import 'package:todo_app/home/c_home.dart';
import 'package:flutter/material.dart';

class UILogicHome extends ChangeNotifier {
  TodoList? list;

  bool buttonEnable = true;

  final controller = HomeController();

  Future<void> fetchData() async {
    buttonEnable = false;
    notifyListeners();
    list = await controller.fetchData(10, 0);
    buttonEnable = true;
    notifyListeners();
  }
}
