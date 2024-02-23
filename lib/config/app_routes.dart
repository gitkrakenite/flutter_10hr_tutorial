import 'package:flutter_10hr_tutorial/pages/edit_profile_page.dart';
import 'package:flutter_10hr_tutorial/pages/home_page.dart';
import 'package:flutter_10hr_tutorial/pages/login_page.dart';
import 'package:flutter_10hr_tutorial/pages/main_page.dart';
import 'package:flutter_10hr_tutorial/pages/profile_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => const LoginPage(),
    '/home': (context) => const HomePage(),
    '/main': (context) => const MainPage(),
    '/profile': (context) => const ProfilePage(),
    '/edit_profile': (context) => EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const user = '/user';
}
