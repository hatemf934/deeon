import 'package:deeon/core/color_manager.dart';
import 'package:deeon/core/height_manager.dart';
import 'package:deeon/core/radius_manager.dart';
import 'package:deeon/features/auth/presentation/view/widgets/buttons_regester_section.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild_regester_section.dart';
import 'package:flutter/material.dart';

class SectiomOfRegesterView extends StatelessWidget {
  const SectiomOfRegesterView({super.key});

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFeildRegesterSection(),
          SizedBox(height: HeightManager.h20),
          ButtonsRegesterSection(),
        ],
      ),
    );
  }
}
