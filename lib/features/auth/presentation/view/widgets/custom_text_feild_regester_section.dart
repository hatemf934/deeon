import 'package:deeon/core/helpers/form_validate.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/text_validate_manager.dart';
import 'package:deeon/features/auth/presentation/view/widgets/confirm_password_text_feild.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class CustomTextFeildRegesterSection extends StatefulWidget {
  const CustomTextFeildRegesterSection({super.key, required this.isSubmitted});
  final bool isSubmitted;
  @override
  State<CustomTextFeildRegesterSection> createState() =>
      _CustomTextFeildRegesterSectionState();
}

class _CustomTextFeildRegesterSectionState
    extends State<CustomTextFeildRegesterSection> {
  final TextEditingController passwordController = TextEditingController();
  final RegExp emailRegExp = RegExp(TextValidateManager.emailRegExp);
  final RegExp nameRegExp = RegExp(TextValidateManager.fullNameRegExp);
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFeild(
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return widget.isSubmitted
                  ? TextValidateManager.fieldIsRequired
                  : null;
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
            if (value == null || value.trim().isEmpty) {
              return widget.isSubmitted
                  ? TextValidateManager.fieldIsRequired
                  : null;
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
          validator: (value) => FormValidate(
            isSubmitted: widget.isSubmitted,
          ).validatePassword(value),
          labelText: TextManger.passWordText,
        ),
        SizedBox(height: HeightManager.h20),
        ConfirmPasswordTextFeild(
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return widget.isSubmitted
                  ? TextValidateManager.fieldIsRequired
                  : null;
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
