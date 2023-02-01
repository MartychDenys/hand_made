import 'package:flutter/material.dart';
import 'package:hand_made/features/main/presentation/providrs/navigation_stpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomMenuItem extends ConsumerWidget {
  const CustomMenuItem({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
    required this.itemIcon,
    this.notActiveIconColor,
  }) : super(key: key);

  final int selectedIndex;
  final Function(int) onTap;
  final IconData itemIcon;

  final Color? notActiveIconColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentNavigationIndex = ref.watch(navigationStpod);

    return InkWell(
      onTap: () => onTap(selectedIndex),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: _MenuItemFrame(
        children: [
          if (selectedIndex == currentNavigationIndex)
            Icon(
              itemIcon,
              size: 24,
            )
          else
            Icon(
              itemIcon,
              color: notActiveIconColor,
              size: 24,
            )
        ],
      ),
    );
  }
}

class _MenuItemFrame extends StatelessWidget {
  const _MenuItemFrame({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.0,
      height: 56.0,
      child: Stack(
        children: children,
      ),
    );
  }
}
