import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_union.freezed.dart';

@freezed
class AuthUnion with _$AuthUnion {
  const factory AuthUnion.signIn() = SignIn;
  const factory AuthUnion.signUp() = SignUp;
  const factory AuthUnion.loading() = Loading;
  const factory AuthUnion.error(String error) = Error;
}