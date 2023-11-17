import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_clean_arch/features/authentication/presentation/providers/auth_provider.dart';

class AuthenticationScreen extends ConsumerWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => ref.read(authProvider.notifier).signIn(),
          child: const Text('Ejemplo'),
        ),
      ),
    );
  }
}
