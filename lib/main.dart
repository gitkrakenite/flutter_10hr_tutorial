import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/pages/home_page.dart';
import 'package:flutter_10hr_tutorial/pages/login_page.dart';
import 'package:flutter_10hr_tutorial/pages/main_page.dart';
import 'package:flutter_10hr_tutorial/pages/profile_page.dart';
import 'package:flutter_10hr_tutorial/styles/app_colors.dart';

void main() {
  runApp(
    const MyHomeWidget(),
  );
}

class MyHomeWidget extends StatelessWidget {
  const MyHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Urbanist",
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark, //dark theme
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/main': (context) => const MainPage(),
        '/profile': (context) => const ProfilePage(),
      },
      initialRoute: "/",
    );
  }
}
