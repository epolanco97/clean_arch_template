import 'package:template_clean_arch/features/authentication/domain/entities/user_entity.dart';
import 'package:template_clean_arch/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:template_clean_arch/features/authentication/domain/usescases/signin/sign_in_usecase.dart';
import 'package:template_clean_arch/features/authentication/infrastructure/dtos/user_request_dto.dart';

class SignInUsecaseImpl extends SignInUsecase {
  final AuthenticationRepository repository;

  SignInUsecaseImpl(this.repository);

  @override
  Future<UserEntity> signIn({required UserRequestDto userData}) async {
    return await repository.signIn(userData: userData);
  }
}
