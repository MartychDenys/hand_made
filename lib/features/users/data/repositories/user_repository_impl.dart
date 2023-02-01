import 'package:hand_made/features/users/data/model/response_users_model.dart';
import 'package:hand_made/features/users/data/source/users_remote_data_source.dart';
import 'package:hand_made/features/users/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UsersRemoteDataSource usersRemoteDataSource;

  UserRepositoryImpl({
    required this.usersRemoteDataSource,
  });

  @override
  Future<ResponseUsersModel> getUsers() async {
    return usersRemoteDataSource.getUsers();
  }

}