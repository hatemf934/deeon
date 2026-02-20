import 'package:deeon/core/color_manager.dart';
import 'package:deeon/core/height_manager.dart';
import 'package:deeon/core/radius_manager.dart';
import 'package:deeon/features/regester&login/presentation/view/widgets/button_section.dart';
import 'package:deeon/features/regester&login/presentation/view/widgets/custom_text_feild_section.dart';
import 'package:flutter/material.dart';

class SectionOfLoginView extends StatelessWidget {
  const SectionOfLoginView({super.key});

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
          CustomTextFeildSection(),
          SizedBox(height: HeightManager.h20),
          ButtonsSection(),
        ],
      ),
    );
  }
}
