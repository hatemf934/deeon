import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/login_view.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_elveted_button.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ButtonsRegesterSection extends StatelessWidget {
  const ButtonsRegesterSection({super.key, required this.onPressed});
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          onPressed: onPressed,
          text: TextManger.createAccount,
        ),
        SizedBox(height: HeightManager.h20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginView.id);
              },
              textButton: TextManger.signText,
            ),
            Text(
              TextManger.haveAccount,
              style: Styles.textStyle22.copyWith(
                fontWeight: FontWeight.bold,
                color: ColorManager.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
