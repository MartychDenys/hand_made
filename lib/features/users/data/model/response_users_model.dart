import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hand_made/features/users/domain/entities/users_entity.dart';

part 'response_users_model.freezed.dart';

@freezed
class ResponseUsersModel with _$ResponseUsersModel {
  const factory ResponseUsersModel({
    @Default(<UsersEntity>[]) users,
  }) = _ResponseUsersModel;

  factory ResponseUsersModel.fromList(List<dynamic> list) {
    return ResponseUsersModel(
      users: list
          .map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

// @freezed
// class UserModel with _$UserModel {
//   const factory UserModel({
//     required int id,
//     required String username,
//     required String email,
//   }) = _ResponseUserModel;
//
//   factory ResponseUserModel.fromJson(Map<String, dynamic> json) =>
//       _$ResponseUserModelFromJson(json);
// }