import 'package:todo_app/login/ui_l_login.dart';
import 'package:todo_app/login/ui_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 23, 84, 130)),
        useMaterial3: true,
      ),
      home: Login(
        uiLogic: UILoginLogin(),
      ),
    );
  }
}
