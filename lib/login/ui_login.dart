import 'package:todo_app/widgets/textfeild.dart';
import 'package:todo_app/utils/app_colors.dart';
import 'package:todo_app/login/ui_l_login.dart';
import 'package:todo_app/widgets/w_button.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Consumer<UILoginLogin>(
          builder: (context, provider, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to ToDo App',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                provider.id == null
                    ? const SizedBox()
                    : provider.id!.isEmpty
                        ? const Text('Invalid')
                        : Text(provider.id!),
                TextFeild(
                  controller: provider.userName,
                  label: 'User name',
                ),
                TextFeild(
                  controller: provider.password,
                  label: 'Password',
                  obscure: true,
                ),
                WidgetButton(
                  isEnabled: provider.buttonEnable,
                  label: 'Login',
                  onTap: () async {
                    await provider.fetchData();
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
