import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';

@freezed
class AuthEntity with _$AuthEntity {
  const factory AuthEntity({
    required String email,
    required String password,
    @Default('') String name,
  }) = _AuthEntity;
}