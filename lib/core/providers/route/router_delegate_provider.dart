import 'package:hand_made/core/providers/route/rrouter_delegate.dart';
import 'package:hand_made/core/providers/route/segment.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final routerDelegateProvider = Provider<RRouterDelegate>(
  (ref) => RRouterDelegate(
    ref,
    [
      HomeSegment(),
    ],
  ),
);
