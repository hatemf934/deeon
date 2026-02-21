import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingManager.p8),
      child: AppBar(
        iconTheme: IconThemeData(color: ColorManager.appBarIconColor),
        centerTitle: true,
        title: Text(TextManger.homeScreen, style: Styles.textStyle25),
        backgroundColor: ColorManager.primaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: FontManager.font30),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(HeightManager.h60 + PaddingManager.p8 * 2);
}
