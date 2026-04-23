import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/text_validate_manager.dart';
import 'package:deeon/features/auth/presentation/view/widgets/button_section_reset_password.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class SectionOfForgetPassword extends StatefulWidget {
  const SectionOfForgetPassword({super.key});

  @override
  State<SectionOfForgetPassword> createState() =>
      SectionOfForgetPasswordState();
}

class SectionOfForgetPasswordState extends State<SectionOfForgetPassword> {
  final GlobalKey<FormState> formkey = GlobalKey();
  bool isSubmitted = false;
  void resetValidation() {
    if (isSubmitted) {
      formkey.currentState?.reset();
      setState(() {
        isSubmitted = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final RegExp emailRegExp = RegExp(TextValidateManager.emailRegExp);
    return Container(
      height: HeightManager.h700,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.secondryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(RadiusManager.r60),
          topRight: Radius.circular(RadiusManager.r60),
        ),
      ),
      child: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFeild(
              validator: (value) {
                if (value!.isEmpty) {
                  return isSubmitted
                      ? TextValidateManager.fieldIsRequired
                      : null;
                } else if (!emailRegExp.hasMatch(value)) {
                  return TextValidateManager.invalidEmailOrPassword;
                }
                return null;
              },
              labelText: TextManger.emailText,
              hintText: TextManger.emailExText,
              iconData: Icons.email,
            ),
            SizedBox(height: HeightManager.h20),
            ButtonsSectionResetPassword(
              onPressed: () {
                setState(() {
                  isSubmitted = true;
                });
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (formkey.currentState!.validate()) {}
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
