import 'package:hand_made/core/providers/route/segment.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigationStackProvider = StateProvider<TypedPath>(
  (_) => [
    HomeSegment(),
  ],
);
