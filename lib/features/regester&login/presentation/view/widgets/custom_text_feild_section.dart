import 'package:deeon/core/height_manager.dart';
import 'package:deeon/core/text_manger.dart';
import 'package:deeon/features/regester&login/presentation/view/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class CustomTextFeildSection extends StatelessWidget {
  const CustomTextFeildSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFeild(
          labelText: TextManger.emailText,
          hintText: TextManger.emailExText,
          iconData: Icons.email,
        ),
        SizedBox(height: HeightManager.h20),
        CustomTextFeild(
          labelText: TextManger.passWordText,
          hintText: TextManger.passwordHint,
          iconData: Icons.visibility,
        ),
      ],
    );
  }
}
