import 'package:flutter/material.dart';
import 'package:hand_made/core/route_name_constants.dart';
import 'package:hand_made/features/setting/presentation/setting_screen.dart';
import 'package:hand_made/features/users/presentation/screens/users_screen.dart';

class MyRoute {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (context) => const UsersScreen());
      case usersRoute:
        return MaterialPageRoute(builder: (context) => const UsersScreen());
      case mainRoute:
        return MaterialPageRoute(builder: (context) => const UsersScreen());
      case settingRoute:
        return MaterialPageRoute(builder: (context) => const SettingScreen());
      default:
        return MaterialPageRoute(builder: (context) => const UsersScreen());
    }
  }
}
