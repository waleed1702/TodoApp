import 'package:todo_app/home/ui_l_home_provider.dart';
import 'package:todo_app/home/ui_home.dart';
import 'package:todo_app/utils/app_colors.dart';
import 'package:todo_app/login/ui_l_login.dart';
import 'package:todo_app/login/ui_login.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UILogicHome()),
        ChangeNotifierProvider(create: (context) => UILoginLogin()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.background),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
