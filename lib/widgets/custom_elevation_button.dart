import 'package:deeon_app/constant.dart';
import 'package:deeon_app/core/font_manager.dart';
import 'package:deeon_app/core/height_width_manager.dart';
import 'package:deeon_app/core/padding_radius_manager.dart';
import 'package:deeon_app/core/text_manager.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusManager.ru25),
          boxShadow: [
            BoxShadow(
              color: kColorPrimary.withOpacity(.9),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ]),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: FontManager.font20),
          minimumSize: Size(WidthManager.w370, HeightManager.h50),
          backgroundColor: kColorPrimary, // لون الخلفية
          foregroundColor: Colors.white, // لون النص
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(RadiusManager.ru25), // زوايا دائرية
          ),
        ),
        onPressed: () {},
        child: Text(TextManager.kHomeTitle),
      ),
    );
  }
}
