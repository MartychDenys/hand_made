import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hand_made/core/providers/route/navigation_stack_pod.dart';
import 'package:hand_made/core/providers/route/segment.dart';
import 'package:hand_made/core/providers/route/typed_segment.dart';
import 'package:hand_made/features/auth/presentation/screens/auth_screen.dart';
import 'package:hand_made/features/main/presentation/screens/main_screen.dart';
import 'package:hand_made/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//*********************************************
// RouterDelegate
//*********************************************

class RRouterDelegate extends RouterDelegate<TypedPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<TypedPath> {
  RRouterDelegate(this.ref, this.homePath) {
    // final unlisten =
    ref.listen(navigationStackProvider, (_, __) => notifyListeners());
    // ref.onDispose(unlisten);
  }

  final Ref ref;
  final TypedPath homePath;

  @override
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  TypedPath get currentConfiguration => ref.read(navigationStackProvider);

  @override
  Widget build(BuildContext context) {
    final navigationStack = currentConfiguration;
    if (navigationStack.isEmpty) return const SizedBox();

    Widget screenBuilder(TypedSegment segment) {
      if (segment is HomeSegment) return Home(segment);
      if (segment is AuthSegment) return AuthScreen(segment);
      if (segment is MainSegment) return MainScreen(segment);

      throw UnimplementedError();
    }

    return Navigator(
        key: navigatorKey,
        pages: navigationStack
            .map((segment) => MaterialPage(
                  key: ValueKey(segment.toString()),
                  child: screenBuilder(segment),
                ))
            .toList(),
        onPopPage: (route, result) {
          if (!route.didPop(result)) return false;
          final notifier = ref.read(navigationStackProvider.notifier);
          if (notifier.state.length <= 1) return false;
          notifier.state = [
            for (var i = 0; i < notifier.state.length - 1; i++)
              notifier.state[i]
          ];
          return true;
        });
  }

  @override
  Future<void> setNewRoutePath(TypedPath configuration) {
    if (configuration.isEmpty) configuration = homePath;
    navigate(configuration);
    return SynchronousFuture(null);
  }

  void navigate(TypedPath newPath) =>
      ref.read(navigationStackProvider.notifier).state = newPath;
}
