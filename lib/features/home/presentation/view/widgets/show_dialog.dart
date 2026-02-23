import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/show_dialog_icons.dart';
import 'package:deeon/features/home/presentation/view/widgets/show_dialog_image_picker.dart';
import 'package:flutter/material.dart';

Future<void> showOptionsDialog(BuildContext context) async {
  await showModalBottomSheet(
    context: context,
    backgroundColor: ColorManager.showModelColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(RadiusManager.r20),
      ),
    ),
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Column(
          children: [
            Spacer(flex: 1),
            ShowDialogIcons(),
            Spacer(flex: 2),
            ShowDialogImagePicker(),
            Spacer(flex: 3),
          ],
        ),
      );
    },
  );
}
