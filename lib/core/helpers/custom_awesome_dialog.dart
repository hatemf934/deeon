import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomAswesomeDialog {
  // ignore: non_constant_identifier_names
  void AwesomeDialogError({
    required BuildContext context,
    required String description,
    DialogType? dialogType = DialogType.error,
    VoidCallback? btnOkOnPress,
  }) {
    AwesomeDialog(
      context: context,
      dialogType: dialogType!,
      animType: AnimType.rightSlide,
      title: S.of(context).error,
      desc: description,
      dialogBackgroundColor: ColorManager.primaryColor,
      titleTextStyle: Styles.textStyle22.copyWith(fontWeight: FontWeight.bold),
      descTextStyle: TextStyle(fontSize: FontManager.font15),
      btnOkColor: ColorManager.witheColor,
      btnOkText: S.of(context).ok,
      btnOkOnPress: btnOkOnPress,
      buttonsTextStyle: TextStyle(color: ColorManager.blackColor),
    ).show();
  }

  // ignore: non_constant_identifier_names
  void AwesomeDialogDiscount({
    required BuildContext context,
    required TextEditingController discountController,
    required VoidCallback btnOkOnPress,
  }) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.info,
      animType: AnimType.rightSlide,
      dialogBackgroundColor: ColorManager.primaryColor,
      title: S.of(context).discount,
      body: Padding(
        padding: EdgeInsets.all(PaddingManager.p8),
        child: Theme(
          data: Theme.of(context).copyWith(
            textSelectionTheme: TextSelectionThemeData(
              selectionColor: ColorManager.primaryColor,
              selectionHandleColor: ColorManager.witheColor,
            ),
          ),
          child: TextField(
            controller: discountController,
            keyboardType: TextInputType.number,
            cursorColor: ColorManager.witheColor,
            style: TextStyle(color: ColorManager.witheColor),
            decoration: InputDecoration(
              hintText: S.of(context).discountHint,
              hintStyle: TextStyle(
                color: ColorManager.witheColor.withOpacity(0.6),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.witheColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.witheColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManager.witheColor,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ),
      btnOkOnPress: btnOkOnPress,
      btnCancelOnPress: () {},
      btnOkText: S.of(context).confirm,
      btnCancelText: S.of(context).cancel,
    ).show();
  }
}
