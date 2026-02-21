import 'package:deeon/core/helpers/form_validate.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/text_validate_manager.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class CustomTextFeildSection extends StatefulWidget {
  const CustomTextFeildSection({super.key});

  @override
  State<CustomTextFeildSection> createState() => _CustomTextFeildSectionState();
}

class _CustomTextFeildSectionState extends State<CustomTextFeildSection> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    final RegExp emailRegExp = RegExp(TextValidateManager.emailRegExp);
    return Column(
      children: [
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
        CustomTextFeild(
          validator: (value) => FormValidate().validatePassword(value),
          obscureText: obscureText,
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          labelText: TextManger.passWordText,
          hintText: TextManger.passwordHint,
          iconData: obscureText ? Icons.visibility_off : Icons.visibility,
        ),
      ],
    );
  }
}
