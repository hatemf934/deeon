import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/body_of_show_button_sheet_deeon.dart';
import 'package:flutter/material.dart';

void showModelButtonSheetDeeon(BuildContext context) async {
  showModalBottomSheet(
    context: context,
    backgroundColor: ColorManager.secondryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(RadiusManager.r20),
      ),
    ),
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.45,
        width: double.infinity,
        child: BodyOfShowButtonSheetDeeon(),
      );
    },
  );
}
