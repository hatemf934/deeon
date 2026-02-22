import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/section_of_login_view.dart';
import 'package:deeon/features/auth/presentation/view/widgets/title_widget_of_auth_views.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = RouteManager.loginRoute;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<SectionOfLoginViewState> loginSectionKey =
      GlobalKey<SectionOfLoginViewState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        loginSectionKey.currentState?.resetValidation();
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: ColorManager.primaryColor,
        body: Column(
          children: [
            Expanded(
              child: TitleWidgetOfAuthViews(textTitle: TextManger.signInText),
            ),
            SectionOfLoginView(key: loginSectionKey),
          ],
        ),
      ),
    );
  }
}
