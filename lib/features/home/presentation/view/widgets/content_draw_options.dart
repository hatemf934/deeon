import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/presentation/view/widgets/switch_dark_theme.dart';
import 'package:flutter/material.dart';

class ContentDrawOptions extends StatelessWidget {
  const ContentDrawOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(
          vertical: PaddingManager.p8,
          horizontal: PaddingManager.p16,
        ),
        children: [
          SizedBox(height: HeightManager.h20),
          SwtichDarkTheme(
            isDarkMode: true,
            text: TextManger.darkMode,
            color: ColorManager.deepTeal,
            iconData: Icons.nights_stay,
          ),
          SizedBox(height: HeightManager.h20),
          SwtichDarkTheme(
            color: ColorManager.rubyRedColor,
            iconData: Icons.logout,
            text: TextManger.signOut,
          ),
        ],
      ),
    );
  }
}
