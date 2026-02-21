import 'package:deeon/core/height_manager.dart';
import 'package:deeon/core/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/confirm_password_text_feild.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class CustomTextFeildRegesterSection extends StatelessWidget {
  const CustomTextFeildRegesterSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFeild(
          labelText: TextManger.fullNameText,
          hintText: TextManger.fullNameHint,
          iconData: Icons.person,
        ),
        SizedBox(height: HeightManager.h20),
        CustomTextFeild(
          labelText: TextManger.emailText,
          hintText: TextManger.emailExText,
          iconData: Icons.email,
        ),
        SizedBox(height: HeightManager.h20),
        ConfirmPasswordTextFeild(labelText: TextManger.passWordText),
        SizedBox(height: HeightManager.h20),
        ConfirmPasswordTextFeild(labelText: TextManger.confirmPassWordText),
      ],
    );
  }
}
