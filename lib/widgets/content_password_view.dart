import 'package:deeon_app/core/height_width_manager.dart';
import 'package:deeon_app/core/padding_radius_manager.dart';
import 'package:deeon_app/core/text_manager.dart';
import 'package:deeon_app/widgets/custom_elevation_button.dart';
import 'package:deeon_app/widgets/custom_icon_button.dart';
import 'package:deeon_app/widgets/custom_text_button.dart';
import 'package:deeon_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ContentPasswordScreen extends StatelessWidget {
  const ContentPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HeightManager.h700,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(RadiusManager.ru60),
              topLeft: Radius.circular(RadiusManager.ru60)),
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: HeightManager.h140),
          TextFieldCustom(
            text: TextManager.kEmail,
            suffixIcon: const CustomIconButton(icon: Icons.email),
          ),
          SizedBox(height: HeightManager.h20),
          CustomElevatedButton(
            textbutton: TextManager.kReturnPassword,
          ),
          SizedBox(height: HeightManager.h20),
          CustomTextbutton(
            onPressed: () {
              Navigator.pop(context);
            },
            text: TextManager.kReturnRegester,
          ),
        ],
      ),
    );
  }
}
