import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/section_of_regester_view.dart';
import 'package:deeon/features/auth/presentation/view/widgets/title_widget_of_auth_views.dart';
import 'package:flutter/material.dart';

class RegesterVew extends StatelessWidget {
  const RegesterVew({super.key});
  static String id = RouteManager.regesterRoute;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: ColorManager.primaryColor,
        body: Column(
          children: [
            Expanded(
              child: TitleWidgetOfAuthViews(
                textTitle: TextManger.createAccount,
              ),
            ),
            SectiomOfRegesterView(),
          ],
        ),
      ),
    );
  }
}
