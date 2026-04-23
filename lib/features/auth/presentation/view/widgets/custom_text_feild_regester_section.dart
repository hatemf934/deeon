import 'package:deeon/core/helpers/form_validate.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/confirm_password_text_feild.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class CustomTextFeildRegesterSection extends StatefulWidget {
  const CustomTextFeildRegesterSection({
    super.key,
    required this.passwordController,
    required this.emailController,
    required this.nameController,
  });
  final TextEditingController passwordController;
  final TextEditingController emailController;
  final TextEditingController nameController;

  @override
  State<CustomTextFeildRegesterSection> createState() =>
      _CustomTextFeildRegesterSectionState();
}

class _CustomTextFeildRegesterSectionState
    extends State<CustomTextFeildRegesterSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFeild(
          controller: widget.nameController,
          validator: (value) => FormValidate().validateFullName(value),
          labelText: TextManger.fullNameText,
          hintText: TextManger.fullNameHint,
          iconData: Icons.person,
        ),
        SizedBox(height: HeightManager.h20),
        CustomTextFeild(
          controller: widget.emailController,
          validator: (value) => FormValidate().validateEmail(value),
          labelText: TextManger.emailText,
          hintText: TextManger.emailExText,
          iconData: Icons.email,
        ),
        SizedBox(height: HeightManager.h20),
        ConfirmPasswordTextFeild(
          controller: widget.passwordController,
          validator: (value) => FormValidate().validatePassword(value),
          labelText: TextManger.passWordText,
        ),
        SizedBox(height: HeightManager.h20),
        ConfirmPasswordTextFeild(
          validator: (value) => FormValidate().validateConfirmPassword(
            value,
            widget.passwordController.text,
          ),
          labelText: TextManger.confirmPassWordText,
        ),
      ],
    );
  }
}
