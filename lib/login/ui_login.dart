import 'package:todo_app/widgets/textfeild.dart';
import 'package:todo_app/utils/app_colors.dart';
import 'package:todo_app/login/ui_l_login.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final UILoginLogin uiLogic;

  const Login({Key? key, required this.uiLogic}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textFeild(controller: widget.uiLogic.userName, lebal: 'User name'),
            textFeild(controller: widget.uiLogic.password, lebal: 'Password'),
            ElevatedButton(
                onPressed: () => widget.uiLogic.controller.loginUser(),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Login"),
                ))
          ],
        ),
      ),
    );
  }
}
