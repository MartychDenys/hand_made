import 'package:flutter/material.dart';
import 'package:hand_made/core/providers/route/segment.dart';
import 'package:hand_made/features/main/presentation/providrs/navigation_stpod.dart';
import 'package:hand_made/features/main/presentation/widgets/custom_bottom_navigation/custom_bottom_navigation_bar.dart';

import 'package:hand_made/features/products/presentation/products_screen.dart';
import 'package:hand_made/features/setting/presentation/setting_screen.dart';
import 'package:hand_made/features/users/presentation/screens/users_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<Widget> screens = [
  const ProductsScreen(),
  const UsersScreen(),
  const ProductsScreen(),
  const SettingScreen(),
];

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen(this.segment, {Key? key}) : super(key: key);

  final MainSegment segment;

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final navigationState = ref.watch(navigationStpod);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'App title',
        ),
      ),
      body: screens[navigationState],
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: navigationState,
      ),
    );
  }
}
