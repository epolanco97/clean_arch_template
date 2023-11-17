
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:template_clean_arch/features/authentication/domain/usescases/signin/sign_in_usecase.dart';
import 'package:template_clean_arch/features/authentication/domain/usescases/signin/sign_in_usecases_impl.dart';
import 'package:template_clean_arch/features/authentication/presentation/providers/authentication_repository_provider.dart';

part 'sign_in_usecase_provider.g.dart';

@riverpod
SignInUsecase signInUsecase(SignInUsecaseRef ref){
  final authenticationRepository = ref.watch(authenticationRepositoryProvider);
  return SignInUsecaseImpl(authenticationRepository);
}