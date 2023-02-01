import 'package:hand_made/features/users/domain/entities/users_entity.dart';
import 'package:hand_made/features/users/domain/repositories/user_repository.dart';

class UserUsecase {
  final UserRepository userRepository;

  UserUsecase({
    required this.userRepository,
  });

  Future<List<UserEntity>> call() async {
    try {
      final response = await userRepository.getUsers();
      return response.users;
    } catch (e) {
      throw Exception();
    }
  }
}
