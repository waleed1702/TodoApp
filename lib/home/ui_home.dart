import 'package:todo_app/widgets/textfeild.dart';
import 'package:todo_app/utils/app_colors.dart';
import 'package:todo_app/login/ui_l_login.dart';
import 'package:todo_app/widgets/w_button.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final uilogic = UILoginLogin();
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to ToDo App home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
