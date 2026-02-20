import 'package:deeon/core/height_manager.dart';
import 'package:deeon/core/styles.dart';
import 'package:deeon/core/text_manger.dart';
import 'package:deeon/features/regester&login/presentation/view/widgets/custom_elveted_button.dart';
import 'package:deeon/features/regester&login/presentation/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(onPressed: () {}, text: TextManger.signInText),
        SizedBox(height: HeightManager.h20),
        CustomTextButton(
          onPressed: () {},
          textButton: TextManger.forgetPassword,
        ),
        SizedBox(height: HeightManager.h20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButton(
              onPressed: () {},
              textButton: TextManger.regesterNow,
              fontWeight: FontWeight.bold,
            ),
            Text(
              TextManger.noHaveAccount,
              style: Styles.textStyle22.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
