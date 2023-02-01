import 'package:hand_made/core/providers/service_provider.dart';
import 'package:hand_made/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:hand_made/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:hand_made/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final signInPod = Provider<SignInUseCase>((ref) {
  final dio = ref.watch(dioWithoutTokenPod);

  return SignInUseCase(
    ref: ref,
    authRepository: AuthRepositoryImpl(
      authRemoteDataSource: AuthRemoteDataSourceImpl(dio: dio),
    ),
  );
});
