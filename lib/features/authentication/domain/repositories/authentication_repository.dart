
import 'package:template_clean_arch/features/authentication/domain/entities/user_entity.dart';
import 'package:template_clean_arch/features/authentication/infrastructure/dtos/dtos.dart';

abstract class AuthenticationRepository {
  Future<UserEntity> signIn({required UserRequestDto userData});
}
