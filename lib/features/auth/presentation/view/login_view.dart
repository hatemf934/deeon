import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/section_of_login_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = RouteManager.loginRoute;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: ColorManager.primaryColor,
        body: Column(
          children: [
            Spacer(),
            Text(TextManger.signInText, style: Styles.textStyle30),
            Spacer(flex: 2),
            SectionOfLoginView(),
          ],
        ),
      ),
    );
  }
}
