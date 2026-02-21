import 'dart:developer';

import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/auth/presentation/view/widgets/buttons_regester_section.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild_regester_section.dart';
import 'package:flutter/material.dart';

class SectiomOfRegesterView extends StatefulWidget {
  const SectiomOfRegesterView({super.key});

  @override
  State<SectiomOfRegesterView> createState() => _SectiomOfRegesterViewState();
}

class _SectiomOfRegesterViewState extends State<SectiomOfRegesterView> {
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
            CustomTextFeildRegesterSection(),
            SizedBox(height: HeightManager.h20),
            ButtonsRegesterSection(
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
