import 'package:template_clean_arch/features/authentication/domain/entities/user_entity.dart';
import 'package:template_clean_arch/features/authentication/infrastructure/dtos/user_response_dto.dart';

class AuthenticationMapper {

  static UserEntity jsonToEntity(UserResponseDto user) => UserEntity(id: user.id, username: user.username);
}