import 'package:deeon/features/PaidDeeon/presentation/views/paid_deeon_view.dart';
import 'package:deeon/features/auth/presentation/view/forget_password_view.dart';
import 'package:deeon/features/auth/presentation/view/login_view.dart';
import 'package:deeon/features/auth/presentation/view/regester_vew.dart';
import 'package:deeon/features/deeon/presentation/views/deeon_view.dart';
import 'package:deeon/features/home/presentation/view/home_view.dart';
import 'package:deeon/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        HomeView.id: (context) => const HomeView(),
        DeeonView.id: (context) => const DeeonView(),
        PaidDeeonView.id: (context) => const PaidDeeonView(),
      },
    );
  }
}
