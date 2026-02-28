import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:flutter/material.dart';

class PDFfloatingActionButton extends StatelessWidget {
  const PDFfloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: PaddingManager.p16,
        right: PaddingManager.p8,
      ),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorManager.primaryColor,
        foregroundColor: ColorManager.secondryColor,
        elevation: 8,
        child: Icon(Icons.picture_as_pdf, size: FontManager.font30),
      ),
    );
  }
}
