import 'package:flutter/material.dart';
import 'package:hand_made/features/main/presentation/providrs/navigation_stpod.dart';
import 'package:hand_made/features/main/presentation/widgets/custom_bottom_navigation/custom_menu_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomBottomNavigationBar extends ConsumerWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    this.onTap,
  }) : super(key: key);

  final int selectedIndex;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: SizedBox(
        height: 96.0,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  const Spacer(),
                  CustomMenuItem(
                    onTap: (int index) {
                      ref.read(navigationStpod.notifier).state = index;
                    },
                    selectedIndex: 0,
                    itemIcon: Icons.home,
                    notActiveIconColor: Colors.grey,
                  ),
                  const Spacer(),
                  CustomMenuItem(
                    onTap: (int index) {
                      ref.read(navigationStpod.notifier).state = index;
                    },
                    selectedIndex: 1,
                    itemIcon: Icons.favorite_border,
                    notActiveIconColor: Colors.grey,
                  ),
                  const Spacer(),
                  CustomMenuItem(
                    onTap: (int index) {
                      ref.read(navigationStpod.notifier).state = index;
                    },
                    selectedIndex: 2,
                    itemIcon: Icons.search,
                    notActiveIconColor: Colors.grey,
                  ),
                  const Spacer(),
                  CustomMenuItem(
                    onTap: (int index) {
                      ref.read(navigationStpod.notifier).state = index;
                    },
                    selectedIndex: 3,
                    itemIcon: Icons.settings,
                    notActiveIconColor: Colors.grey,
                  ),
                  const Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
