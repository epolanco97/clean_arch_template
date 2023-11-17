import 'package:template_clean_arch/features/authentication/domain/entities/user_entity.dart';
import 'package:template_clean_arch/features/authentication/infrastructure/dtos/user_request_dto.dart';

abstract class SignInUsecase {
  Future<UserEntity> signIn({required UserRequestDto userData});
}
