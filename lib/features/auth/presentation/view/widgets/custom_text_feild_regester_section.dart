import 'package:deeon/core/helpers/form_validate.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/text_validate_manager.dart';
import 'package:deeon/features/auth/presentation/view/widgets/confirm_password_text_feild.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class CustomTextFeildRegesterSection extends StatelessWidget {
  const CustomTextFeildRegesterSection({super.key});
  @override
  Widget build(BuildContext context) {
    final RegExp emailRegExp = RegExp(TextValidateManager.emailRegExp);
    final RegExp nameRegExp = RegExp(TextValidateManager.fullNameRegExp);
    final TextEditingController passwordController = TextEditingController();
    return Column(
      children: [
        CustomTextFeild(
          validator: (value) {
            if (value!.isEmpty) {
              return TextValidateManager.fieldIsRequired;
            } else if (!nameRegExp.hasMatch(value.trim())) {
              return TextValidateManager.invalidFullName;
            }
            return null;
          },
          labelText: TextManger.fullNameText,
          hintText: TextManger.fullNameHint,
          iconData: Icons.person,
        ),
        SizedBox(height: HeightManager.h20),
        CustomTextFeild(
          validator: (value) {
            if (value!.isEmpty) {
              return TextValidateManager.fieldIsRequired;
            } else if (!emailRegExp.hasMatch(value)) {
              return TextValidateManager.validEmailAddress;
            }
            return null;
          },
          labelText: TextManger.emailText,
          hintText: TextManger.emailExText,
          iconData: Icons.email,
        ),
        SizedBox(height: HeightManager.h20),
        ConfirmPasswordTextFeild(
          controller: passwordController,
          validator: (value) => FormValidate().validatePassword(value),
          labelText: TextManger.passWordText,
        ),
        SizedBox(height: HeightManager.h20),
        ConfirmPasswordTextFeild(
          validator: (value) {
            if (value!.isEmpty) {
              return TextValidateManager.fieldIsRequired;
            } else if (value != passwordController.text) {
              return TextValidateManager.passwordsNotMatch;
            }
            return null;
          },
          labelText: TextManger.confirmPassWordText,
        ),
      ],
    );
  }
}
