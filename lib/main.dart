import 'package:deeon_app/views/home_view.dart';
import 'package:deeon_app/views/password_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DeeonApp());
}

class DeeonApp extends StatelessWidget {
  const DeeonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
      routes: {
        HomeView.id: (context) => const HomeView(),
        PasswordScreen.id: (context) => const PasswordScreen(),
      },
    );
  }
}
