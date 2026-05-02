import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/paid_deeon_view.dart';
import 'package:deeon/features/auth/presentation/view/forget_password_view.dart';
import 'package:deeon/features/auth/presentation/view/login_view.dart';
import 'package:deeon/features/auth/presentation/view/regester_vew.dart';
import 'package:deeon/features/deeon/presentation/views/deeon_view.dart';
import 'package:deeon/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RouteManager.regesterRoute:
      return MaterialPageRoute(builder: (context) => const RegesterVew());
    case RouteManager.loginRoute:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case RouteManager.forgetPasswordRoute:
      return MaterialPageRoute(
        builder: (context) => const ForgetPasswordView(),
      );
    case RouteManager.homeViewRoute:
      final args = routeSettings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (_) => HomeView(email: args['email'], name: args['name']),
      );
    case RouteManager.deeonViewRoute:
      return MaterialPageRoute(builder: (context) => const DeeonView());
    case RouteManager.paidDeeonViewRoute:
      return MaterialPageRoute(builder: (context) => const PaidDeeonView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
