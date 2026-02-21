import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/forget_password_view.dart';
import 'package:deeon/features/auth/presentation/view/regester_vew.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_elveted_button.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key, required this.onPressed});
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(onPressed: onPressed, text: TextManger.signInText),
        SizedBox(height: HeightManager.h20),
        CustomTextButton(
          onPressed: () {
            Navigator.pushNamed(context, ForgetPasswordView.id);
          },
          textButton: TextManger.youforgetPassword,
        ),
        SizedBox(height: HeightManager.h20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButton(
              onPressed: () {
                Navigator.pushNamed(context, RegesterVew.id);
              },
              textButton: TextManger.regesterNow,
            ),
            Text(
              TextManger.noHaveAccount,
              style: Styles.textStyle22.copyWith(fontWeight: FontWeight.bold,color: ColorManager.primaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
