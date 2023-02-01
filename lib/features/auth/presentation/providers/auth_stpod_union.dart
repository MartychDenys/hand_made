import 'package:hooks_riverpod/hooks_riverpod.dart';
import './auth_union.dart';

final authStateStpod = StateProvider<AuthUnion>(
  (ref) => const AuthUnion.signIn(),
);
