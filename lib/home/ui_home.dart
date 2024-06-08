import 'package:todo_app/home/ui_l_home_provider.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to ToDo App home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Consumer<UILogicHome>(
              builder: (context, provider, child) {
                return Column(
                  children: [
                    WidgetButton(
                      isEnabled: provider.buttonEnable,
                      label: 'Login',
                      onTap: () async {
                        await provider.fetchData();
                      },
                    ),
                    if (provider.list != null)
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            final todo = provider.list!.todos[index];
                            return ListTile(
                              title: Text(todo.todo),
                              subtitle: Text('Completed: ${todo.completed}'),
                            );
                          },
                        ),
                      )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
