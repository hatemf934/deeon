import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/gesturedetector_photo.dart';
import 'package:flutter/material.dart';

class BodyUserAccount extends StatelessWidget {
  const BodyUserAccount({super.key, required this.name, required this.email});
  final String name;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: WidthManager.w100,
          height: HeightManager.h100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: ColorManager.witheColor,
              width: WidthManager.w3,
            ),
            boxShadow: [
              BoxShadow(
                color: ColorManager.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: GesturedetectorPhoto(),
        ),
        SizedBox(height: HeightManager.h15),
        Text(
          name.trim().split(' ').first,
          textAlign: TextAlign.center,
          style: Styles.textStyle22.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(email, textAlign: TextAlign.center, style: Styles.textStyle15),
      ],
    );
  }
}
