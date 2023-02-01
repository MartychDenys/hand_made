import 'package:flutter/material.dart';
import 'package:hand_made/core/theme/provider/theme_provider.dart';
import 'package:hand_made/features/products/presentation/widgets/skeleton_product.dart';
import 'package:hand_made/features/users/domain/entities/users_entity.dart';
import 'package:hand_made/features/users/presentation/providers/users_pod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UsersScreen extends ConsumerWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersPod);
    final testText =
        ref.watch(themeStpod) == ThemeMode.dark ? 'Dark Mode' : 'LightMode';

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            users.when(
              data: (List<UserEntity> data) => ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final user = data[index];

                  return Column(
                    children: [
                      Text(user.username,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                      Text('Hello $testText'),
                      Text(user.id.toString()),
                    ],
                  );
                },
              ),
              error: (_, __) => const SizedBox.shrink(),
              loading: () => const CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}

class LoaderSkelet extends StatelessWidget {
  LoaderSkelet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SkeletonProductLoader(height: 16, width: 80),
              SkeletonProductLoader(height: 16, width: 120),
              SkeletonProductLoader(height: 16, width: 150),
              SkeletonProductLoader(height: 16, width: 180),
            ],
          ),
        ),
      ],
    );
  }
}
