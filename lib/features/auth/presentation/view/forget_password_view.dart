import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/section_of_forget_password.dart';
import 'package:deeon/features/auth/presentation/view/widgets/title_widget_of_auth_views.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});
  static String id = RouteManager.forgetPasswordRoute;

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final GlobalKey<SectionOfForgetPasswordState> frogetSectionKey =
      GlobalKey<SectionOfForgetPasswordState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        frogetSectionKey.currentState?.resetValidation();
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: ColorManager.primaryColor,
        body: Column(
          children: [
            Expanded(
              child: TitleWidgetOfAuthViews(
                textTitle: TextManger.forgetPassword,
              ),
            ),
            SectionOfForgetPassword(key: frogetSectionKey),
          ],
        ),
      ),
    );
  }
}
