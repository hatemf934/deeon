import 'package:deeon/core/color_manager.dart';
import 'package:deeon/core/route_manager.dart';
import 'package:deeon/core/styles.dart';
import 'package:deeon/core/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/section_of_regester_view.dart';
import 'package:flutter/material.dart';

class RegesterVew extends StatelessWidget {
  const RegesterVew({super.key});
  static String id = RouteManager.regesterRoute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Column(
        children: [
          Spacer(),
          Text(TextManger.createAccount, style: Styles.textStyle30),
          Spacer(flex: 2),
          SectiomOfRegesterView(),
        ],
      ),
    );
  }
}
