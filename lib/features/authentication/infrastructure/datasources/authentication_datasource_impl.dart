
import 'package:template_clean_arch/features/authentication/domain/datasources/authentication_datasource.dart';
import 'package:template_clean_arch/features/authentication/infrastructure/dtos/dtos.dart';
import 'package:template_clean_arch/shared/infrastructure/services/http_service/http_client_service_impl.dart';

class AuthenticationDataSourceImpl extends AuthenticationDataSource {

  final httpClientService= HttpClientServiceImpl();
  @override
  Future<UserResponseDto> signIn({required UserRequestDto userData}) async {
    final response  = await httpClientService.post(path: '/user', data: userData.toJson());
    return UserResponseDto.fromJson(response);
  }
}
