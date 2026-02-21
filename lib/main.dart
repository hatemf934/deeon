import 'package:deeon/features/auth/presentation/view/forget_password_view.dart';
import 'package:deeon/features/auth/presentation/view/login_view.dart';
import 'package:deeon/features/auth/presentation/view/regester_vew.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Deeon());
}

class Deeon extends StatelessWidget {
  const Deeon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: RegesterVew.id,
      routes: {
        ForgetPasswordView.id: (context) => const ForgetPasswordView(),
        LoginView.id: (context) => const LoginView(),
        RegesterVew.id: (context) => const RegesterVew(),
      },
    );
  }
}
