import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/presentation/view/widgets/show_dialog.dart';
import 'package:flutter/material.dart';

class BodyDetailsPhoto extends StatelessWidget {
  const BodyDetailsPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Hero(
              tag: TextManger.profileTag,
              child: InteractiveViewer(
                clipBehavior: Clip.none,
                maxScale: 1.5,
                child: Image.asset(
                  "assets/images/blank-profile-picture-973460_1280.jpg",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: PaddingManager.p16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildActionButton(Icons.edit, () {
                showOptionsDialog(context);
              }, TextManger.edit),
              buildActionButton(
                Icons.delete_outline,
                () {},
                TextManger.delete,
                color: ColorManager.rubyRedColor,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildActionButton(
    IconData icon,
    Function() onTap,
    String label, {
    Color color = Colors.white,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: FontManager.font30),
          SizedBox(height: HeightManager.h4),
          Text(
            label,
            style: TextStyle(color: color, fontSize: FontManager.font15),
          ),
        ],
      ),
    );
  }
}
