import 'package:template_clean_arch/features/authentication/domain/datasources/authentication_datasource.dart';
import 'package:template_clean_arch/features/authentication/domain/entities/user_entity.dart';
import 'package:template_clean_arch/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:template_clean_arch/features/authentication/infrastructure/dtos/user_request_dto.dart';
import 'package:template_clean_arch/features/authentication/infrastructure/mappers/authentication_mapper.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository{

  final AuthenticationDataSource datasource;

  AuthenticationRepositoryImpl({required this.datasource});

  @override
  Future<UserEntity> signIn({required UserRequestDto userData}) async {
    return AuthenticationMapper.jsonToEntity(await datasource.signIn(userData: userData));
  }

}