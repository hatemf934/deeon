import 'package:deeon/core/helpers/form_validate.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/text_validate_manager.dart';
import 'package:deeon/features/auth/presentation/view/widgets/confirm_password_text_feild.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class CustomTextFeildSection extends StatefulWidget {
  const CustomTextFeildSection({super.key, required this.isSubmitted});
  final bool isSubmitted;

  @override
  State<CustomTextFeildSection> createState() => _CustomTextFeildSectionState();
}

class _CustomTextFeildSectionState extends State<CustomTextFeildSection> {
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final RegExp emailRegExp = RegExp(TextValidateManager.emailRegExp);
    return Column(
      children: [
        CustomTextFeild(
          validator: (value) {
            if (value!.isEmpty) {
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
      ],
    );
  }
}
