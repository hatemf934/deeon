import 'package:deeon/core/color_manager.dart';
import 'package:deeon/core/route_manager.dart';
import 'package:flutter/material.dart';

class RegesterVew extends StatelessWidget {
  const RegesterVew({super.key});
  static String id = RouteManager.regesterRoute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorManager.primaryColor);
  }
}
