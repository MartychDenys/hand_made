import 'package:dio/dio.dart';
import 'package:hand_made/core/constants.dart';
import 'package:hand_made/features/users/data/model/response_users_model.dart';

abstract class UsersRemoteDataSource {
  Future<ResponseUsersModel> getUsers();
}

class UsersRemoteData implements UsersRemoteDataSource {
  final Dio dio;

  UsersRemoteData({
    required this.dio,
  });

  @override
  Future<ResponseUsersModel> getUsers() async {
    try {
      final response = await dio.get('$apiUrl/accounts/get_users');

      print('response=> ${response.data}');

      return ResponseUsersModel.fromList(response.data['data']);
    } catch (e) {
      rethrow;
    }
  }
}
