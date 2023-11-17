

import 'package:template_clean_arch/features/authentication/infrastructure/dtos/dtos.dart';

abstract class AuthenticationDataSource {
  Future<UserResponseDto> signIn({required UserRequestDto userData});
}
