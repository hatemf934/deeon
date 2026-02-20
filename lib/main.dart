import 'package:deeon/features/regester&login/presentation/view/login_view.dart';
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
      initialRoute: LoginView.id,
      routes: {LoginView.id: (context) => const LoginView()},
    );
  }
}
