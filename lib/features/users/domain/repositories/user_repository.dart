import 'package:hand_made/features/users/data/model/response_users_model.dart';

abstract class UserRepository {
  Future<ResponseUsersModel> getUsers();
}