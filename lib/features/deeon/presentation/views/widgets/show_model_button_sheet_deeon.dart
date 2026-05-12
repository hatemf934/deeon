import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/body_of_show_button_sheet_deeon.dart';
import 'package:flutter/material.dart';

void showModelButtonSheetDeeon(BuildContext context) async {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    backgroundColor: ColorManager.secondryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(RadiusManager.r20),
      ),
    ),
    builder: (BuildContext context) {
      final size = MediaQuery.of(context).size;
      final viewInsets = MediaQuery.of(context).viewInsets;
      return SizedBox(
        height: size.height * 0.48 + viewInsets.bottom,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: BodyOfShowButtonSheetDeeon(),
        ),
      );
    },
  );
}
