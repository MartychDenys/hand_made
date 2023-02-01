import 'package:hand_made/core/providers/service_provider.dart';
import 'package:hand_made/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:hand_made/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:hand_made/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final signUpPod = Provider<SignUpUsecase>((ref) {
  final dio = ref.watch(dioWithoutTokenPod);

  return SignUpUsecase(
    ref: ref,
    authRepository: AuthRepositoryImpl(
      authRemoteDataSource: AuthRemoteDataSourceImpl(dio: dio),
    ),
  );
});
