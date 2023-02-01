import 'package:hand_made/core/providers/service_provider.dart';
import 'package:hand_made/features/users/data/repositories/user_repository_impl.dart';
import 'package:hand_made/features/users/data/source/users_remote_data_source.dart';
import 'package:hand_made/features/users/domain/entities/users_entity.dart';
import 'package:hand_made/features/users/domain/usecases/user_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final usersPod = FutureProvider<List<UserEntity>>((ref) {
  final dio = ref.watch(basicDioPod);

  return UserUsecase(
      userRepository: UserRepositoryImpl(
    usersRemoteDataSource: UsersRemoteData(dio: dio),
  )).call();
});
