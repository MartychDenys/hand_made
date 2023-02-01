import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hand_made/features/main/presentation/providrs/navigation_stpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GNavBar extends ConsumerWidget {
  const GNavBar({
    Key? key,
    required this.ref,
  }) : super(key: key);

  final WidgetRef ref;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        color: Colors.black,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(8),
            onTabChange: (int index) {
              ref.read(navigationStpod.notifier).state = index;
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Favorite',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      );
  }
}