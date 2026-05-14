import 'package:deeon/core/helpers/form_validate.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/features/auth/presentation/view/widgets/confirm_password_text_feild.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild.dart';
import 'package:deeon/generated/l10n.dart';
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
          validator: (value) => FormValidate().validateEmail(value, context),
          labelText: S.of(context).emailText,
          hintText: S.of(context).emailExText,
          iconData: Icons.email,
        ),
        SizedBox(height: HeightManager.h20),
        ConfirmPasswordTextFeild(
          controller: widget.passwordController,
          validator: (value) => FormValidate().validatePassword(value, context),
          labelText: S.of(context).passWordText,
        ),
      ],
    );
  }
}
