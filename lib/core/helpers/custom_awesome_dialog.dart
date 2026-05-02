import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAswesomeDialog {
  // ignore: non_constant_identifier_names
  void AwesomeDialogError({
    required BuildContext context,
    required String description,
    String title = "Error",
    DialogType dialogType = DialogType.error,
    AnimType animType = AnimType.rightSlide,
    VoidCallback? btnOkOnPress,
    Color? dialogBackgroundColor,
    Color? btnOkColor,
    Color? buttonsTextColor,
    TextStyle? titleTextStyle,
    TextStyle? descTextStyle,
  }) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.rightSlide,
      title: "Error",
      desc: description,
      btnOkOnPress: () {},
      dialogBackgroundColor: ColorManager.primaryColor,
      titleTextStyle: Styles.textStyle22.copyWith(fontWeight: FontWeight.bold),
      descTextStyle: TextStyle(fontSize: FontManager.font15),
      btnOkColor: ColorManager.witheColor,
      buttonsTextStyle: TextStyle(color: ColorManager.blackColor),
    ).show();
  }
}
