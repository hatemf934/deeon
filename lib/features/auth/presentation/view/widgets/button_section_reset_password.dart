import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_elveted_button.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_button.dart';
import 'package:deeon/generated/l10n.dart';
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
          text: "تعيين كلمه مرور جديده",
          style: Styles.textStyle18.copyWith(color: ColorManager.witheColor),
        ),

        SizedBox(height: HeightManager.h20),
        CustomTextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          textButton: S.of(context).backToLogin,
        ),
      ],
    );
  }
}
