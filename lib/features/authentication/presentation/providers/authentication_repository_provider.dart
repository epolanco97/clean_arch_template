import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:template_clean_arch/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:template_clean_arch/features/authentication/infrastructure/datasources/authentication_datasource_impl.dart';
import 'package:template_clean_arch/features/authentication/infrastructure/repositories/authentication_repository_impl.dart';

part 'authentication_repository_provider.g.dart';
@riverpod
AuthenticationRepository authenticationRepository(AuthenticationRepositoryRef ref){
    return AuthenticationRepositoryImpl(datasource: AuthenticationDataSourceImpl());
}