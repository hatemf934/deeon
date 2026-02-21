import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_elveted_button.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ButtonsSectionResetPassword extends StatelessWidget {
  const ButtonsSectionResetPassword({super.key, required this.onPressed});
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          onPressed: onPressed,
          text: TextManger.sendResetLink,
        ),

        SizedBox(height: HeightManager.h20),
        CustomTextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          textButton: TextManger.backToLogin,
        ),
      ],
    );
  }
}
