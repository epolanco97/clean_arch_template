import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:template_clean_arch/features/authentication/infrastructure/dtos/user_request_dto.dart';
import 'package:template_clean_arch/features/authentication/presentation/providers/sign_in_usecase_provider.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  void build() {}

  signIn() async {
    final signInUsecase = ref.read(signInUsecaseProvider);

    await signInUsecase.signIn(
      userData: UserRequestDto(email: 'email@ejemplo.com', password: 'onecard'),
    );
  }
}
