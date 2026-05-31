import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/paid_deeon_view.dart';
import 'package:deeon/features/auth/presentation/view/login_view.dart';
import 'package:deeon/features/auth/presentation/view/regester_vew.dart';
import 'package:deeon/features/debts/presentation/views/deeon_view.dart';
import 'package:deeon/features/customers/data/model/customer_model.dart';
import 'package:deeon/features/customers/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RouteManager.regesterRoute:
      return MaterialPageRoute(builder: (context) => const RegesterVew());
    case RouteManager.loginRoute:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case RouteManager.homeViewRoute:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case RouteManager.deeonViewRoute:
      final customerModel = routeSettings.arguments as CustomerModel;
      return MaterialPageRoute(
        builder: (context) => DeeonView(customerModel: customerModel),
      );
    case RouteManager.paidDeeonViewRoute:
      final args = routeSettings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => PaidDeeonView(
          customerId: args['customerId'] as String,
          customerModel: args['customerModel'] as CustomerModel,
        ),
      );
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
