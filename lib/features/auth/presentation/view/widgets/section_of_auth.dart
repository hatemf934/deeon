import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:flutter/material.dart';

class SectionOfAuth extends StatelessWidget {
  const SectionOfAuth({
    super.key,
    required this.formFields,
    required this.buttonBuilder,
  });
  final Widget formFields;
  final Widget buttonBuilder;

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
          formFields,
          SizedBox(height: HeightManager.h20),
          buttonBuilder,
        ],
      ),
    );
  }
}
