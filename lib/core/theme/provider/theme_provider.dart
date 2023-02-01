import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeSwitchStpod = StateProvider<bool>((ref) => false);

final themeStpod = StateProvider<ThemeMode>((ref) {
  final theme = ref.watch(themeSwitchStpod);
  return theme ? ThemeMode.light : ThemeMode.dark;
});

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900, // Color of Scaffold
    primaryColor: Colors.black, // Change text and appTopNavBar, appBottomNavBAr
    colorScheme: const ColorScheme.dark(),
    appBarTheme: const AppBarTheme(color: Colors.pink),
    iconTheme: const IconThemeData(
      color: Color.fromARGB(255, 219, 222, 33),
      opacity: 0.8,
    ), // CHange icon color
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.grey.shade300,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(
        color: Color.fromARGB(255, 73, 66, 36), opacity: 0.8),
    textTheme: const TextTheme(
      headline2: TextStyle(
        color: Colors.red,
      ),
    ),
  );
}
