import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/custom_text_button_deeon.dart';
import 'package:flutter/material.dart';

class IconsDetailsDeeon extends StatelessWidget {
  const IconsDetailsDeeon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextButtonDeeon(
          onTap: () {},
          title: TextManger.discount,
          iconData: Icons.discount,
          color: ColorManager.discount,
        ),
        CustomTextButtonDeeon(
          onTap: () {},
          title: TextManger.payment,
          iconData: Icons.payment,
          color: ColorManager.payment,
        ),
        CustomTextButtonDeeon(
          onTap: () {},
          title: TextManger.remove,
          iconData: Icons.delete,
          color: ColorManager.rubyRedColor,
        ),
      ],
    );
  }
}
