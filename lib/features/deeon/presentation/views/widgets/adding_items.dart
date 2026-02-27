import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AddingItems extends StatelessWidget {
  const AddingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.060,
      width: MediaQuery.of(context).size.width * 0.30,
      decoration: BoxDecoration(
        color: ColorManager.fillColor,
        borderRadius: BorderRadius.circular(RadiusManager.r10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: ColorManager.witheColor,
              size: FontManager.font30,
            ),
          ),
          Text(
            "1",
            style: Styles.textStyle25.copyWith(
              color: ColorManager.primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.remove,
              color: ColorManager.witheColor,
              size: FontManager.font30,
            ),
          ),
        ],
      ),
    );
  }
}
