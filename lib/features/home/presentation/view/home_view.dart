import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/content_draw_options.dart';
import 'package:deeon/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:deeon/features/home/presentation/view/widgets/user_account_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = RouteManager.homeViewRoute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      appBar: CustomAppBar(),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Container(
          color: ColorManager.primaryColor,
          child: Column(children: [UserAccountSection(), ContentDrawOptions()]),
        ),
      ),
    );
  }
}
