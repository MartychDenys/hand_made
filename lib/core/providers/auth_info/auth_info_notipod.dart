import 'package:hand_made/core/providers/auth_info/auth_info_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authInfoNotipod = StateProvider<AuthInfoNotifier>((ref) => AuthInfoNotifier());