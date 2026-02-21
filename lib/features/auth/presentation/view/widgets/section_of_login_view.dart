import 'dart:developer';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/auth/presentation/view/widgets/button_section.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild_section.dart';
import 'package:flutter/material.dart';

class SectionOfLoginView extends StatefulWidget {
  const SectionOfLoginView({super.key});

  @override
  State<SectionOfLoginView> createState() => _SectionOfLoginViewState();
}

class _SectionOfLoginViewState extends State<SectionOfLoginView> {
  final GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
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
            CustomTextFeildSection(),
            SizedBox(height: HeightManager.h20),
            ButtonsSection(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  log("validate is ture");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
