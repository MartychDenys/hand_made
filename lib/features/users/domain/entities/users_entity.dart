import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_entity.freezed.dart';
part 'users_entity.g.dart';

@freezed
class UsersEntity with _$UsersEntity {
  const factory UsersEntity({
    @Default(<UserEntity>[]) users,
  }) = _UsersEntity;

  factory UsersEntity.fromList(List<dynamic> list) {
    return UsersEntity(
      users: list
          .map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

// factory UsersEntity.fromJson(Map<String, dynamic> json) =>
//     _$UsersEntityFromJson(json);
}

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String username,
    required String email,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
