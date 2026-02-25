import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/show_model_button_sheet_customer.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: PaddingManager.p16,
        right: PaddingManager.p8,
      ),
      child: FloatingActionButton(
        onPressed: () {
          showModelButtonSheetCustomer(context);
        },
        backgroundColor: ColorManager.white70Color,
        foregroundColor: ColorManager.primaryColor,
        shape: const CircleBorder(),
        elevation: 8,
        child: Icon(Icons.add, size: FontManager.font30),
      ),
    );
  }
}
