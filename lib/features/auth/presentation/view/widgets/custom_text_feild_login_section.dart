import 'package:deeon/core/helpers/form_validate.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/confirm_password_text_feild.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class CustomTextFeildSectionLogin extends StatefulWidget {
  const CustomTextFeildSectionLogin({
    super.key,
    required this.isSubmitted,
    required this.passwordController,
    required this.emailController,
  });
  final bool isSubmitted;
  final TextEditingController passwordController;
  final TextEditingController emailController;

  @override
  State<CustomTextFeildSectionLogin> createState() =>
      _CustomTextFeildSectionLoginState();
}

class _CustomTextFeildSectionLoginState
    extends State<CustomTextFeildSectionLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
