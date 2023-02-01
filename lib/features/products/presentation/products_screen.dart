import 'package:flutter/material.dart';
import 'package:hand_made/core/theme/provider/theme_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductsScreen extends ConsumerWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeSwitch = ref.watch(themeSwitchStpod);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: themeSwitch,
              onChanged: (bool value) {
                ref.read(themeSwitchStpod.notifier).state = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
