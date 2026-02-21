import 'package:deeon/core/height_manager.dart';
import 'package:deeon/core/styles.dart';
import 'package:deeon/core/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_elveted_button.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ButtonsRegesterSection extends StatelessWidget {
  const ButtonsRegesterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(onPressed: () {}, text: TextManger.createAccount),
        SizedBox(height: HeightManager.h20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButton(onPressed: () {}, textButton: TextManger.signText),
            Text(
              TextManger.haveAccount,
              style: Styles.textStyle22.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
